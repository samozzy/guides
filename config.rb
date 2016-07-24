require 'compass/import-once/activate'

# Rather than using the pre-compiled version of bootstrap, let's grab the SASSy version
# All the classes are currently using Bootstrap, rather than Materialize
require 'bootstrap-sass'

# Some useful directories
http_path = "/"
css_dir = "static/css"
http_stylesheets_path = "css" # Maybe we don't need this (we don't have that directory!)
sass_dir = "static/sass"
images_dir = "static/img"
http_images_path = "img"
javascripts_dir = "static/js"
http_javascripts_path = "js"
fonts_dir = "static/fonts"
http_fonts_path = "../fonts"