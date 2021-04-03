class TodolistsController < ApplicationController
  
  def new
    @list = List.new
    #Viewへ受け渡す為のインスタンス変数に空のモデルオブジェクトを生成する
  end
  
  def create
    list = List.new(list_params)
    list.save
    redirect_to '/top'
  end 
  
  
  def index
    @lists = List.all
  end 
  
  def show
    @list = List.find(params[:id])
  end 
  
  
  
  
  private
  
  def list_params
    params.require(:list).permit(:title,:body)
  end 
  
end
