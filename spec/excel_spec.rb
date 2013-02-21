require 'rspec'
require_relative '../lib/Excel/excel'

describe Excel do
  it 'creates a new Excel document' do
    xl = Excel.new
    xl.class.should eq(Excel)
  end
end