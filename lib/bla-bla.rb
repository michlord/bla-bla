class BlaBla
  WORD_LIST = ["about","after","again","air","all",
               "along","also","an","and","another",
               "any","are","around","as","at","away",
               "back","be","because","been","before",
               "below","between","both","but","by",
               "came","can","come","could","day",
               "did","different","do","does","dont",
               "down","each","end","even","every",
               "few","find","first","for","found",
               "from","get","give","go","good","great",
               "had","has","have","he","help","her",
               "here","him","his","home","house","how",
               "I","if","in","into","is","it",
               "its","just","know","large","last","left",
               "like","line","little","long","look","made",
               "make","man","many","may","me","men",
               "might","more","most","Mr","must","my",
               "name","never","new","next","no","not"]

  def self.random_word
    WORD_LIST.sample
  end

  def self.author
    random_word.capitalize + " " + 
      random_word.capitalize
  end

  def self.title
    title = random_word.capitalize
    rand(0..4).times { title += " " + random_word }
    title
  end

  def self.sentence
    sentence = random_word.capitalize
    rand(4..9).times { sentence += " " + random_word }
    sentence + "."
  end

  def self.content
    content = sentence
    rand(0..4).times { content += " " + sentence}
    content
  end
  
  private_class_method :random_word
end
