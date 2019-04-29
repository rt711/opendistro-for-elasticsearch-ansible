# Check the presence of default passwords 
control 'admin password check' do
    impact 1.0
    title 'Test default admin credentials'
    desc 'default admin password ...'
    describe yaml ('templates/internal_users.yml.j2') do
        its(['admin','hash']) { should_not eq('$2a$12$VcCDgh2NDk07JGN0rjGbM.Ad41qVR/YFJcgHp0UGns5JDymv..TOG')}
    end
  end

control 'logstash password check' do
    impact 1.0
    title 'Test default logstash credentials'
    desc 'default logstash password ...'
    describe yaml ('templates/internal_users.yml.j2') do
        its(['logstash','hash']) { should_not eq('$2a$12$u1ShR4l4uBS3Uv59Pa2y5.1uQuZBrZtmNfqB3iM/.jL0XoV9sghS2')}
    end
  end

control 'kibanaserver password check' do
    impact 1.0
    title 'Test default kibanaserver credentials'
    desc 'default kibanaserver password ...'
    describe yaml ('templates/internal_users.yml.j2') do
        its(['kibanaserver','hash']) { should_not eq('$2a$12$4AcgAt3xwOWadA5s5blL6ev39OXDNhmOesEoo33eZtrq2N0YrU3H.')}
    end
  end

control 'kibanaro password check' do
    impact 1.0
    title 'Test default kibanaro credentials'
    desc 'default kibanaro password ...'
    describe yaml ('templates/internal_users.yml.j2') do
        its(['kibanaro','hash']) { should_not eq('$2a$12$JJSXNfTowz7Uu5ttXfeYpeYE0arACvcwlPBStB1F.MI7f0U9Z4DGC')}
    end
  end

control 'readall password check' do
    impact 1.0
    title 'Test default readall credentials'
    desc 'default readall password ...'
    describe yaml ('templates/internal_users.yml.j2') do
        its(['readall','hash']) { should_not eq('$2a$12$ae4ycwzwvLtZxwZ82RmiEunBbIPiAmGZduBAjKN0TXdwQFtCwARz2')}
    end
  end

control 'snapshotrestore password check' do
    impact 1.0
    title 'Test default snapshotrestore credentials'
    desc 'default snapshotrestore password ...'
    describe yaml ('templates/internal_users.yml.j2') do
        its(['snapshotrestore','hash']) { should_not eq('$2y$12$DpwmetHKwgYnorbgdvORCenv4NAK8cPUg8AI6pxLCuWf/ALc0.v7W')}
    end
  end