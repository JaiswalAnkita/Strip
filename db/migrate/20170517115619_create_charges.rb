class CreateCharges < ActiveRecord::Migration
  def change
    create_table :charges do |t|
      t.string :customer_id
      t.string :string

      t.timestamps null: false
    end
  end
end
