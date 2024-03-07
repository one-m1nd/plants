RSpec.describe Plants::Client do
  let(:config) { instance_double(Plants::Config) }
  let(:client) { Plants::Client.new(config) }

  describe '.new' do
    subject { client }

    it do
      expect(subject).to be_instance_of(Plants::Client)
    end
  end

  describe '#config' do
    subject { client.config }

    it do
      expect(subject).to be(config)
    end
  end

  describe '#get' do
    context 'resource = plants' do
      subject { client.get 'plants' }

      before(:each) do
        stub_request(:get, "#{Plants::Client::URL}/plants").to_return(status: 200, body: '{}')
      end

      it do
        expect(config).to receive(:token).and_return(nil)
        expect(config).to receive(:timeout).and_return(10)
        expect(subject).to be_instance_of(HTTP::Response)
        expect(a_request(:get, "#{Plants::Client::URL}/plants")).to have_been_made
      end
    end
  end
end