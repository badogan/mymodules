require_relative "./mytoolbox.rb"

include MyToolbox::InstanceMethods

class JustAClass

end 

new = JustAClass.new
word = " actually this is a   sentence, I think. Let's leave some     double/triple spaces as well "
delimiters_array = [' ',',','i']

p new.split_this_thing_here_and_now(word,delimiters_array)