class CreateAlgoproducts < ActiveRecord::Migration
  def change
    create_table :algoproducts do |t|
      t.string :algo

      t.timestamps
    end
  end
end
