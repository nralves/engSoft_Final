class CreateJobsSkillsJoinTable < ActiveRecord::Migration
  def self.up
    create_table :jobs_skills, :id => false do |t|
      t.integer :job_id
      t.integer :skill_id
    end

    add_index :jobs_skills, [:job_id, :skill_id]
  end

  def self.down
    drop_table :jobs_skills
  end
end
