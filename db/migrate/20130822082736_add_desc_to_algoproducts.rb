class AddDescToAlgoproducts < ActiveRecord::Migration
  def change
    add_column :algoproducts, :desc, :text
  end
end
