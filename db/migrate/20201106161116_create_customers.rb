class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :phone_number
      t.string :email
      t.text :notes

      t.timestamps
    end
  end
end
