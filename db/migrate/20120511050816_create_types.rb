class CreateTypes < ActiveRecord::Migration
  def change
    create_table :types do |t|
      t.string :name
      t.text :details

      t.timestamps
    end
  end
end
