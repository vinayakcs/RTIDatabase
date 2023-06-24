class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name
      t.integer :rti_requests_count

      t.timestamps null: false
    end
    add_index :tags, :name, unique: true
  end
end
