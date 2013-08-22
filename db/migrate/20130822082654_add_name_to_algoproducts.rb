class AddNameToAlgoproducts < ActiveRecord::Migration
  def change
    add_column :algoproducts, :name, :string
  end
end
