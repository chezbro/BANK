require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'mechanize'
require 'google_image_api'	

class StaticPagesController < ApplicationController
	def home_page
		agent = Mechanize.new
		agent.get("http://www.celebritynetworth.com/random")
		# random = agent.page.link_with(text: "Random Celebrity Profile")
		@worth = agent.page.at(".networth_amount_value").text
		@body = agent.page.at(".networth_content p").text

		@title = agent.page.at("title").text

		name = @title.split(/\W+/)
		first_name = name[0]
		last_name = name[1]
		@full_name = first_name + ' ' + last_name


	  result = GoogleImageApi.find("#{@full_name}", {
	    :imgsz => "medium",
	    :rsz => 8,
	    :start => 8,
	    :imgtype  => "face",
	    :as_filetype => "jpg"
	  })

	  result = result.images.first
	  @url = result["unescapedUrl"]
	  
  # result.images.first do |img|
  #   puts img['url']
  # end



		# @whole_page = Nokogiri::HTML(open("http://www.celebritynetworth.com/richest-athletes/nfl/randy-moss-net-worth/"))

		# page = Nokogiri::HTML(open("http://www.celebritynetworth.com/?p=35314"))

		# .networth_amount_random

	end


end