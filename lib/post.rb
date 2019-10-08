#class Post 
  
#  attr_accessor :title
  
#  def initialize(title)
#    @title = title 
#    @@all << self
#  end
  
#  def all
    
#  end
    
  
#end

#post = Post.new("title")
#post = Author.new
class Post 
  
  attr_accessor :title, :author 
  
  @@all = []
  
  def initialize(title)
    @title = title
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def author_name
    if self.author
      self.author.name
    else
      nil
    end
  end

end
