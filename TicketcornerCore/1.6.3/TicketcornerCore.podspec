Pod::Spec.new do |s|
  s.name     = 'TicketcornerCore'
  s.version = '1.6.3'
  s.summary  = 'Podpsec for the core project of live event app'
  s.homepage = 'http://www.netcetera.com'
  s.author   = 'Netcetera'
  s.description = 'This is the podspec which contains the core project for live event app'
  s.platform = :ios, '8.0'
  s.source = { :git => 'https://liveeventapp.extranet.netcetera.biz/git/tic-002-4-liveeventapp-ios'}

  s.libraries = 'z', 'xml2'
  s.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2',
                 'OTHER_LDFLAGS' => '-framework Security, -framework CFNetwork, -framework SystemConfiguration, -framework FBSDKLoginKit, -framework FBSDKLoginKit, -framework FBSDKShareKit' }
  s.requires_arc = true
  s.license = { :type => 'commercial', :text => %{
                 The copyright to the computer program(s) herein is the property of
                 Netcetera AG, Switzerland.  The program(s) may be used and/or copied
                 only with the written permission of Netcetera AG or in accordance
                 with the terms and conditions stipulated in the agreement/contract
                 under which the program(s) have been supplied.2
              } }

  s.resources = 'src/main/resources/*', 'src/main/xib/*'
  s.exclude_files = 'src/main/**/payment/*.{h,m,xib,storyboard}', 'src/main/objc/AppDelegate+Paymit.{h,m}'
  s.prefix_header_file = "src/main/objc/Prefix.pch"
  s.source_files = 'src/main/**/*.{h,m, mm, c}'
  s.dependency 'GirdersiOS/All', '1.1.25'
  s.dependency 'Bolts', '1.6.0'
  s.dependency 'PureLayout', '3.0.1'
  s.dependency 'GoogleTagManager', '5.0.6'
  s.dependency 'TSMessages', '0.9.12'
  s.dependency 'youtube-ios-player-helper'
  s.dependency 'Firebase/Core', '3.7.0'
  s.dependency 'Firebase/Messaging', '3.7.0'
  s.ios.vendored_frameworks = 'lib/FBSDKCoreKit.framework', 'lib/FBSDKLoginKit.framework', 'lib/FBSDKShareKit.framework'
  s.frameworks = 'CoreLocation'

end
