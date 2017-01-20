class CreateTransactions < ActiveRecord::Migration[5.0]
  def change
    create_table :transactions do |t|
      t.decimal :import
      t.string :description

      t.timestamps
    end
  end
end
