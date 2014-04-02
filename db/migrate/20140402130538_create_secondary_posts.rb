class CreateSecondaryPosts < ActiveRecord::Migration
  def change
    create_table :secondary_posts do |t|
      t.string :content
      t.integer :userid
      t.string :extrastuff

      t.timestamps
    end
  end
end
