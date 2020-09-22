class ConnectionTypeFieldChange < ActiveRecord::Migration[6.0]
  def change
    add_reference :connection_types, :connection, foreign_key: true  
  end
end
