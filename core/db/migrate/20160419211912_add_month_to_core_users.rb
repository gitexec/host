class AddMonthToCoreUsers < ActiveRecord::Migration
  def change
    add_column :core_users, :month, :string
  end
end
