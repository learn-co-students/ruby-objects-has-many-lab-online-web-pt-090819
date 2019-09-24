class Post
    attr_accessor :title, :author
    
    # @@all = []

    # def initialize(name)
    #     @name = name
    #     save
    # end

    # def save
    #     @@all << self
    # end

    # def self.all
    #     @all
    # end

    @@all = []

    def initialize(title)
        @title = title
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def author_name
       self.author ? self.author.name : nil
    end

end