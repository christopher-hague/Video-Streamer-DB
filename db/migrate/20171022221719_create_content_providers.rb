class CreateContentProviders < ActiveRecord::Migration[5.1]
  def change
    create_table :content_providers do |t|
      t.string :name
      t.integer :concurrent_stream_limit

      t.timestamps
    end
  end
end
