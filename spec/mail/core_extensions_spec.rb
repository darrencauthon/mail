# encoding: utf-8
require 'spec_helper'

describe Object do

  describe "blank method" do
    it "should say nil is blank" do
      expect(nil).to be_blank
    end

    it "should say false is blank" do
      expect(false).to be_blank
    end

    it "should say true is not blank" do
      expect(true).not_to be_blank
    end

    it "should say an empty array is blank" do
      expect([]).to be_blank
    end

    it "should say an empty hash is blank" do
      expect({}).to be_blank
    end

    it "should say an empty string is blank" do
      expect('').to be_blank
      expect(" ").to be_blank
      a = ''; 1000.times { a << ' ' }
      expect(a).to be_blank
      expect("\t \n\n").to be_blank
    end
  end

  describe "not blank method" do
    it "should say a number is not blank" do
      expect(1).not_to be_blank
    end
    
    it "should say a valueless hash is not blank" do
      expect({:one => nil, :two => nil}).not_to be_blank
    end
    
    it "should say a hash containing an empty hash is not blank" do
      expect({:key => {}}).not_to be_blank
    end
  end

end
