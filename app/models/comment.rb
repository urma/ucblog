class Comment < ActiveRecord::Base
    # Validations
    validates_presence_of :author, :email, :body
    validates_format_of :email, :with => /^\S+@\S+\.\S+$/
    
    # Associations
    belongs_to :post
end
