class CreateInspiration < ActiveRecord::Migration
  def change
    create_table :inspirations do |t|
      t.string :name
      t.string :image
      t.text :text
      t.string :url
      t.boolean :approved, :default => false

      t.timestamps
    end
  end
end
