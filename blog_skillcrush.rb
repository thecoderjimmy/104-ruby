# @instance_variable, @class_variable

# creates a Blog parent class
class Blog
  
  # creates a class variable to put blog content in an array
  @@all_blog_posts = []
  # creats a class variable to count the number of posts
  @@num_blog_posts = 0
 
  # creates a method to call the blog content array
  def self.all
    @@all_blog_posts
  end
 
  # creates a method to count the number of blog posts
  def self.add(thing)
    @@all_blog_posts << thing
    @@num_blog_posts += 1
  end
 
  # creats a method to publish each blog post
  def self.publish
    @@all_blog_posts.each do |post|
      puts "Title:\n #{post.title}"
      puts "Body:\n #{post.content}"
      puts "Publish Date:\n #{post.created_at}"
    end
  end
 
end
 
# creates a BlogPost child class of Blog 
class BlogPost < Blog
  # a method for creating a new blog post
  def self.create
    # creates a new post
    post = new
    # creates and stores blog post name
    puts "Name your blog post:"
    post.title = gets.chomp
    # creates and stores blog post content
    puts "Your blog post content:"
    post.content = gets.chomp
    # creates and stores blog post publish time (current time)
    post.created_at = Time.now
    # calls the method "save", which in turn calls the "add"
    # method from the parent class, which counts the number
    # of posts
    post.save
    # runs the "create" method again if they user wants
    puts "Do you want to create another post? [Y/N]"
    create if gets.chomp.downcase == 'y'
 #returns if not ‘y’ and stops the rest of the script from running. otherwise, continues to run ‘create’ method.
  end
 
  # gets @title
  def title
    @title
  end
  # sets @title
  def title=(title) # a setter method always takes an argument
    @title = title # don't forget to set the instance variable
  end
    
  # gets time created
  def created_at
    @created_at
  end
  # sets time created
  def created_at=(created_at)
    @created_at = created_at
  end
    
  # gets content
  def content
    @content
  end
  # sets content
  def content=(content)
    @content = content
  end
 
  # calls the "add" method from the parent class to update
  # the number of total posts
  # can you not directly call from the parent class?
  # why does it have to be done this way?
  def save
    BlogPost.add(self) # why is there a self here?
  end
 
end
 
# the program starts running here

# runs the create method from the BlogPost class,
# takes in all information from the user before moving on
# to the next line
BlogPost.create
# calls the "all" method to bring out the array
all_blog_posts = BlogPost.all
# inspects the contents of the array
puts all_blog_posts.inspect
# prints out the array in a clean fashion with the publish method
BlogPost.publish