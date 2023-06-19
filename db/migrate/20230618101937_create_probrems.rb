class CreateProbrems < ActiveRecord::Migration[7.0]
  def change
    create_table :probrems do |t|
      t.text :content

      t.timestamps
    end
  end
end
