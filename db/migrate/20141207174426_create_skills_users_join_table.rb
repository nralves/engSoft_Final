class CreateSkillsUsersJoinTable < ActiveRecord::Migration
  def self.up
    create_table :skills_users, :id => false do |t|
      t.integer :skill_id
      t.integer :user_id
    end

    add_index :skills_users, [:skill_id, :user_id]
  end

  def self.down
    drop_table :skills_users
  end
end
