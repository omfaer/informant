class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.string :service_name
      t.references :app_info, foreign_key: true

      t.timestamps
    end
  end
end
