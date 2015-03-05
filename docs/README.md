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
