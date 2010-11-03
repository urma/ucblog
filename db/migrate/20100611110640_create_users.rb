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

    # Create initial administrator user
    User.create(:login => 'admin', :real_name => 'Administrator', :email => 'admin@spam.la', :password => 'secret', :enabled => true)
  end

  def self.down
    drop_table :users
  end
end
