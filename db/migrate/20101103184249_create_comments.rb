class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.references :post
      t.string :author, :null => false
      t.string :email, :null => false
      t.string :url, :null => true
      t.string :title, :null => true
      t.string :body, :null => false
      t.timestamps
    end
  end

  def self.down
    drop_table :comments
  end
end
