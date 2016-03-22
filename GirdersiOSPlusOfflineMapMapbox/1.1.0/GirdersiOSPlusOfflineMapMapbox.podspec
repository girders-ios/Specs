Pod::Spec.new do |s|
  s.name     = 'GirdersiOSPlusOfflineMapMapbox'
  s.version = '1.1.0'
  s.summary  = 'Podpsec for the library for Mapbox implementation of GirdersiOSPlusOflineMap.'
  s.homepage = 'http://www.netcetera.com'
  s.author   = 'Netcetera'
  s.description = 'This is the podspec which contains the library for Mapbox implementation of GirdersiOSPlusOflineMap'
  s.platform = :ios, '8.0'
  s.source = { :svn => 'https://girders-ios.extranet.netcetera.biz/nca-312-2/svn/girders-ios-plus-offline-map/mapbox/tags/1.1.0' }

  s.libraries = 'z', 'xml2', 'bz2'
  s.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2',
                 'OTHER_LDFLAGS' => '-framework Security, -framework CFNetwork, -framework SystemConfiguration' }
  s.requires_arc = true
  s.license = { :type => 'commercial', :text => %{
                 The copyright to the computer program(s) herein is the property of
                 Netcetera AG, Switzerland. Â The program(s) may be used and/or copied
                 only with the written permission of Netcetera AG or in accordance
                 with the terms and conditions stipulated in the agreement/contract
                 under which the program(s) have been supplied.2
              } }

  s.prefix_header_file = "src/main/objc/Prefix.pch"
  s.source_files = 'src/main/objc/**/*.{h,m, mm, c}'
  s.exclude_files = 'src/main/resources/Info.plist'
  s.dependency 'Mapbox-iOS-SDK', '1.6.0'
  s.dependency 'GirdersiOSPlusOfflineMap', '1.1.0'
  s.frameworks = 'CoreLocation'
end