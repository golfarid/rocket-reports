class CreateParameters < ActiveRecord::Migration[6.0]
  def change
    create_table :parameters do |t|
      t.string :name
      t.string :label
      t.string :type

      t.timestamps
    end
  end
end
