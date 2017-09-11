class CreateSuppliers < ActiveRecord::Migration[5.1]
  def change
    create_table :suppliers do |t|
      t.string :name
      t.boolean :status
      t.string :cnpj
      t.string :ie
      t.string :ci
      t.date :dateFoundation
      t.string :responsable
      
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
