FactoryBot.define do
  factory :chore do
    name "Empty Dishwasher"
    priority 200
  end

  trait :due do
    frequency 1
    last_performed 2.days.ago
  end

  trait :undue do
    frequency 2
    last_performed 1.day.ago
  end

  factory :undue_chore,   traits: [:undue]
  factory :due_chore,     traits: [ :due ]
end
