require File.dirname(__FILE__) + '/../spec_helper'
require 'contacts/google'
require 'uri'

describe Contacts::Google, '.authentication_url' do
  it 'generates a URL for target with default parameters' do
    uri = parse_authentication_url('http://example.com/invite')
    
    uri.host.should == 'www.google.com'
    uri.scheme.should == 'https'
    uri.query.split('&').sort.should == [
      'next=http%3A%2F%2Fexample.com%2Finvite',
      'scope=http%3A%2F%2Fwww.google.com%2Fm8%2Ffeeds%2Fcontacts%2F',
      'secure=0',
      'session=0'
      ]
  end

  it 'should handle boolean parameters' do
    pairs = parse_authentication_url(nil, :secure => true, :session => true).query.split('&')
    
    pairs.should include('secure=1')
    pairs.should include('session=1')
  end

  it 'skips parameters that have nil value' do
    query = parse_authentication_url(nil, :secure => nil).query
    query.should_not include('next')
    query.should_not include('secure')
  end

  it 'should be able to exchange one-time for session token' do
    connection = mock_connection
    response = mock_response
    Net::HTTP.expects(:new).with('www.google.com', 443).returns(connection)
    connection.expects(:start)
    connection.expects(:get).with('/accounts/AuthSubSessionToken', 'Authorization' => %(AuthSub token="dummytoken")).returns(response)
    response.expects(:body).returns("Token=G25aZ-v_8B\nExpiration=20061004T123456Z")

    Contacts::Google.session_token('dummytoken').should == 'G25aZ-v_8B'
  end
  
  it "should support client login" do
    connection = mock_connection
    response = mock_response
    Net::HTTP.expects(:new).with('www.google.com', 443).returns(connection)
    connection.expects(:start)
    connection.expects(:post).with('/accounts/ClientLogin', query_string('accountType' => 'GOOGLE',
      'service' => 'cp', 'source' => 'Contacts-Ruby',
      'Email' => 'mislav@example.com', 'Passwd' => 'dummyPassword')).returns(response)
    response.expects(:body).returns("SID=klw4pHhL_ry4jl6\nLSID=Ij6k-7Ypnc1sxm\nAuth=EuoqMSjN5uo-3B")

    Contacts::Google.client_login('mislav@example.com', 'dummyPassword').should == 'EuoqMSjN5uo-3B'
  end
  
  it "should support token authentication after client login" do
    @gmail = Contacts::Google.new('dummytoken', 'default', true)
    @gmail.headers['Authorization'].should == 'GoogleLogin auth="dummytoken"'
  end

  def parse_authentication_url(*args)
    URI.parse Contacts::Google.authentication_url(*args)
  end
end
