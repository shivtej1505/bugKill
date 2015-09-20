class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, :null => false
      t.string :password, :null => false
      t.string :name
      t.string :email, :null => false
      t.integer :age
      t.string :sex
      t.string :auth_token, :null => false

      t.timestamps null: false
    end
  end
end
