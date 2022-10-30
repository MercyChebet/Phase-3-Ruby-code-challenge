class Article

    attr_accessor :magazine, :title#print all magazines
  
    @@all = []
  
    def initialize(author,magazine,title)
      @author = author
      @magazine = magazine
      @title = title
      @@all << self
    end
  
    def title
      @title
    end
  
    def self.all
      @@all
    end
  
    #print all authors
    def author
      @author
    end
  end