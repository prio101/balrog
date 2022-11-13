# frozen_string_literal: true

class CreatePersonalData < ActiveRecord::Migration[7.0]
  def change
    create_table :personal_data do |t|
      t.string  :first_name
      t.string  :last_name
      t.string  :nickname
      t.string  :email_address
      t.string  :phone_number

      t.timestamps
    end
  end
end
