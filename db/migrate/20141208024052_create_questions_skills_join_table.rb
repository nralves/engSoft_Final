class CreateQuestionsSkillsJoinTable < ActiveRecord::Migration
  def self.up
    create_table :questions_skills, :id => false do |t|
      t.integer :question_id
      t.integer :skill_id
    end

    add_index :questions_skills, [:question_id, :skill_id]
  end

  def self.down
    drop_table :questions_skills
  end
end
