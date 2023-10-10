# Jekyll Images CDN

This plugin adds replaces the `src` for images with a CDN url when the original URL is relative.

## Setup

1. Add the gem to your `Gemfile`:
   ```ruby
   gem 'jekyll-images-cdn', github: 'fastruby/jekyll-images-cdn'
   ```
2. Run `bundle install` to install the gem
3. Add the following to your `_config.yml`:
   ```yaml
   plugins:
     - jekyll-images-cdn
   ```

## Usage

The plugin automatically edits all image and picture elements with relative paths for the src attribute prepending the defined CDN base url.

### Configuration

You can configure the plugin in the `_config.yml` file:

```yaml
images_cdn:
  base_cdn_url: https:my_cdn.com
```

Or you can use the `ASSET_HOST` environment variable:

```
ASSET_HOST=https:my_cdn.com bundle exec jekyll build -d ../public/blog
```

> Note that, if both are defined, `ASSET_HOST` has priority
