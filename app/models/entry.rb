class Entry < ApplicationRecord #joiner table between User and Routine (?)
    belongs_to :user
    belongs_to :routine

    #create validations for entry. requires title and description
end