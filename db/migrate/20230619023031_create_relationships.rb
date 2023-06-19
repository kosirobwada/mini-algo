class CreateRelationships < ActiveRecord::Migration[7.0]
  def change
    create_table :relationships do |t|
      t.integer :user_id
      t.integer :probrem_id

      t.timestamps
    end
    add_index :relationships, :user_id
    add_index :relationships, :probrem_id
    add_index :relationships, [:user_id, :probrem_id], unique: true
  end
end
