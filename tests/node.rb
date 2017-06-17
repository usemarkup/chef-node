describe 'node runtime is available' do
  it 'has node' do
    expect(command('node -v').exit_status).to eq(0)
  end
end
