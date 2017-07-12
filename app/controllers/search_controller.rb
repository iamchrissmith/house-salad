class SearchController < ApplicationController
  def index
    @results = PropublicaService.search_house_by_state(state: params[:state])
  end
end
