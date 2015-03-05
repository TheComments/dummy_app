### Why I have to use DENORMALIZATION for `commentable` objects?

Each commentable model have to provide 3 following methods (of native fields):

* commentable_title
* commentable_url
* commentable_state

for example, you can define these methods like this:

```ruby
class Post < ActiveRecord::Base
  belongs_to :user
  include ::TheCommentsBase::Commentable

  # METHODS FOR DENORMALIZATION
  def commentable_title
    title
  end

  def commentable_url
    ['', self.class.to_s.tableize, id].join('/')
  end

  def commentable_state
    :published.to_s
  end
end
```

These methods (of model's fields) are very important for building of list of recent comments.

Every time when new comment will be created or existed comment will be updated,
`before_save` hook from `Comment` model will use these methods of `commentable` model
to fill following fields in `Comment` instance:

```ruby
#<Comment:0x0000010189bc58
  ...

  commentable_url:   "/posts/3",
  commentable_title: "My Feedback",
  commentable_state: :published,

  ...
]
```

These fields will help you to build correct list of recent comments.

There is an example how you can select recent comments:

```ruby
@recent_comments = Comment.with_state(:published)
                    .includes(:commentable)
                    .where(commentable_state: [:published])
                    .recent.page(params[:page])
```
