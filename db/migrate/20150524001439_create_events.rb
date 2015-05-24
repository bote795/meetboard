class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.date :date
      t.boolean :private
      t.boolean :finished

      t.timestamps
    end
  end
end
