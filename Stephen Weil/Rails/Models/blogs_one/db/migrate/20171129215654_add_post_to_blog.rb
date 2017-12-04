class AddPostToBlog < ActiveRecord::Migration
  def change
    add_reference :blogs, :post, index: true, foreign_key: true
  end
end
