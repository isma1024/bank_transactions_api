class InitDatabase < ActiveRecord::Migration[5.0]
	def change
		create_table :transactions do |t|
      		t.decimal :import
      		t.string :description
      		t.integer :account_id

      		t.timestamps
    	end

    	create_table :accounts do |t|
      		t.decimal :balance
      		t.string :name
      		t.string :description

      		t.timestamps
    	end

    	add_index :transactions, :account_id
	end
end
