Pod::Spec.new do |s|
  s.name     = 'GirdersSwift'
  s.version = '0.1.1'
  s.summary  = 'Girders for iOS, written in Swift.'
  s.homepage = 'http://www.netcetera.com'
  s.author   = 'Netcetera'
  s.description = 'A library that greatly reduces development time for iOS applications.'
  s.platform = :ios, '9.0'
  s.source = { :git => 'https://extranet.netcetera.biz/bitbucket/projects/NCA312IOS/repos/girders-swift' }

  s.libraries = 'z', 'xml2'
  s.xcconfig = { 'OTHER_LDFLAGS' => '-framework Security, -framework CFNetwork, -framework SystemConfiguration, -lsqlite3.0' }
  s.requires_arc = true

  s.license = { :type => 'commercial', :text => %{
                 The copyright to the computer program(s) herein is the property of
                 Netcetera AG, Switzerland.  The program(s) may be used and/or copied
                 only with the written permission of Netcetera AG or in accordance
                 with the terms and conditions stipulated in the agreement/contract
                 under which the program(s) have been supplied.2
              } }


  s.source_files = 'src/main/**/*.{swift}'
  s.dependency 'PromiseKit'
end
