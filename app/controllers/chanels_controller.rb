class ChanelsController < ApplicationController
  def index
    @tags = Tag.all
  end
  
  def search
    @tag = params[:tag]
    @chanels = Chanel.where(tag1: @tag)
    .or(Chanel.where(tag2: @tag))
    .or(Chanel.where(tag3: @tag))
    .or(Chanel.where(tag4: @tag))
    .or(Chanel.where(tag5: @tag))    
  end
end
