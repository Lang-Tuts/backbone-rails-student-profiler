class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.text :address
      t.int :age
      t.string :mobile

      t.timestamps
    end
  end
end
