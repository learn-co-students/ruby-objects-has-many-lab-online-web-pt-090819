class Author 
  attr_accessor :name 
  
  def initialize(name)
    @name = name
  end 
  
  def add_post(pos)
    pos.author = self 
  end 
  
  def posts 
    Post.all.select {|pos| pos.author == self}
  end
  
  def add_post_by_title(title)
    pos = Post.new(title)
    add_post(pos)
  end 
  
  def self.post_count
    Post.all.length
  end 
end 