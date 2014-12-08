class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.text :body
      t.string :author
      t.boolean :available
      t.integer :user_id

      t.timestamps
    end
  end
end
