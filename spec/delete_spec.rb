describe 'Fazer uma requisição' do
  it 'delete' do
    @request_delete = Contato.delete('/contacts/683')
    puts @request_delete
  end
end
