# Change Compass configuration
# compass_config do |config|
#   config.output_style = :compact
# end

proxy '/README.md', '/README.txt', :layout => false
ignore '/README.txt'
# page '/README.md', :layout => false

# CSS Autoprefixer
activate :autoprefixer

# Reload the browser automatically whenever files change
activate :livereload

set :css_dir, 'css'
set :js_dir, 'js'
set :images_dir, 'images'
set :partials_dir, 'partials'
set :build_dir, '../madrasahmahabbah.github.io'
# set :build_dir, 'build'

# Build-specific configuration
configure :build do

  activate :imageoptim

  activate :minify_css

  activate :minify_javascript

  # Enable cache buster
  # activate :asset_hash

  # Use relative URLs
  # activate :relative_assets

  # Or use a different image path
  # set :http_prefix, "/Content/images/"
end
