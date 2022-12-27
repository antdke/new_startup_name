class Query < ApplicationRecord
  #validations
  validates_presence_of :query
  validates_length_of :query, minimum: 1

  #callback
  after_create :generate_name

  # send query text to OpenAI and get the result back and update the query object with the generated name
  def generate_name
    puts "Yo name generated!"
  end
end
