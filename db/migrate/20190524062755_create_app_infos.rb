class CreateAppInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :app_infos do |t|
      t.string :app_name
      t.string :package_name
      t.string :p_hash
      t.string :psr_hash

      t.timestamps
    end
  end
end
