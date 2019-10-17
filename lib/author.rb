class Author 
  
  attr_accessor :name, :title, :post
  
  def initialize(name)
    @name =  name
    @title = title
    @post = post
  end
  
  def add_post(post)
    post.author = self
  end
  
  def posts 
    Post.all 
  end
  
  def add_post_by_title(post_title)
    s = Post.new(post_title)
    self.add_post(s)
   # binding.pry
  end
  
  def self.post_count
    Post.all.count
  end
    
  
end
