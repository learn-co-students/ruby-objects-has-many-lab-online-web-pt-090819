class Author 
  attr_accessor :name
  
  @@posts_count = 0
  
  def initialize(name)
    @name = name
    @post = []
  end
  
  def posts
    Post.all.select {|post| 
    post.author == self}
  end
  
  def add_post(posts)
    posts.author = self
    self.posts << self
    @@posts_count += 1
  end 
  
  def add_post_by_title(name)
    posts = Post.new(name)
    self.posts << posts
    add_post(posts)
    @@posts_count += 1
  end
  
  def self.post_count 
     @@posts_count
    end
  
end 