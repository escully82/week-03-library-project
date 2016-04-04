class CreateStaffsTable < ActiveRecord::Migration

  def change
    create_table :staffs do |t|
      t.string :name
      t.string :email_address
    end
  end

end
