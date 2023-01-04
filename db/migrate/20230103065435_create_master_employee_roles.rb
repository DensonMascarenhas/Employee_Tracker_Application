class CreateMasterEmployeeRoles < ActiveRecord::Migration[7.0]
  def change
    create_table :master_employee_roles do |t|
      t.string :name

      t.timestamps
    end
  end
end
