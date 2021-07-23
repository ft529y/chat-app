class CreateRoomUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :room_users do |t|
      t.references :room, null: false, foreigh_keys: true
      t.references :user, null: false, foreigh_keys: true
      t.timestamps
    end
  end
end
"room[user_ids][]"
{"room" => {"user_ids" => ["選択したユーザーのid"]}}