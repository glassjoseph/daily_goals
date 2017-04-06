class Daily < ActiveRecord::Base
  validates :goal, presence: true
  belongs_to :user

end
