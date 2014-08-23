class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :description
      t.boolean :confirmed

      t.timestamps
    end
  end
end
