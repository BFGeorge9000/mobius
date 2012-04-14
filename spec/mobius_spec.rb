require 'mobius'

describe 'Mobius module' do
  it 'contains an AUTHKEY constant' do
    Mobius::AUTHKEY.should_not == nil
    Mobius::AUTHKEY.kind_of?(String).should == true
  end
  
  it 'contains a SITE constant' do
    Mobius::SITE.should_not == nil
    Mobius::SITE.kind_of?(String).should == true
  end
end

describe 'Mobilito class' do
  describe '#calling_card' do
    subject{Mobius.new.calling_card}
    it 'returns a hash' do
      subject.kind_of?(Hash).should == true
    end
    
    it 'contains the proper number of keys' do
      subject.keys.count.should == 7
    end
  
    it 'contains a name string' do
      subject[:name].empty?.should == false
      subject[:name].kind_of?(String).should == true
    end
  
    it 'contains an email string' do
      subject[:email].empty?.should == false
      subject[:email].kind_of?(String).should == true
    end
  
    it 'contains a phone number string' do
      subject[:phone].empty?.should == false
      subject[:phone].kind_of?(String).should == true
    end
  
    it 'contains a street address' do
      subject[:address1].empty?.should == false
      subject[:address2].empty?.should == false
      subject[:address1].kind_of?(String).should == true
      subject[:address2].kind_of?(String).should == true
    end
  
    it 'contains a URL string' do
      subject[:url].empty?.should == false
      subject[:url].kind_of?(String).should == true
    end  
  
    it 'contains notes' do
      subject[:notes].empty?.should == false
      subject[:notes].kind_of?(String).should == true
    end
    
    it 'does not contain more data than is reasonable' do
      subject[:name].length.should < 255
      subject[:email].length.should < 255
      subject[:phone].length.should < 50
      subject[:address1].length.should < 255
      subject[:address2].length.should < 255
      subject[:url].length.should < 255
      subject[:notes].length.should < 255
    end
  end
end