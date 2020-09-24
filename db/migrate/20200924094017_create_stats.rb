class CreateStats < ActiveRecord::Migration[6.0]
  def change
    create_table :stats do |t|
      t.integer :attendee
      t.integer :attended_event

      t.timestamps
    end
  end
end
