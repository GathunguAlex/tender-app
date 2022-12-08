class RemovePassworddigestFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :passworddigest
  end
end
