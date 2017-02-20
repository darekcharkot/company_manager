require 'spec_helper'

describe CompanyManager::Employee do
  subject { described_class.new(attributs) }
  let(:attributs) do
    {
      first_name: ' Romek ',
      last_name: ' Giertych '
    }
  end
  it '#first_name' do
    expect(subject.first_name).to eq('Romek')
  end
  it '#last_name' do
    expect(subject.last_name).to eq('Giertych')
  end
  it '#full_name' do
    expect(subject.full_name).to eq('Romek Giertych')
    subject.first_name = 'Antek'
    subject.last_name = 'Niemczyk'
    expect(subject.full_name).to eq('Antek Niemczyk')
  end
end
