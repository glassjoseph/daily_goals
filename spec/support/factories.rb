FactoryGirl.define do
  factory :user do
    username
    password "password"
  end

  sequence :username do |n|
    "#{n} User"
  end

  #
  # factory :daily do
  #   goal
  #   association user
  # end
  # #
  # sequence :goal do |n|
  #   "Goal ##{n}"
  # end

end
