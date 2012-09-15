class DeciderController < ApplicationController
  def rpc
    node = "http://localhost:1337"
    tmp = RestClient.get node
    render :text => tmp.to_str
  end
end
