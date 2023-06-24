class CreateTaggings < ActiveRecord::Migration
  def change
    create_table :taggings do |t|
      t.belongs_to :tag
      t.belongs_to :rti_request

      t.timestamps null: false
    end
    add_index :taggings, :tag_id
    add_index :taggings, [:rti_request_id, :tag_id], unique: true
  end
end
