# frozen_string_literal: true

require_relative '/home/lones/Ruby/lib/temp'

describe 'Temperature Converter' do
  it 'Celsii to Kelvin and Farengate' do
    types = {
      'K' => nil,
      'C' => nil,
      'F' => nil
    }
    types['C'] = 32.1
    tempe('C', 32.5,
          types)
    expect(types['K']).to eq 305
    expect(types['F']).to eq 90
  end
  it 'Kelvin to Farengate and Celsii' do
    types = {
      'K' => nil,
      'C' => nil,
      'F' => nil
    }
    types['K'] = 305.8
    tempe('K', 305.15,
          types)
    expect(types['C']).to eq 32
    expect(types['F']).to eq 89
  end
  it 'Farengate to Kelvin and Celsii' do
    types = {
      'K' => nil,
      'C' => nil,
      'F' => nil
    }
    types['F'] = 89.6
    tempe('F', 89.6,
          types)
    expect(types['C']).to eq 32
    expect(types['K']).to eq 305
  end
  it 'Check Converter for Celsii to K with step 10' do
    types = {
      'K' => nil,
      'C' => nil,
      'F' => nil
    }
    [0, 10, 20, 30, 40, 50, 60].each do |i|
      types['C'] = i
      tempe('C', i,
            types)
      expect(types['K']).to eq(i + 273)
    end
  end
end
