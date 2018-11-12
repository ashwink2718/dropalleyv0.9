class CreateLeads < ActiveRecord::Migration[5.2]
  def change
    create_table :leads do |t|
    	t.string :company_name
    	t.string :name
    	t.string :email
    	t.string :phone

    	t.timestamps
    end
  end
end
