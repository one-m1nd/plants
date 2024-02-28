RSpec.describe Plants::Config do
  let(:config) { Plants::Config.new }

  describe '.new' do
    subject { config }

    it do
      expect(subject).to be_instance_of(Plants::Config)
    end
  end

  describe '#token' do
    subject { config.token }

    it do
      expect(subject).to be nil
    end
  end

  describe '#token=' do
    subject { config.token = 'secret' }

    it do
      subject
      expect(config.token).to eql('secret')
    end
  end
end