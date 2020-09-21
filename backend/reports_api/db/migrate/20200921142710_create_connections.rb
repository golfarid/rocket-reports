class CreateConnections < ActiveRecord::Migration[6.0]
  def change
    create_table :connections do |t|
      t.string :type
      t.string :str

      t.timestamps
    end
  end
end
