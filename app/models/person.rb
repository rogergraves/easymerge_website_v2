class Person < ApplicationRecord
  validates :email, uniqueness: { message: "The email entered has already been submitted." }, format: { with: URI::MailTo::EMAIL_REGEXP }

end
