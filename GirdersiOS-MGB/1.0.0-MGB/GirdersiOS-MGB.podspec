Pod::Spec.new do |s|
  s.name     = 'GirdersiOS-MGB'
  s.version = '1.0.0-MGB'
  s.summary  = 'Girders for iOS.'
  s.homepage = 'http://netcetera.com'
  s.author   = 'Netcetera'
  s.description = 'Girders for iOS which is used in the MGB project.'
  s.platform = :ios, '5.0'
  s.source = { :svn => 'https://girders-ios.extranet.netcetera.biz/nca-312-2/svn/tags/1.0.0-MGB' }

  s.source_files = 'src/main/**/*.{h,m, mm, c}'
  s.prefix_header_file = "src/main/objc/girders-ios-Prefix.pch"

  s.libraries = 'z', 'xml2'
  s.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2',
                 'OTHER_LDFLAGS' => '-framework Security, -framework CFNetwork, -framework SystemConfiguration, -lsqlite3.0' }
  s.requires_arc = true

  s.license = { :type => 'commercial', :text => %{
                 The copyright to the computer program(s) herein is the property of
                 Netcetera AG, Switzerland.  The program(s) may be used and/or copied
                 only with the written permission of Netcetera AG or in accordance
                 with the terms and conditions stipulated in the agreement/contract
                 under which the program(s) have been supplied.2
              } }
end
