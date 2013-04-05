class CreatePermissionAssignments < ActiveRecord::Migration
  def change
    create_table :permission_assignments do |t|
      t.integer :user_id
      t.integer :permission_id

      t.timestamps
    end
  end
end
