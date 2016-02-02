Pod::Spec.new do |s|
  s.name     = 'GirdersiOSPlusMediaFoundation'
  s.version = '1.0'
  s.summary  = 'Podspec for the AVFoundation implementation of GirdersiOSPlusMedia'
  s.homepage = 'http://www.netcetera.com'
  s.author   = 'Netcetera'
  s.description = 'This is the podspec which contains the AVFoundation implementation of GirdersiOSPlusMedia'
  s.platform = :ios, '8.0'
  s.source = { :svn => 'https://girders-ios.extranet.netcetera.biz/nca-312-2/svn/girders-ios-plus-media/foundation/tags/1.0' }

  s.libraries = 'z', 'xml2'
  s.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2',
                 'OTHER_LDFLAGS' => '-framework Security, -framework CFNetwork, -framework SystemConfiguration, -framework AVFoundation' }
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
  s.exclude_files = 'src/main/resources/Info.plist', 'src/main/resources/GRConfiguration.plist'
  s.dependency 'GirdersiOSPlusMedia', '1.0'
end