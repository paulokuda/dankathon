class CreateUsers < ActiveRecord::Migration
  def up
         drop_table :users

         create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :first_name
      t.string :last_name
      t.string :email

      t.timestamps
    end
  end
 
end
