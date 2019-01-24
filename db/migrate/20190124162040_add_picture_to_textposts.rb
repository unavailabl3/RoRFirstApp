class AddPictureToTextposts < ActiveRecord::Migration[5.2]
  def change
    add_column :textposts, :picture, :string
  end
end
