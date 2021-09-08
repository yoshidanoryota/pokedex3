class Contact < ApplicationRecord
  with_options presence: true do
    validates :last_name, :first_name, :email, :about, :case
  end
end
