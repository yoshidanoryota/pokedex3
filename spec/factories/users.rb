FactoryBot.define do
  factory :user do
    name { 'テスト太郎' }
    email { 'test@gmail.com' }
    password { '123abc' }
    password_confirmation { password }
  end
end
