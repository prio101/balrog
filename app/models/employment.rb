# frozen_string_literal: true

class Employment < ApplicationRecord
  belongs_to :personal_datum, foreign_key: :personal_datum_id

  validates_presence_of :employer, :date_started, :employment_ended
end
