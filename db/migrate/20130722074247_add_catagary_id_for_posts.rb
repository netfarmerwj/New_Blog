class AddCatagaryIdForPosts < ActiveRecord::Migration
  def change
  	add_column :posts, :catagary_id, :integer
  end
end
