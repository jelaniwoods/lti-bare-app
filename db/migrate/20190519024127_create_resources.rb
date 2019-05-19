# frozen_string_literal: true

class CreateResources < ActiveRecord::Migration[5.2]
  def change
    create_table :resources do |t|
      t.string :id_from_tc
      t.integer :context_id
      t.string :title

      t.timestamps
    end
  end
end
