# Check the presence of default passwords 
control 'admin password check' do
    impact 1.0
    title 'Test default admin credentials'
    desc 'default admin password ...'
    describe yaml ('/usr/share/elasticsearch/plugins/opendistro_security/securityconfig/internal_users.yml') do
        its(['admin','hash']) { should_not eq('$2a$12$VcCDgh2NDk07JGN0rjGbM.Ad41qVR/YFJcgHp0UGns5JDymv..TOG')}
    end
  end

control 'logstash password check' do
    impact 1.0
    title 'Test default logstash credentials'
    desc 'default logstash password ...'
    describe yaml ('/usr/share/elasticsearch/plugins/opendistro_security/securityconfig/internal_users.yml') do
        its(['logstash','hash']) { should_not eq('$2a$12$u1ShR4l4uBS3Uv59Pa2y5.1uQuZBrZtmNfqB3iM/.jL0XoV9sghS2')}
    end
  end

control 'kibanaserver password check' do
    impact 1.0
    title 'Test default kibanaserver credentials'
    desc 'default kibanaserver password ...'
    describe yaml ('/usr/share/elasticsearch/plugins/opendistro_security/securityconfig/internal_users.yml') do
        its(['kibanaserver','hash']) { should_not eq('$2a$12$4AcgAt3xwOWadA5s5blL6ev39OXDNhmOesEoo33eZtrq2N0YrU3H.')}
    end
  end

control 'kibanaro password check' do
    impact 1.0
    title 'Test default kibanaro credentials'
    desc 'default kibanaro password ...'
    describe yaml ('/usr/share/elasticsearch/plugins/opendistro_security/securityconfig/internal_users.yml') do
        its(['kibanaro','hash']) { should_not eq('$2a$12$JJSXNfTowz7Uu5ttXfeYpeYE0arACvcwlPBStB1F.MI7f0U9Z4DGC')}
    end
  end

control 'readall password check' do
    impact 1.0
    title 'Test default readall credentials'
    desc 'default readall password ...'
    describe yaml ('/usr/share/elasticsearch/plugins/opendistro_security/securityconfig/internal_users.yml') do
        its(['readall','hash']) { should_not eq('$2a$12$ae4ycwzwvLtZxwZ82RmiEunBbIPiAmGZduBAjKN0TXdwQFtCwARz2')}
    end
  end

control 'snapshotrestore password check' do
    impact 1.0
    title 'Test default snapshotrestore credentials'
    desc 'default snapshotrestore password ...'
    describe yaml ('/usr/share/elasticsearch/plugins/opendistro_security/securityconfig/internal_users.yml') do
        its(['snapshotrestore','hash']) { should_not eq('$2y$12$DpwmetHKwgYnorbgdvORCenv4NAK8cPUg8AI6pxLCuWf/ALc0.v7W')}
    end
  end

control 'Certificates' do
  impact 0.7
  title 'Check presence of demo certificates'
  describe file('/etc/elasticsearch/esnode-key.pem') do
    its('sha256sum') { should_not eq 'd14aefe70a592d7a29e14f3ff89c3d0070c99e87d21776aa07d333ee877e758f' }
  end
  describe file('/etc/elasticsearch/esnode.pem') do
    its('sha256sum') { should_not eq '54a70016e0837a2b0c5658d1032d7ca32e432c62c55f01a2bf5adcb69a0a7ba9' }
  end
  describe file('/etc/elasticsearch/root-ca.pem') do
    its('sha256sum') { should_not eq '9b13661c073d864c28ad7b13eda67dcb6cbc2f04d116adc7c817c20b4c7ed361' }
  end
  describe file('/etc/elasticsearch/kirk-key.pem') do
    its('sha256sum') { should_not eq 'bdc141ab2272c779d0f242b79063152c49e1b06a2af05e0fd90d505f2b44d5f5' }
  end
  describe file('/etc/elasticsearch/kirk.pem') do
    its('sha256sum') { should_not eq '3e839e2b059036a99ee4f742814995f2fb0ced7e9d68a47851f43a3c630b5324' }
  end
end
