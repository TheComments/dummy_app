class Post < ActiveRecord::Base
  include ::TheCommentsBase::Commentable

  belongs_to :user

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
