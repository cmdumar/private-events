class RemoveUserId < ActiveRecord::Migration[6.0]
  def change
    remove_column :events, :user_id_id
  end
end
