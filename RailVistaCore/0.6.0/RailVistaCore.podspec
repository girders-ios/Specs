Pod::Spec.new do |s|
  s.name     = 'RailVistaCore'
  s.version = '0.6.0'
  s.summary  = 'Podpsec for the core project of RailVista product'
  s.homepage = 'http://www.netcetera.com'
  s.author   = 'Netcetera'
  s.description = 'This is the podspec which contains the core project for RailVista product'
  s.platform = :ios, '8.0'
  s.source = { :git => 'https://railvista-development.extranet.netcetera.biz/git/nca-395-1-railvista-development' }

  s.libraries = 'z', 'xml2', 'bz2', 'iconv', 'stdc++.6.0.9'
  s.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2',
                 'OTHER_LDFLAGS' => '-framework Security, -framework CFNetwork, -framework SystemConfiguration, -read_only_relocs supress' }
  s.requires_arc = true
  s.license = { :type => 'commercial', :text => %{
                 The copyright to the computer program(s) herein is the property of
                 Netcetera AG, Switzerland. Â The program(s) may be used and/or copied
                 only with the written permission of Netcetera AG or in accordance
                 with the terms and conditions stipulated in the agreement/contract
                 under which the program(s) have been supplied.2
              } }

  s.resources = 'src/common/resources/images/*', 'src/common/xib/**/*.{xib}', 'src/common/resources/tutorials/**/*', 'src/common/resources/launchImages/*'
  s.prefix_header_file = "src/core/main/objc/Prefix.pch"
  s.source_files = 'src/core/**/*.{h,m, mm, c}'
  s.exclude_files = 'src/common/resources/Info.plist'
  s.dependency 'GirdersiOS/All', '1.1.20'
  s.dependency 'Mapbox-iOS-SDK', '1.6.0'
  s.dependency 'pearlchainModule', '1.0.0'
  s.dependency 'MobileVLCKit', '2.2.1'
  s.frameworks = 'CoreLocation', 'CoreGraphics', 'QuartzCore', 'AVFoundation', 'CoreMedia', 'AudioToolbox', 'OpenGLES', 'CoreText'
end