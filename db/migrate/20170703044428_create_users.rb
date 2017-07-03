class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :alias
      t.string :email
      t.string :password
      t.string :conf_pwd

      t.timestamps null: false
    end
  end
end
