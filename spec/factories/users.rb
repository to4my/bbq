FactoryBot.define do
  factory :user do
    name { "Товарищ_#{rand(999)}" }
    sequence(:email) { |n| "mail_#{n}@ya.ru" }
    after(:build) { |u| u.password_confirmation = u.password = "111111" }
  end
end