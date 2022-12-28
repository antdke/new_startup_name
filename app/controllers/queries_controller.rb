class QueriesController < ApplicationController
  def create
    query = Query.create(query_params)
    session[:query_id] = query.id
  end

  private

  def query_params
    params.require(:query).permit(:query) # => {query: 'something'}
  end
end