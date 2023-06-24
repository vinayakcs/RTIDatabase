class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.string :name
      t.string :email
      t.string :mobile
      t.text :content

      t.timestamps null: false
    end
  end
end
