describe 'API Moods', type: :request do
  describe 'GET /api/moods/:id', reqres_section: 'Moods' do
    context 'valid', reqres_title: 'Get mood' do
      it 'returns mood' do
        user = User.create(email: 'test@example.com')
        mood = Mood.create(comment: 'Comment', user: user)
        get "/moods/#{mood.id}.json"
        expect(response.code).to eq '200'
        expect(JSON.parse(response.body).count).to be_present
      end
    end
  end
end

