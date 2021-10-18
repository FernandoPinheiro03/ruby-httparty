describe 'Fazer uma requisição' do
  it 'put' do
    @body = {
      "name": "pinheiro pinheiro pinheiro"
    }.to_json

    @chamada_put = Contato.put('/contacts/727', body: @body)
    puts @chamada_put
  end
end
