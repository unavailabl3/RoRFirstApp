class CreateTextposts < ActiveRecord::Migration[5.2]
  def change
    create_table :textposts do |t|
      t.text :content
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :textposts, [:user_id, :created_at]
  end
end
