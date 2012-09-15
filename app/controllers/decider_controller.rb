class DeciderController < ApplicationController
  def rpc
    tmp = RestClient.get 'http://google.com/robots.txt'
    render :text => tmp.to_str
  end
end
