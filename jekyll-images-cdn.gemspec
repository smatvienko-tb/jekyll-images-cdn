# frozen_string_literal: true

require_relative "lib/jekyll-images-cdn/version"

Gem::Specification.new do |spec|
  spec.name = "jekyll-images-cdn"
  spec.version = Jekyll::ImagesCdn::VERSION
  spec.authors = ["Ariel Juodziukynas"]
  spec.email = ["ariel@ombulabs.com"]

  spec.summary = "A Jekyll plugin to replace relative image src with a CDN src"
  spec.description = "A Jekyll plugin to replace relative image src with a CDN src"
  spec.homepage = "https://github.com/fastruby/jekyll-images-cdn"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.7.2"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/fastruby/jekyll-images-cdn"
  spec.metadata["changelog_uri"] = "https://github.com/fastruby/jekyll-images-cdn"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir["{lib}/**/*", "MIT-LICENSE", "README.md"]
  spec.require_paths = ['lib']

  spec.add_dependency "jekyll", '~> 4.0', '>= 4.0.1'
  spec.add_runtime_dependency 'nokogiri', '~> 1.8', '>= 1.8.5'
end
