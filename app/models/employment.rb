# frozen_string_literal: true

class Employment < ApplicationRecord
  belongs_to :personal_datum

  validates_presence_of :employer, :date_started, :date_employment_ended
end
