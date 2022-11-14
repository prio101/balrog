# frozen_string_literal: true

class PersonalDatum < ApplicationRecord
  has_many :employments

  validates_presence_of :first_name, :last_name, :email_address, :phone_number
  validates_length_of :first_name, maximum: 25
  validates_length_of :last_name, maximum: 25
  validates :email_address, format: { with: URI::MailTo::EMAIL_REGEXP }
end
