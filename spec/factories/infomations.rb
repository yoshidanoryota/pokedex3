FactoryBot.define do
  factory :infomation do
    text { 'テストコメント' }
    association :user
  end
end
