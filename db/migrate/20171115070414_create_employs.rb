class CreateEmploys < ActiveRecord::Migration[5.0]
  def change
    create_table :employs do |t|
    	t.column :name, :string
    	t.column :role, :string

      t.timestamps
    end
  end
end
