class AddCreatorId < ActiveRecord::Migration[6.0]
  def change
    remove_column :events, :user_id
    add_reference :events, :creator
  end
end
