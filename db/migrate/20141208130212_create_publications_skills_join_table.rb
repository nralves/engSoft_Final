class CreatePublicationsSkillsJoinTable < ActiveRecord::Migration
   def self.up
    create_table :publications_skills, :id => false do |t|
      t.integer :publication_id
      t.integer :skill_id
    end

    add_index :publications_skills, [:publication_id, :skill_id]
  end

  def self.down
    drop_table :publications_skills
  end
end
