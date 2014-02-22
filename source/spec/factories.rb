FactoryGirl.define do
  factory :phase do
    name { Faker::Lorem.word }
  end
  factory :unit do
    number { rand(1..5).to_s }
    phase
  end
  factory :challenge do
    name { Faker::Lorem.word }
    description { Faker::Lorem.paragraphs(100).join(" ") }
    unit
  end
end
