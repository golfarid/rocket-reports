class CreateDatasets < ActiveRecord::Migration[6.0]
  def change
    create_table :datasets do |t|
      t.string :sql
      t.references :parameter, null: false, foreign_key: true
      t.references :connection, null: false, foreign_key: true

      t.timestamps
    end
  end
end
