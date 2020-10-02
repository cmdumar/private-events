class ChangeColumnNames < ActiveRecord::Migration[6.0]
  def change
    remove_column :stats, :attendee
    remove_column :stats, :attended_event
    add_reference :stats, :user, index: true
    add_reference :stats, :event, index: true
  end
end
