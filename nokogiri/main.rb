require 'sinatra'
require 'open-uri'
require 'nokogiri'
require 'sinatra/reloader'

get '/' do
  uri = "https://www.fnn.jp/posts?news=1"
  doc = Nokogiri::HTML(open(uri),nil,"utf-8")
  @doc = doc

  # ////////////////news/////////////////////

  url1 = doc.css("a")[13][:href]
  @url1 = "https://www.fnn.jp#{url1}"

  img01 = doc.css('img.PostCardSmall__image')[0][:src]
  @img01 = "#{img01}"

  uri = @url1
  doc02 = Nokogiri::HTML(open(uri),nil,"utf-8")
  @doc02 = doc02

  title01 = doc02.css('h1.PostHeader__headline')
  @title01 = "#{title01}"

  text01 = doc02.css('div.PostBody > p')
  @text01 = "#{text01}"

  tags01 = doc02.css('div.Tags')
  @tags01 = "#{tags01}"



  # ////////////////news/////////////////////
  # ////////////////news/////////////////////

  url2 = doc.css("a")[14][:href]
  @url2 = "https://www.fnn.jp#{url2}"

  img02 = doc.css('img.PostCardSmall__image')[1][:src]
  @img02 = "#{img02}"

  uri2 = @url2
  doc03 = Nokogiri::HTML(open(uri2),nil,"utf-8")
  @doc03 = doc03

  title02 = doc03.css('h1.PostHeader__headline')
  @title02 = "#{title02}"

  text02 = doc03.css('div.PostBody > p')
  @text02 = "#{text02}"

  tags02 = doc03.css('div.Tags')
  @tags02 = "#{tags02}"

  # ////////////////news/////////////////////

  #
  # url3 = doc.css("a")[15][:href]
  # @url3 = "https://www.fnn.jp#{url3}"
  #
  # url4 = doc.css("a")[16][:href]
  # @url4 = "https://www.fnn.jp#{url4}"
  #
  # url5 = doc.css("a")[17][:href]
  # @url5 = "https://www.fnn.jp#{url5}"
  #
  # url6 = doc.css("a")[18][:href]
  # @url6 = "https://www.fnn.jp#{url6}"
  #
  # url7 = doc.css("a")[19][:href]
  # @url7 = "https://www.fnn.jp#{url7}"
  #
  # url8 = doc.css("a")[20][:href]
  # @url8 = "https://www.fnn.jp#{url8}"
  #
  # url9 = doc.css("a")[21][:href]
  # @url9 = "https://www.fnn.jp#{url9}"
  #
  # url10 = doc.css("a")[22][:href]
  # @url10 = "https://www.fnn.jp#{url10}"
  #
  # url11 = doc.css("a")[24][:href]
  # @url11 = "https://www.fnn.jp#{url11}"

  erb :index

end
