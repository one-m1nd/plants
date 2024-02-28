# frozen_string_literal: true

RSpec.describe Plants do
  it "has a version number" do
    expect(Plants::VERSION).not_to be nil
  end

  describe '.token=' do
    after(:each) { Plants.token = nil }

    subject { Plants.token = 'secret' }

    it do
      subject
      expect(Plants.config.token).to eql 'secret'
    end
  end

  describe '.config' do
    subject { Plants.config }

    it do
      expect(subject).to be_instance_of(Plants::Config)
    end
  end

  describe '.plants' do
    before(:each) do
      stub_request(:get, "#{Plants::Client::URL}/plants")
        .to_return(status: 200, body: '{}')
    end

    subject { Plants.plants }

    it do
      expect(subject).to be_instance_of(HTTP::Response)
      expect(a_request(:get, "#{Plants::Client::URL}/plants")).to have_been_made
    end
  end

  describe '.plant' do
    before(:each) do
      stub_request(:get, "#{Plants::Client::URL}/plants/euphorbia-abdelkuri")
        .to_return(status: 200, body: '{}')
    end

    subject { Plants.plant('euphorbia-abdelkuri') }

    it do
      expect(subject).to be_instance_of(HTTP::Response)
      expect(a_request(:get, "#{Plants::Client::URL}/plants/euphorbia-abdelkuri")).to have_been_made
    end
  end

  describe '.search_for_plant' do
    before(:each) do
      stub_request(:get, "#{Plants::Client::URL}/plants/search")
        .with(query: { q: 'abdelkuri' })
        .to_return(status: 200, body: '{}')
    end

    subject { Plants.search_for_plant('abdelkuri') }

    it do
      expect(subject).to be_instance_of(HTTP::Response)
      expect(a_request(:get, "#{Plants::Client::URL}/plants/search").with(query: { q: 'abdelkuri' })).to have_been_made
    end
  end

  describe '.list_plants_for_genus' do
    before(:each) do
      stub_request(:get, "#{Plants::Client::URL}/genus/euphorbia/plants")
        .to_return(status: 200, body: '{}')
    end

    subject { Plants.list_plants_for_genus('euphorbia') }

    it do
      expect(subject).to be_instance_of(HTTP::Response)
      expect(a_request(:get, "#{Plants::Client::URL}/genus/euphorbia/plants")).to have_been_made
    end
  end


  describe '.list_plants_for_distribution_zone' do
    before(:each) do
      stub_request(:get, "#{Plants::Client::URL}/distributions/hell/plants")
        .to_return(status: 200, body: '{}')
    end

    subject { Plants.list_plants_for_distribution_zone('hell') }

    it do
      expect(subject).to be_instance_of(HTTP::Response)
      expect(a_request(:get, "#{Plants::Client::URL}/distributions/hell/plants")).to have_been_made
    end
  end
end
