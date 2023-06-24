class CreatePublicAuthorities < ActiveRecord::Migration
  def change
    create_table :public_authorities do |t|
      t.belongs_to :government

      t.string :name
      t.integer :rti_requests_count

      t.timestamps null: false
    end
    add_index :public_authorities, :name, unique: true
    add_index :public_authorities, :government_id
  end
end
