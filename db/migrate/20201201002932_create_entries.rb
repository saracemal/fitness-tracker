class CreateEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :entries do |t|
      t.string :title
      t.integer :user_id
      t.integer :routine_id
      t.string :description
    end
  end
end
