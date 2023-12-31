class CreateComment < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.text :text
      t.references :user, foreign_key: true
      t.references :author, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
