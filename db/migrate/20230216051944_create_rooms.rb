class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.string :room_name
      t.string :room_detail
      t.integer :room_1day_payment
      t.string :room_adress

      t.timestamps
    end
  end
end
