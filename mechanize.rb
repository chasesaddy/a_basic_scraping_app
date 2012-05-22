require 'rubygems'
require 'nokogiri'
require 'mechanize'
require 'sinatra'

headless do
  def scrape( company )
    company.gsub!( ' ', '+' )    
    agent = Mechanize.new
    page = agent.get( "http://investing.businessweek.com/research/common/symbollookup/symbollookup.asp?region=ALL&letterIn=#{company}&lookuptype=private" )
    hi = page.search( 'div[id=columnLeft]' ).css( 'div[id=resultCaption]' ).first.next_element
    puts hi.css( 'td' ).to_html
  end
end

get '/' do
	'Hello world!'
end

get '/:company' do
  scrape( :company )
end

get '/form' do  
  erb :form  
end