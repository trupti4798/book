class CreateEmps < ActiveRecord::Migration[6.0]
  def change
    create_table :emps do |t|
    	t.string :name
    	t.string :add

      t.timestamps
    end
  end
end
