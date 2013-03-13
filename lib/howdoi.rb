require "howdoi/version"
require 'nokogiri'
require 'open-uri'

module Howdoi
  class Searcher
    attr_accessor :result

    SITES = {
      "program" => "http://stackoverflow.com",
      "sysadmin" => "http://serverfault.com"
    }

    def initialize(site, search)
      doc = Nokogiri::HTML(open("#{SITES[site]}/search?q=#{search}"))
      @result = "#{SITES[site]}#{doc.css(".result-link a").first.attribute("href").value}"
    end
  end
end
