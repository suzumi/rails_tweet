#coding: utf-8

class TweetController < ApplicationController
	skip_before_filter :verify_authenticity_token ,:only=>[:show] #POST送信エラー回避

	def show
	    if params[:body].nil?
      else
        #つぶやかれた場合データベースに保存
        @tweet = Twitter.new
        @tweet.body = params[:body]
        @tweet.dateposted = Time.now
        @tweet.save
      end
      @list = Twitter.order("created_at DESC").all
  end
end
