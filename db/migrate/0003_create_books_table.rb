class CreateBooksTable < ActiveRecord::Migration

  def change
    create_table :books do |t|
      t.string :author
      t.string :title
      t.string :ISBN
    end
  end

end
