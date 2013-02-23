require 'rspec'
require_relative 'spec_helper'
require_relative '../lib/Excel/excel'

# Is it possible to grab the PID of the Excel instance created and then ensure it is killed?

describe Office::Excel do
  it 'creates a new Excel document' do
    xl = Office::Excel.new('test.xls')
    xl.class.should eq(Office::Excel)
  end

  context 'when initiated with Excel.open' do
    it 'creates a new Excel object' do
      Office::Excel.open('test.xlsx').class.should eq(Office::Excel)
    end

    it 'raises an error when not passed a path' do
      lambda {Office::Excel.open}.should raise_exception
    end
  end
end