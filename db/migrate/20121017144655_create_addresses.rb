class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.references :person
      t.references :city
      t.string :category
      t.string :level1
      t.string :part1
      t.string :level2
      t.string :part2
      t.string :level3
      t.string :part3
      t.string :phones
      t.string :email
      t.string :mobiles
      t.string :description
      t.float :latitude
      t.float :longitude
      t.timestamps
    end
    add_index :addresses, :person_id
    add_index :addresses, :city_id
  end
end
