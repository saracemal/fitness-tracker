class User < ApplicationRecord
    has_many :entries
    has_many :routines, through: :entries
    
    has_secure_password 
    # validates :name, presence: true { "must be created with a name"}
    #validates :user_name, uniqueness: true {"Username is already in use"}

    #or
    validates_presence_of :user_name, :password, :name, :age, :weight, :height 
    # validates :name, uniqueness: true {"Username is already in use"}

    

end