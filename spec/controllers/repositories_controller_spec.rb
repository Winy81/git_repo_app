require 'net/http'
require 'spec_helper'
require 'rails_helper'

RSpec.describe RepositoriesController, type: :controller do

  describe 'POST #search' do

    context 'with search results - github_search' do

      it 'returns a successful response with one item' do

        allow_any_instance_of(Net::HTTP).to receive(:get).and_return

        post :search, params: { search_term: 'test-repo' }

        expect(response).to have_http_status(200)

      end
    end

    context 'without search results - main page' do
      
      it 'returns a successful response with no items' do

        expect(Net::HTTP).to_not receive(:get)

        post :search

      end
    end
  end
end