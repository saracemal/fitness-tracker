class User < ApplicationRecord
    has_many :entries
    has_many :routines, through: :entries
    
    has_secure_password 
    # validates :name, presence: true { "must be created with a name"}
    # validates :name, uniqueness: true {"Username is already in use"}

    #or
    #validates_presence_of :name, :age, :weight, :height 
    # validates :name, uniqueness: true {"Username is already in use"}

    ## maybe change user attributes to include :username, :first_name, 
    # :last_name so that way we can make sure the :username is
    # unique and the first/last name don't have to be so it mimics
    # real life ?? may also have to add presence of :password

end