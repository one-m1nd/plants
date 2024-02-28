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

  describe '.list_genera' do
    before(:each) do
      stub_request(:get, "#{Plants::Client::URL}/genus")
        .to_return(status: 200, body: '{}')
    end

    subject { Plants.list_genera }

    it do
      expect(subject).to be_instance_of(HTTP::Response)
      expect(a_request(:get, "#{Plants::Client::URL}/genus")).to have_been_made
    end
  end

  describe '.find_genus' do
    before(:each) do
      stub_request(:get, "#{Plants::Client::URL}/genus/euphorbia")
        .to_return(status: 200, body: '{}')
    end

    subject { Plants.find_genus('euphorbia') }

    it do
      expect(subject).to be_instance_of(HTTP::Response)
      expect(a_request(:get, "#{Plants::Client::URL}/genus/euphorbia")).to have_been_made
    end
  end

  describe '.list_families' do
    before(:each) do
      stub_request(:get, "#{Plants::Client::URL}/families")
        .to_return(status: 200, body: '{}')
    end

    subject { Plants.list_families }

    it do
      expect(subject).to be_instance_of(HTTP::Response)
      expect(a_request(:get, "#{Plants::Client::URL}/families")).to have_been_made
    end
  end

  describe '.find_family' do
    before(:each) do
      stub_request(:get, "#{Plants::Client::URL}/families/euphorbiaceae")
        .to_return(status: 200, body: '{}')
    end

    subject { Plants.find_family('euphorbiaceae') }

    it do
      expect(subject).to be_instance_of(HTTP::Response)
      expect(a_request(:get, "#{Plants::Client::URL}/families/euphorbiaceae")).to have_been_made
    end
  end

  describe '.list_kingdoms' do
    before(:each) do
      stub_request(:get, "#{Plants::Client::URL}/kingdoms")
        .to_return(status: 200, body: '{}')
    end

    subject { Plants.list_kingdoms }

    it do
      expect(subject).to be_instance_of(HTTP::Response)
      expect(a_request(:get, "#{Plants::Client::URL}/kingdoms")).to have_been_made
    end
  end

  describe '.find_kingdom' do
    before(:each) do
      stub_request(:get, "#{Plants::Client::URL}/kingdoms/foobar")
        .to_return(status: 200, body: '{}')
    end

    subject { Plants.find_kingdom('foobar') }

    it do
      expect(subject).to be_instance_of(HTTP::Response)
      expect(a_request(:get, "#{Plants::Client::URL}/kingdoms/foobar")).to have_been_made
    end
  end

  describe '.list_subkingdoms' do
    before(:each) do
      stub_request(:get, "#{Plants::Client::URL}/subkingdoms")
        .to_return(status: 200, body: '{}')
    end

    subject { Plants.list_subkingdoms }

    it do
      expect(subject).to be_instance_of(HTTP::Response)
      expect(a_request(:get, "#{Plants::Client::URL}/subkingdoms")).to have_been_made
    end
  end

  describe '.find_subkingdom' do
    before(:each) do
      stub_request(:get, "#{Plants::Client::URL}/subkingdoms/foobar")
        .to_return(status: 200, body: '{}')
    end

    subject { Plants.find_subkingdom('foobar') }

    it do
      expect(subject).to be_instance_of(HTTP::Response)
      expect(a_request(:get, "#{Plants::Client::URL}/subkingdoms/foobar")).to have_been_made
    end
  end

  describe '.list_divisions' do
    before(:each) do
      stub_request(:get, "#{Plants::Client::URL}/divisions")
        .to_return(status: 200, body: '{}')
    end

    subject { Plants.list_divisions }

    it do
      expect(subject).to be_instance_of(HTTP::Response)
      expect(a_request(:get, "#{Plants::Client::URL}/divisions")).to have_been_made
    end
  end

  describe '.find_division' do
    before(:each) do
      stub_request(:get, "#{Plants::Client::URL}/divisions/foobar")
        .to_return(status: 200, body: '{}')
    end

    subject { Plants.find_division('foobar') }

    it do
      expect(subject).to be_instance_of(HTTP::Response)
      expect(a_request(:get, "#{Plants::Client::URL}/divisions/foobar")).to have_been_made
    end
  end

  describe '.list_division_classes' do
    before(:each) do
      stub_request(:get, "#{Plants::Client::URL}/division_classes")
        .to_return(status: 200, body: '{}')
    end

    subject { Plants.list_division_classes }

    it do
      expect(subject).to be_instance_of(HTTP::Response)
      expect(a_request(:get, "#{Plants::Client::URL}/division_classes")).to have_been_made
    end
  end

  describe '.find_division_class' do
    before(:each) do
      stub_request(:get, "#{Plants::Client::URL}/division_classes/foobar")
        .to_return(status: 200, body: '{}')
    end

    subject { Plants.find_division_class('foobar') }

    it do
      expect(subject).to be_instance_of(HTTP::Response)
      expect(a_request(:get, "#{Plants::Client::URL}/division_classes/foobar")).to have_been_made
    end
  end

  describe '.list_division_orders' do
    before(:each) do
      stub_request(:get, "#{Plants::Client::URL}/division_orders")
        .to_return(status: 200, body: '{}')
    end

    subject { Plants.list_division_orders }

    it do
      expect(subject).to be_instance_of(HTTP::Response)
      expect(a_request(:get, "#{Plants::Client::URL}/division_orders")).to have_been_made
    end
  end

  describe '.find_division_order' do
    before(:each) do
      stub_request(:get, "#{Plants::Client::URL}/division_orders/foobar")
        .to_return(status: 200, body: '{}')
    end

    subject { Plants.find_division_order('foobar') }

    it do
      expect(subject).to be_instance_of(HTTP::Response)
      expect(a_request(:get, "#{Plants::Client::URL}/division_orders/foobar")).to have_been_made
    end
  end
end
