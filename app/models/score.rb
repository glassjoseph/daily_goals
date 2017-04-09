class Score < ActiveRecord::Base
  before_create :set_default_date

  validates :score, presence: true
  # validates :date, uniqueness: true
  belongs_to :daily


  def set_default_date
    self.date = Date.today unless self.date
  end

end
