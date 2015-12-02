class AddStaffInfoIdToHistories < ActiveRecord::Migration
  def change
    add_reference :histories, :staff_info, index: true, foreign_key: true
  end
end
