class Person < ApplicationRecord
  validates_uniqueness_of :email
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }

  def self.email_create(email)
    create!(email: email, created_at:  Time.now)
  rescue => ex
    Rails.logger.info("An error of type #{ex.class} happened, message is #{ex.message}")
    false
  end
end
