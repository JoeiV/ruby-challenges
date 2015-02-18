#My Simple Blog

class Blog
    attr_accessor :title, :all_posts, :total_posts  #give read/write access
   
    # sets up main Blog structure 
    def initialize  
        @time_created = Time.now
        puts "Blog Title & Author:"
        @title = gets.chomp
        @all_posts = []
        @total_posts = 0
    end
    
    def create
        new_post = Blog_Post.new
        puts "My latest blog post"
        @all_posts << new_post
        @total_posts +=1
    end
    
    def collected_posts
        return @all_posts
    end
    
    def publish(all_posts)
        all_posts.each do |post|
            puts post.time_created
            puts post.title
            puts post.content
        end
    end
end

class Blog_Post
    attr_accessor :title, :time_created, :content   #give read/write access
    
    def initialize   #allow user to add title & content; track time created
        @time_created = Time.now
        puts "Blog Title & Author:"
        @title = gets.chomp
        
        puts "Post content:"
        @content = gets.chomp
    end
    
    def edit_content   #allow user to edit title & content
        puts "New title:"
        @title = gets.chomp
        
        puts "New content:"
        @content = gets.chomp
    end
end

my_blog = Blog.new
first_post = my_blog.create
all_posts = my_blog.collected_posts
puts my_blog.inspect
my_blog.publish(all_posts)