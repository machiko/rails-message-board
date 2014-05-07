class ChangeUserIdTypeToMessages < ActiveRecord::Migration
  def change
    change_column :messages, :user_id, :integer
  end
end
