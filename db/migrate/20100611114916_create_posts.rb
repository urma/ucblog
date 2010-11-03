class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.belongs_to :user
      t.string :title, :null => false, :limit => 128
      t.text :body, :null => false
      t.boolean :published, :default => true
      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end
