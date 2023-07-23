class CreateCommentarios < ActiveRecord::Migration[7.0]
  def change
    create_table :commentarios do |t|
      t.references :user, null: false, foreign_key: true
      t.references :jobapplication, null: false, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
