class Daily < ActiveRecord::Base
  validates :goal, presence: true
  belongs_to :user
  has_many :scores


  def past_week
    self.scores.where('date >= ?', 1.week.ago)
  end

end
