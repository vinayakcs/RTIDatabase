class CreateGovernments < ActiveRecord::Migration
  def change
    create_table :governments do |t|
      t.string :name
      t.integer :public_authorities_count

      t.timestamps null: false
    end
    add_index :governments, :name, unique: true
  end
end
