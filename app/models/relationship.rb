class Relationship < ActiveRecord::Base
  attr_accessible :followed_id
  
  belongs_to :follower, class_name: "User"
  belongs_to :followed, class_name: "User"
  
  # indicates that these two fields are required
  validates :follower_id, presence: true
  validates :followed_id, presence: true
  
end
