require 'rails_helper'

RSpec.describe Blog, type: :model do
  context 'validation test' do
  	it 'ensures title is present' do 
  		blog = Blog.new(title: "rails testing").save
  		expect(blog).to eq(false)
  	end

  	it 'ensures body is present' do 
  		blog = Blog.new(body: "some cool body info").save
  		expect(blog).to eq(false)
  	end

  	it 'should save successfully' do 
  		blog = Blog.new(title: "rails testing", body: "some cool info").save
  		expect(blog).to eq(true)
  	end
  end

  context 'scope test' do
  	before(:each) do
  		Blog.new(title: 'some cool title', body: 'info about title for my blog').save
  		Blog.new(title: 'another cool title', body: 'info about title for my blog').save
  		Blog.new(title: 'another cool title2', body: 'info about title for my blog').save
  		Blog.new(title: 'another cool title3', body: 'info about title for my blog').save
  	end

  	it 'adds 4 new blogs if uniq title and body present' do
  		expect(Blog.count).to eq 4
  	end

  end
end
