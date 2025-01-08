class CreateDoctors < ActiveRecord::Migration[7.1]
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :specialization
      t.references :clinic, null: false, foreign_key: true

      t.timestamps
    end
  end
end