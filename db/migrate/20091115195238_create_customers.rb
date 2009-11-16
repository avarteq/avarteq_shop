class CreateCustomers < ActiveRecord::Migration
  def self.up
    create_table :customers do |t|
      t.string :firstname
      t.string :lastname
      t.string :street
      t.string :zip
      t.string :city
      t.string :country
      t.string :phone
      t.string :email

      t.timestamps
    end
  end

  def self.down
    drop_table :customers
  end
end
