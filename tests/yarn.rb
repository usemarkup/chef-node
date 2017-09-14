describe 'yarn runtime is available' do
  it 'has yarn' do
    expect(command('yarn -v').exit_status).to eq(0)
  end
end
