class AddComment < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.timestamps
      t.text :content
    end
  end
end
