class CreateJobapplications < ActiveRecord::Migration[7.0]
  def change
    create_table :jobapplications do |t|
      t.string :description

      t.timestamps
    end
  end
end
