class AddNameProviderUidToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
    add_column :users, :provider, :string
    add_column :users, :uid, :integer
  end
end
