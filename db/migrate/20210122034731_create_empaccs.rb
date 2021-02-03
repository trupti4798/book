class CreateEmpaccs < ActiveRecord::Migration[6.0]
  def change
    create_table :empaccs do |t|
      t.integer :accno
      t.string :acctype

      t.timestamps
    end
  end
end
