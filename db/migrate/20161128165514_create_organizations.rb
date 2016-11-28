class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :name
      t.index :name
      t.string :phone
      t.index :phone
      t.string :website
      t.index :website

      t.timestamps null: false
    end
  end
end
