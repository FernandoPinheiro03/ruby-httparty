describe 'Fazer uma requisição' do
  it 'get' do
    @request_get = Contato.get('/contacts/727')

    @responde_code = @request_get.code
    @responde_age = @request_get.parsed_response['data']['attributes']['age']

    puts @responde_code
    expect(@responde_code).to eq 200
    expect(@responde_age).to eq 25
  end
end
