Pod::Spec.new do |s|
  s.name     = 'HomeSafety'
  s.version = '1.0.1'
  s.summary  = 'HomeSafety module'
  s.homepage = 'http://www.netcetera.com'
  s.author   = 'Netcetera'
  s.description = 'The HomeSafety module for the Mobiliar Test platform project'
  s.platform = :ios, '7.0'
  s.source = { :git => 'https://mobmarkettest.extranet.netcetera.biz/git/mob-012-2-framework-ios', :tag => '1.0.1' }

  s.libraries = 'z', 'xml2'
  s.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2',
                 'OTHER_LDFLAGS' => '-framework Security, -framework CFNetwork, -framework SystemConfiguration, -lsqlite3.0' }
  s.requires_arc = true
  s.resource_bundles = { 'HomeSafety' => ['modules/HomeSafety/src/main/**/*.xib', 'modules/HomeSafety/src/main/resources/*.png'] }

  s.prefix_header_file = "modules/HomeSafety/src/main/objc/Prefix.pch"
  s.source_files = 'modules/HomeSafety/src/main/**/*.{h,m, mm, c}'
  s.dependency 'GirdersiOS/All'
  s.dependency 'Libraries'
  
  s.license = { :type => 'commercial', :text => %{
                 The copyright to the computer program(s) herein is the property of
                 Netcetera AG, Switzerland.  The program(s) may be used and/or copied
                 only with the written permission of Netcetera AG or in accordance
                 with the terms and conditions stipulated in the agreement/contract
                 under which the program(s) have been supplied.2
              } }
end
