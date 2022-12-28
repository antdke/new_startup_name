class OpenaiService

  def self.generate_name(query)
    client = OpenAI::Client.new(
        access_token: ENV['openai_access_token'],
    )

    response = client.completions(
        parameters: {
        model: "text-davinci-001",
        prompt: "Suggest one unique name for a business that does the following: #{query.query}",
        max_tokens: 100,
        temperature: 1
    })

    return response["choices"][0]["text"]
  end
  
  
  
end