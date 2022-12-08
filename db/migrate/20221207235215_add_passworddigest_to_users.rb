class AddPassworddigestToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :passworddigest, :integer
  end
end
