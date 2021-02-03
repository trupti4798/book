class AddEmpToEmpacc < ActiveRecord::Migration[6.0]
  def change
    add_reference :empaccs, :emp, null: false, foreign_key: true
  end
end
