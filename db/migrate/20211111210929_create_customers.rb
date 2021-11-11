class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      t.string :fullName
      t.string :phoneNumber
      t.string :emailAddress
      t.text :notes

      t.timestamps
    end
  end
end
