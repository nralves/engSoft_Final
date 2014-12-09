class AddBodyToPublications < ActiveRecord::Migration
  def change
    add_column :publications, :body, :text
  end
end
