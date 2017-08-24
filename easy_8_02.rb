# Mad libs are a simple game where you create a story template with blanks for words. 
# You, or another player, then construct a list of words and place them into the story, 
# creating an often silly or funny story as a result.

# Create a simple mad-lib program that prompts for a noun, a verb, an adverb, 
# and an adjective and injects those into a story that you create.

# Example

# Enter a noun: dog
# Enter a verb: walk
# Enter an adjective: blue
# Enter an adverb: quickly

# Do you walk your blue dog quickly? That's hilarious!


def madlibs(madlibs_hash)
  p "Do you #{madlibs_hash[:verb]} your #{madlibs_hash[:adjective]} #{madlibs_hash[:noun]} #{madlibs_hash[:adverb]}? That's hilarious!"
  p "If #{madlibs_hash[:noun]} would just #{madlibs_hash[:verb]}, I could finally get my #{madlibs_hash[:proper_noun]} out of #{madlibs_hash[:place]}."
end

def prompt(message)
  puts "=> #{message}"
end

parts_of_speech_hash = {}

prompt "Enter a noun:"
noun = gets.chomp
parts_of_speech_hash[:noun] = noun

prompt "Enter a verb:"
verb = gets.chomp
parts_of_speech_hash[:verb] = verb

prompt "Enter a adjective:"
adjective = gets.chomp
parts_of_speech_hash[:adjective] = adjective

prompt "Enter a adverb:"
adverb = gets.chomp
parts_of_speech_hash[:adverb] = adverb

prompt "Enter a place:"
place = gets.chomp
parts_of_speech_hash[:place] = place

prompt "Enter a proper noun:"
proper_noun = gets.chomp
parts_of_speech_hash[:proper_noun] = proper_noun

madlibs( parts_of_speech_hash)