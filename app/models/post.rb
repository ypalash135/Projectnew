class Post < ApplicationRecord
  belongs_to :user
  validates :title,:body, presence: true
  validates :title,:body, length: { minimum: 5 }

  before_save :published_at_attribute
  private
     
  def published_at_attribute
    self.publishedAt=Time.now()  
  end

end
