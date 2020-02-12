FactoryBot.define do
  factory :event do
    title { "Событие_#{rand(999)}" }
    description { "Угадай число #{rand(10)}" }
    address { " Красная площадь, дом #{rand(999)}" }
    datetime { DateTime.current }
    created_at { Time.current }
    pincode {  }
    association :user
  end
end
