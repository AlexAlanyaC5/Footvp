class CreateRsvp < ActiveRecord::Migration[5.2]
  def change
    create_table :rsvps do |t|
      t.boolean :is_attending
      t.integer :user_id
      t.integer :game_id
    end
  end
end
