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

# Enable cache buster
# activate :asset_hash

set :css_dir, 'assets/css'
set :js_dir, 'assets/js'
set :images_dir, 'assets/images'
set :partials_dir, 'partials'
set :build_dir, '../madrasahmahabbah.github.io'

# Build-specific configuration
configure :build do

  activate :imageoptim
  activate :minify_css
  activate :minify_javascript

  # Use relative URLs
  # activate :relative_assets

  # Or use a different image path
  # set :http_prefix, "/Content/images/"
end
