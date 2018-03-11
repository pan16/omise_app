class Store < ApplicationRecord
	has_one :store_infomation, dependent: :destroy, foreign_key: 'id'
    VLID_EMAIL_REGEX = /\A[a-zA-Z0-9_\#!$%&`'*+\-{|}~^\/=?\.]+@[a-zA-Z0-9][a-zA-Z0-9\.-]+\z/
    validates :email, presence: true, format: { with: VLID_EMAIL_REGEX }, uniqueness: true
    has_secure_password
end
