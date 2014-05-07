class ChangeRefUserIdToMessages < ActiveRecord::Migration
  def change
    change_column :messages, :user_id, :integer, references: :users
  end
end
