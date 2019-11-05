class Post 
  attr_accessor :title, :author
  @@all = [ ]
  
  def initialize(name)
    @title = name
    @@all << self # self refers to the instances of posts. @@all is the class variable which is an empty array. Line 3
  end
  
  def self.all  # aka Post.all>This method will be responsible for holding ALL of the posts on one place 
  @@all
  end
  
  def author_name
  author.name if author
    end
    
  end
  
  
  
  
#end