FactoryGirl.define do
  factory :phase do
    name { Faker::Lorem.word }
  end
  factory :challenge do
    name { Faker::Lorem.word }
    description { Faker::Lorem.sentence }
    level { rand(1..3).to_s }
    phase
  end
end
