class CreatePermissions < ActiveRecord::Migration[5.2]
  def change
    create_table :permissions do |t|
      t.string :permission_name
      t.references :app_info, foreign_key: true

      t.timestamps
    end
  end
end
