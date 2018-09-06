class CreateEmployeers < ActiveRecord::Migration[5.2]
  def change
    create_table :employeers do |t|
      t.string :company_name
      t.string :company_name_url

      t.timestamps
    end
  end
end
