class Comment < ActiveRecord::Base
  belongs_to :land
  validates :body, presence: true, length: { maximum: 140 }
end
