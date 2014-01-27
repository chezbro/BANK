require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'mechanize'

class StaticPagesController < ApplicationController
	def home_page
		agent = Mechanize.new
		agent.get("http://www.celebritynetworth.com/random")
		# random = agent.page.link_with(text: "Random Celebrity Profile")
		@title = agent.page.at("title").text
		@worth = agent.page.at(".networth_amount_value").text
		@body = agent.page.at(".networth_content p").text



		# @whole_page = Nokogiri::HTML(open("http://www.celebritynetworth.com/richest-athletes/nfl/randy-moss-net-worth/"))

		# page = Nokogiri::HTML(open("http://www.celebritynetworth.com/?p=35314"))

		# .networth_amount_random

	end


end