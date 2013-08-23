class CreateCounters < ActiveRecord::Migration
  def change
    create_table :counters do |t|
      t.string :algo

      t.timestamps
    end
  end
end
