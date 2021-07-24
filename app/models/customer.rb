class Customer < ApplicationRecord
  belongs_to :user
  enum gender: %i[male female other]

  validates :name,
            :email,
            :phone,
            :gender,
            :cpf,
            :birthday,
            :user_id,
            presence: true
end
