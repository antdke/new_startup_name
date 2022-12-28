class Query < ApplicationRecord
  #validations
  validates_presence_of :query
  validates_length_of :query, minimum: 1

  #callback
  after_create :send_query

  # send query text to OpenAI and get the result back and update the query object with the generated name
  def send_query
    #puts "Yo name generated!"
    generated_name = OpenaiService.generate_name(self)
    self.update(generated_name: generated_name)
  end
end
