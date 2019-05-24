class CreateClassifications < ActiveRecord::Migration[5.2]
  def change
    create_table :classifications do |t|
      t.string :classification_name
      t.references :app_info, foreign_key: true

      t.timestamps
    end
  end
end
