class AddNotNull < ActiveRecord::Migration[5.2]
  def change
    change_column_null :posts, :title, false
    change_column_null :posts, :text, false
    change_column_null :users, :nickname, false
    change_column_null :posts, :user_id, false
  end
end
