FactoryBot.define do
  factory :favorite_thing do
    association :user

    title          { Faker::Lorem.word }
    type_id        { Faker::Number.between(from: 1, to: 3) }
    reason1        { Faker::Lorem.sentence }
    reason2        { Faker::Lorem.sentence }
    reason3        { Faker::Lorem.sentence }
    episode        { Faker::Lorem.sentence }

    after(:build) do |favorite_thing|
      favorite_thing.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
