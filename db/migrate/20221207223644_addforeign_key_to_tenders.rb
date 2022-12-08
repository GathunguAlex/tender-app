class AddforeignKeyToTenders < ActiveRecord::Migration[7.0]
  def change
    add_column :tenders, :foreign_key, :integer
  end
end
