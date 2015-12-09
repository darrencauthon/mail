
require 'spec_helper'

describe 'core_extensions/string' do

  describe "to_crlf" do

    it "should change a single LF to CRLF" do
      expect("\n".to_crlf).to eq "\r\n"
    end

    it "should change multiple LF to CRLF" do
      expect("\n\n".to_crlf).to eq "\r\n\r\n"
    end

    it "should change a single CR to CRLF" do
      expect("\r".to_crlf).to eq "\r\n"
    end

    it "should not change CRLF" do
      expect("\r\n".to_crlf).to eq "\r\n"
    end

    it "should not change multiple CRLF" do
      expect("\r\n\r\n".to_crlf).to eq "\r\n\r\n"
    end

    it "should handle a mix" do
      expect("\r \n\r\n".to_crlf).to eq "\r\n \r\n\r\n"
    end
  end

  describe 'constantize' do
    it 'should converts string to constant' do
      expect("Kernel".constantize).to eq Kernel
    end
  end

end
