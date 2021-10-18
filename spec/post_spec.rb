describe 'Fazer uma requisição' do
  it 'post' do
    @body = {
      "name": "fernando fernando fernando",
      "last_name": "fernando fernando fernando",
      "email": "fernando@fernando.com",
      "age": "25",
      "phone": "515555854",
      "address": "fernando fernando fernando",
      "state": "fernando fernando fernando",
      "city": "fernando fernando fernando",
    }.to_json

    @chamada_post = Contato.post('/contacts', body: @body)
    puts @chamada_post
  end
end
