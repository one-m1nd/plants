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

  describe '#timeout' do
    subject { config.timeout }

    it do
      expect(subject).to be_instance_of(Integer)
    end
  end

  describe '#timeout=' do
    subject { config.timeout = 5 }

    it do
      subject
      expect(config.timeout).to eql(5)
    end
  end
end