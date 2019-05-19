# frozen_string_literal: true

class CreateEnrollments < ActiveRecord::Migration[5.2]
  def change
    create_table :enrollments do |t|
      t.integer :context_id
      t.integer :user_id
      t.string :roles

      t.timestamps
    end
  end
end
