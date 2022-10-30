class Magazine
  attr_accessor :name, :category

  @@all = []


  def initialize(name, category)
    @name = name
    @category = category
    @@all << self

  end

  def name
    @name
  end

  def category
    @category
  end

  def self.all
    @@all
  end

  def contributors
    magazine_article = Article.all.select do |article|
      article.magazine == self
    end
    magazine_article.map do |article|
      article.author
    end
  end

  def find_by_name(name)
    Magazine.all.find do |magazine|
      magazine.name == name
    end
  end

  def artile_titles
    arr = Article.all.select do |article|
      article.magazine == self
    end
    arr.map do |article|
      article.title
    end
  end

  def contributing_authors
    arr = contributors.tally
    arr.select do |author, count|
      count > 2
    end
  end
end