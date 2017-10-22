class CreateSubscriptions < ActiveRecord::Migration[5.1]
  def change
    create_table :subscriptions do |t|
      t.string :payment_method
      t.string :start_date

      t.timestamps
    end
  end
end
