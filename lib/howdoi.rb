require "howdoi/version"
require 'nokogiri'
require 'open-uri'

module Howdoi
  class Searcher
    attr_accessor :result

    SITES = {
      "computers" => "http://stackoverflow.com",
      "program" => "http://programmers.stackexchange.com",
      "sysadmin" => "http://serverfault.com"
    }

    def initialize(site)
      search_val = get_search_val
      doc = Nokogiri::HTML(open("#{SITES[site]}/search?q=#{search_val}"))
      @result = "#{SITES[site]}#{doc.css(".result-link a").first.attribute("href").value}"
    end

    def get_search_val
      errors = File.open("/tmp/howdoi_errors")
    end
  end
end
