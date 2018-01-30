ADJECTIVES = %w(lazy perky stunning nice agressive cantankerous)
NOUNS = %w(bridge tunnel bird democracy money glass book)
VERBS = %w(dashed jumped crawled flossed skiped alerted)
ADVERBS = %w(easily lazily quickly mercilessly combatively)

madlibs_card = File.open("./madlibs_card.txt", "r") do |file|
                 file.each do |line|
                   puts format(line, noun: NOUNS.sample,
                                     adjective: ADJECTIVES.sample,
                                     adverb: ADVERBS.sample,
                                     verb: VERBS.sample)
                 end
               end
