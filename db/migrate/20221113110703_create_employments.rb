# frozen_string_literal: true

class CreateEmployments < ActiveRecord::Migration[7.0]
  def change
    create_table :employments do |t|
      t.string :employer
      t.datetime  :date_started
      t.datetime  :employment_ended

      t.references :personal_datum
      t.timestamps
    end
  end
end
