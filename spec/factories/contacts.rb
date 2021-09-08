FactoryBot.define do
  factory :contact do
    last_name { 'テスト' }
    first_name { '太郎' }
    email { 'test@test' }
    about { 'テスト' }
  end
end
