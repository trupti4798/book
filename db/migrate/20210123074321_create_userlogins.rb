class CreateUserlogins < ActiveRecord::Migration[6.0]
  def change
    create_table :userlogins do |t|
      t.string :name
      t.bigint :mobile
      t.string :email
      t.string :password_digest
      t.string :address

      t.timestamps
    end
    add_index :userlogins, :email, unique: true
  end
end
