class ChangeAmountOfImagesInImages < ActiveRecord::Migration
  def change
    rename_column :images, :image1, :image
    remove_column :images, :image2, :string
    remove_column :images, :image3, :string
    remove_column :images, :image4, :string
  end
end
