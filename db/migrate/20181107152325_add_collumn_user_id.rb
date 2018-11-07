class AddCollumnUserId < ActiveRecord::Migration[5.1]
  def change
    add_column :comments, :user_id, :integer, default: nil

  end
end
