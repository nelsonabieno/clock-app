class CreateClockEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :clock_events do |t|
      t.datetime :clock_in
      t.datetime :clock_out
      t.string :reason
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
