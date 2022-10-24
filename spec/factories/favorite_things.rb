FactoryBot.define do
  factory :favorite_thing do
    association :user

    title          { Faker::Lorem.word }
    reason         { Faker::Lorem.sentence }
    emotion        { Faker::Lorem.sentence }
    appeal_point   { Faker::Lorem.sentence }
    episode        { Faker::Lorem.sentence }

    after(:build) do |favorite_thing|
      favorite_thing.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
