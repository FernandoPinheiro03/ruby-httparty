describe 'Fazer uma requisição' do
  it 'token' do
    @email = Faker::Internet.email

    @body = {
        user: {
          email: @email,
          password: '1234567',
          password_confirmation: '1234567'
      }
    }.to_json

    @header = { 
                Accept: 'application/vnd.taskmanager.v2',
                'Content-Type': 'application/json'
              }

    @request_criar = Criar.post('/users', body: @body, headers: @header)
    @token = @request_criar.parsed_response['data']['attributes']['auth-token']

    puts @request_criar.body
    puts @token

      @body_two = {
        session: {
          email: @email,
          password: '1234567',
      }
    }.to_json

    @header_two = { 
                Accept: 'application/vnd.taskmanager.v2',
                'Content-Type': 'application/json',
                Authorization: @token
    }

    @login = Criar.post('/sessions', body: @body_two, headers: @header_two)
    puts @login.body
  end
end
