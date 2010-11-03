class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :login, :null => false, :limit => 32
      t.string :real_name, :null => false, :limit => 128
      t.string :email, :null => false, :limit => 128
      t.string :password, :null => false, :limit => 128
      t.boolean :enabled, :default => true

      t.timestamps
      
      t.index :login, :unique => true
      t.index :email, :unique => true
    end
  end

  def self.down
    drop_table :users
  end
end
