class Author 
  
  attr_accessor :name 
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def posts
    Post.all.select{|posts| posts.author == self}
  end
  
  def add_post(posts)
    posts.author = self
  end
  
  def add_post_by_title(posts)
    posts = Post.new(posts)
    add_post(posts)
  end
  
  def self.post_count
    Post.all.length 
  end
end