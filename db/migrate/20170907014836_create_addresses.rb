class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :street
      t.integer :number
      t.string :cep
      t.string :city
      t.string :country
      t.string :state
      t.string :obs
      t.references :supplier, foreign_key: true
      t.timestamps

      
    end
  end
end
