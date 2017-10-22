class CreateStreams < ActiveRecord::Migration[5.1]
  def change
    create_table :streams do |t|
      t.integer :subscriber_id
      t.integer :video_id

      t.timestamps
    end
  end
end
