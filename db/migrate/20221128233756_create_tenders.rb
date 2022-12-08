class CreateTenders < ActiveRecord::Migration[7.0]
  def change
    create_table :tenders do |t|
      t.string :tendername
      t.integer :tendernumber

      t.timestamps
    end
  end
end
