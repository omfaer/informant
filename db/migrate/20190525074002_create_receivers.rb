class CreateReceivers < ActiveRecord::Migration[5.2]
  def change
    create_table :receivers do |t|
      t.string :receiver_name
      t.references :app_info, foreign_key: true

      t.timestamps
    end
  end
end
