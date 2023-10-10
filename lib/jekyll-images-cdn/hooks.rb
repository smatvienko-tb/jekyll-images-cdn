require 'jekyll/hooks'
require 'jekyll-images-cdn'

# patch pages for the index or different categories
Jekyll::Hooks.register :pages, :post_render do |page|
  Jekyll::ImagesCdn.modify_images(page)
end

# patch each blog post
Jekyll::Hooks.register :posts, :post_render do |page|
  Jekyll::ImagesCdn.modify_images(page)
end
