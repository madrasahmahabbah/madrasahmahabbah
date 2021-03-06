# Change Compass configuration
compass_config do |config|
  # config.output_style = :compact
  # config.add_import_path File.join root, 'bower/Bootflat/bootflat/scss'
end

# CSS Autoprefixer
activate :autoprefixer

# Reload the browser automatically whenever files change
activate :livereload

# Enable cache buster
# activate :asset_hash

# Paths
set :css_dir, 'assets/css'
set :js_dir, 'assets/js'
set :images_dir, 'assets/images'
set :partials_dir, 'partials'
set :build_dir, '../madrasahmahabbah.github.io'

# Proxies
# 1. readme
proxy '/README.md', '/README.txt', :layout => false
# 2. initiative pages
proxy '/raudhatul-muhibbain/index.html', '/inits/rm.html'
proxy '/raudhah-mahabbah/index.html',    '/inits/rm.html'
proxy '/mabkhoor-music/index.html',      '/inits/mm.html'
proxy '/mahabbah-fashion/index.html',    '/inits/mf.html'
# 3. others
proxy '/o/index.html',    '/onepage.html'

# Ignores
ignore '/README.txt'

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
