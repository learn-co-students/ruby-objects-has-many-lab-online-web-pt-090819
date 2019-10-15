class Author 
attr_accessor :name, :posts 
@@all = []
@@post_count = 0
  def initialize(name)
      @name = name 
      @posts = []
      @@all << self
  end
  
  def posts  
    Post.all.select do |psts| 
      psts.author == self 
    end
     
  end
  def add_post(post)
      self.posts << post
      post.author= self
      @@post_count += 1
  end
  
  def add_post_by_title(title) 
      post = Post.new(title)
      post.author = self
      @@post_count += 1
  end
  
  def self.post_count 
        @@post_count += 1 
  end
end
