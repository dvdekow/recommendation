class RemoveClickFromAlgoproducts < ActiveRecord::Migration
  def up
    remove_column :algoproducts, :click
  end

  def down
    add_column :algoproducts, :click, :string
  end
end
