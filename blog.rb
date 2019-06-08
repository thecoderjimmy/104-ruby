class Blog

  @@total_posts = 0

  def initialize
    @@total_posts += 1
  end

  def set_title=(title)
    @title = title
  end

  def get_title
    return @title
  end

  def set_content=(content)
    @content = content
  end

  def get_content
    return @content
  end

  def set_date
    @date = Time.new
  end

  def get_date
    return @date
  end

  def set_author=(name)
    @author = name
  end

  def get_author
    return @author
  end

end

class Post < Blog

  # This method prompts the user to write a new blog post and then store the data
  def new_post

    # Start a new post
    my_post = Blog.new

    # Gets the current date automatically and stores it in "post_date"
    post_date = my_post.set_date

    # Adds to the blog post counter
    initialize

    # Asks user input for title and stores it in "post_title"
    puts "Title:"
    my_post.set_title = gets.chomp
    post_title = my_post.get_title

    # Asks user name and stores it in "post_author"
    puts "Author:"
    my_post.set_author = gets.chomp
    post_author = my_post.get_author

    # Asks user to input blog content and stores it in "post_content"
    puts "Please write your blog post:"
    my_post.set_content = gets
    post_content = my_post.get_content
    
  end
end

# BEGINNING OF PROGRAM
puts "Welcome to your Blog!\nDo you want to create another blog post? [Y/N]"
answer = gets.chomp.upcase

if answer == "Y"
  new_post
  # how can I get the info??
else
  puts "Have a nice day! :)"
end