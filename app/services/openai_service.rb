class TestOpenAI
  client = OpenAI::Client.new(
        access_token: ENV['openai_access_token'],
  )

  response = client.completions(
        parameters: {
            model: "text-davinci-001",
            prompt: "What's the third planet from the sun?",
            max_tokens: 100,
            temperature: 1
  })
  
end