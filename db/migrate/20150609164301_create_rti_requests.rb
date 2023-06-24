class CreateRtiRequests < ActiveRecord::Migration
  def change
    create_table :rti_requests do |t|
      t.belongs_to :public_authority

      t.string :url_token

      t.string :title
      t.text :content
      t.date :filed_date
      t.string :source_url

      t.boolean :publishp
      t.datetime :publish_datetime

      t.boolean :fb_publishedp
      t.boolean :twitter_publishedp
      t.boolean :gplus_publishedp

      t.integer :impressions_count

      t.timestamps null: false
    end
    add_index :rti_requests, :public_authority_id
    add_index :rti_requests, :url_token, unique: true
    add_index :rti_requests, :title, unique: true
    add_index :rti_requests, :impressions_count
    add_index :rti_requests, :updated_at
  end
end
