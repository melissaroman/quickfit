class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :auth_token
      t.string :auth_secret
      t.string :fitbit_id

      t.timestamps
    end
  end
end
