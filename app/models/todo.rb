# It creates a Todo class that inherits from ApplicationRecord
class Todo < ApplicationRecord
#  makes the title required
    # + 
    validates :title, presence: true
end    

# Notes --
# Here’s what’s going on with this line of code:
# validates is a method provided on ApplicationRecord 
# that we are running in the middle of the class definition. 
# Notice that parentheses are optional for method calls in 
# Ruby; this is the same as writing validates(:title, 
# presence: true). Typically, “normal” method calls in our 
# code are written with parens, but calls to Rails class-level
# methods like validates are called without parens.
# An identifier that starts with : is a symbol; it’s just 
# like a string but it doesn’t have string manipulation 
# methods like substring. Here we’re just saying to validate 
# the field named :title.
