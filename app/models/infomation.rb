class Infomation < ApplicationRecord
  belongs_to :user

  with_options presence: true do
    validates :text
  end
end
