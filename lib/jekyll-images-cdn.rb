require 'jekyll-images-cdn/hooks'
require 'nokogiri'

module Jekyll
  class ImagesCdn
    def self.modify_images(page)
      return unless page.output.start_with?("<")

      config = page.site.config
      base_url = ENV['ASSET_HOST'] || config.dig('images_cdn', 'base_cdn_url')
      return if base_url.nil?

      base_url = base_url.gsub(/\s+/, '')
      return if base_url.nil? || base_url == ""

      doc = Nokogiri::HTML5(page.output)
      doc.css('img').each do |img|
        src = img['src']
        next unless src.start_with?('/')

        img['src'] = "#{base_url}#{src}"
      end

      doc.css('picture source').each do |pic_src|
        src = pic_src['srcset']
        next unless src.start_with?('/')

        pic_src['srcset'] = "#{base_url}#{src}"
      end

      page.output = doc.to_html
    end
  end
end
