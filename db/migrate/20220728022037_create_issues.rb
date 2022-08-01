class CreateIssues < ActiveRecord::Migration[7.0]
  def change
    create_table :issues do |t|
      t.string :email,         null: false
      t.string :address,       null: false
      t.string :city,          null: false
      t.string :category,      null: false
      t.string :description
      t.string :coordinates,   null: false

      t.timestamps
    end
  end
end
