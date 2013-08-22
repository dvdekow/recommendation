class AddClickToAlgoproducts < ActiveRecord::Migration
  def change
    add_column :algoproducts, :click, :string
  end
end
