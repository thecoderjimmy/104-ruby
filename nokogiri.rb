# Skillcrush 104: Gems
# Install Nokogiri & Scrape a Recipe
# https://learn.skillcrush.com/module-16/install-nokogiri-scrape-a-recipe/

require 'nokogiri'
require 'open-uri' # a nokogiri dependency

# get the HTML for the recipe page and assign it to a variable
doc = Nokogiri::HTML(open("https://recipes.sainsburys.co.uk/recipes/main-courses/italian-pressed-sandwich"))

# Search the HTML for different typs of elements until you find the right element for the list of ingredients
# search = doc.css('try some elements here')
# puts search

# EXAMPLES:
# puts doc.search("h1.entry-title")
# puts doc.search("entry-title").inner_html
# puts doc.search("entry-title").children
# puts doc.search("admin").children[0]
# puts doc.title < shows title of the website
# puts doc.methods < prints out all the methods that can be used

# I found the class!
# search = doc.css('ul.ingredients-list')

# Grab the data for the ingredients list.
# Mistake: DO NOT RUN "inner_html" HERE OR THE WHOLE LIST
#          WILL BE ONE GIANT STRING OF TEXT
list = doc.css('span.ingredient-label')

# Checked and found that the variable "list" is an array

# Puts all ingredients in a separate line
list.each do |ingredient|
  puts ingredient.inner_html # Mistake: run it here!!
end