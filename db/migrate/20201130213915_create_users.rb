class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :name
      t.integer :age
      t.integer :weight
      t.integer :height
      t.string :password_digest
    end
  end
end
