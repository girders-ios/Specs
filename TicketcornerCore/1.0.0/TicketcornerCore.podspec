Pod::Spec.new do |s|
  s.name     = 'TicketcornerCore'
  s.version = '1.0.0'
  s.summary  = 'Podpsec for the core project of live event app'
  s.homepage = 'http://www.netcetera.com'
  s.author   = 'Netcetera'
  s.description = 'This is the podspec which contains the core project for live event app'
  s.platform = :ios, '7.0'
  s.source = { :git => 'https://liveeventapp.extranet.netcetera.biz/git/tic-002-4-liveeventapp-ios', :tag => '1.0.0' }

  s.libraries = 'z', 'xml2'
  s.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2',
                 'OTHER_LDFLAGS' => '-framework Security, -framework CFNetwork, -framework SystemConfiguration, -framework Parse, -framework FBSDKLoginKit, -framework FBSDKLoginKit, -framework FBSDKShareKit, -framework SIXMerchantSDK' }
  s.requires_arc = true
  s.license = { :type => 'commercial', :text => %{
                 The copyright to the computer program(s) herein is the property of
                 Netcetera AG, Switzerland.  The program(s) may be used and/or copied
                 only with the written permission of Netcetera AG or in accordance
                 with the terms and conditions stipulated in the agreement/contract
                 under which the program(s) have been supplied.2
              } }

  s.resources = 'src/main/resources/*', 'src/main/xib/*'
  s.prefix_header_file = "src/main/objc/Prefix.pch"
  s.source_files = 'src/main/**/*.{h,m, mm, c}'
  s.dependency 'GirdersiOS/All', '1.1.18'
  s.dependency 'Bolts'
  s.dependency 'PureLayout'
  s.dependency 'TSMessages'
  s.dependency 'GoogleTagManager'
  s.dependency 'GoogleAnalytics'
  s.dependency 'youtube-ios-player-helper'
  s.ios.vendored_frameworks = 'lib/Parse.framework', 'lib/FBSDKCoreKit.framework', 'lib/FBSDKLoginKit.framework', 'lib/FBSDKShareKit.framework', 'lib/SIXMerchantSDK.framework'
  s.frameworks = 'CoreLocation'

end
