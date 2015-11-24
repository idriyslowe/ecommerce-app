class RemoveImageFromProduct < ActiveRecord::Migration
  def change
    remove_column :products, :image, :string
    remove_column :suppliers, :supplier_id, :integer
  end
end
