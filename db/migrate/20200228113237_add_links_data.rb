require 'rubygems'
require 'nokogiri'
require 'open-uri'
class AddLinksData < ActiveRecord::Migration[5.2]
  def up
  	Link.delete_all

    links = Nokogiri::XML(File.open("links.xml"))
  	links.css('url-info').each do |node|
    		children = node.children

      Link.create(
        url: children.css('url').inner_text,
        description: children.css('desc').inner_text
      )
	  end 
  end
  def down
  end
end
