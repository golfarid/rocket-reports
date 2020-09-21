class CreateGroupReports < ActiveRecord::Migration[6.0]
  def change
    create_table :group_reports do |t|
      t.references :role, null: false, foreign_key: true
      t.references :report, null: false, foreign_key: true
      t.references :parameter, null: false, foreign_key: true

      t.timestamps
    end
  end
end
