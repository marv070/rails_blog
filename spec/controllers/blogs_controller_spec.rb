require 'rails_helper'

RSpec.describe BlogsController, type: :controller do
	context 'GET #index' do
		it 'returns a success response' do
			get :index
		    expect(response).to be_successful
		end
	end

	context 'GET #show' do
		it 'returns as success response message' do
			blog = Blog.create(title: 'rails for web development', body: 'some cool stuff about rails')
			get :show, params: { id: blog.to_param }
			expect(response).to be_successful
		end
	end
end
