class RepositoriesController < ApplicationController
  require 'net/http'
  require 'json'

  def search
    if params[:search_term]
      @search_term = params[:search_term]
      url = "https://api.github.com/search/repositories?q=#{@search_term}&sort=stars&order=desc"
      uri = URI(url)
      response = Net::HTTP.get(uri)
      @repositories = JSON.parse(response)['items']
    end
  end

end
