FactoryGirl.define do
  factory :phase do
    name { Faker::Lorem.word }
  end
  factory :unit do
    phase
    sequence(:number){ |n| "#{phase.id}.#{((n-1)%10)}" }
  end
  factory :challenge do
    name { Faker::Lorem.word }
    description { Faker::Lorem.paragraphs(100).join(" ") }
    unit
  end
end
