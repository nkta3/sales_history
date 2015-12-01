class CreateStaffInfos < ActiveRecord::Migration
  def change
    create_table :staff_infos do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
