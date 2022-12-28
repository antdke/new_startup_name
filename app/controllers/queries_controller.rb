class QueriesController < ApplicationController
  def create
    query = Query.create(query_params)
    session[:query_id] = query.id
    session[:generated_name] = query.generated_name
    redirect_to root_path
  end

  private

  def query_params
    params.require(:query).permit(:query) # => {query: 'something'}
  end
end