FactoryBot.define do
  factory :comment do
    comment_text { 'テストコメント' }
    association :user
    association :article
  end
end
