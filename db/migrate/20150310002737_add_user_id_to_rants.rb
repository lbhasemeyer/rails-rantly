class AddUserIdToRants < ActiveRecord::Migration
  def change
    add_column :rants, :user_id, :string
  end
end
