Pod::Spec.new do |s|
  s.name     = 'MOBMarketTest'
  s.version = '1.0.0'
  s.summary  = 'Podpsec for the Mobiliar Market test platform'
  s.homepage = 'http://www.netcetera.com'
  s.author   = 'Netcetera'
  s.description = 'This is the root podspec which contains all the subspecs for mobiliar test platform project'
  s.platform = :ios, '7.0'
  s.source = { :git => 'https://mobmarkettest.extranet.netcetera.biz/git/mob-012-2-framework-ios', :tag => '1.0.0' }

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

  s.subspec 'Libraries' do |libraries|
    libraries.resource_bundles = { 'Libraries' => ['Libraries/src/main/**/*.xib', 'Libraries/src/main/resources/*'] }
    libraries.prefix_header_file = "Libraries/src/main/objc/Prefix.pch"
    libraries.source_files = 'Libraries/src/main/**/*.{h,m, mm, c}'
    libraries.dependency 'GirdersiOS/All'
    libraries.dependency 'Mapbox-iOS-SDK'
    libraries.ios.vendored_frameworks = 'Libraries/lib/Parse.framework', 'Libraries/lib/Bolts.framework'
    libraries.xcconfig = { 'OTHER_LDFLAGS' => '-framework Parse, -framework Bolts' }
  end

  s.subspec 'HomeSafety' do |home_safety|
    home_safety.resource_bundles = { 'HomeSafety' => ['modules/HomeSafety/src/main/**/*.xib', 'modules/HomeSafety/src/main/resources/*.png'] }
    home_safety.prefix_header_file = "modules/HomeSafety/src/main/objc/Prefix.pch"
    home_safety.source_files = 'modules/HomeSafety/src/main/**/*.{h,m, mm, c}'
    home_safety.dependency 'MOBMarketTest/Libraries'
  end

  s.subspec 'WeatherWarnings' do |weather_warnings|
    weather_warnings.resource_bundles = { 'WeatherWarnings' => ['modules/WeatherWarnings/src/main/**/*.xib', 'modules/WeatherWarnings/src/main/resources/*.png'] }
    weather_warnings.prefix_header_file = "modules/WeatherWarnings/src/main/objc/Prefix.pch"
    weather_warnings.source_files = 'modules/WeatherWarnings/src/main/**/*.{h,m, mm, c}'
    weather_warnings.dependency 'MOBMarketTest/Libraries'
  end  

  s.subspec 'AppShell' do |appshell|
    appshell.prefix_header_file = "appshell/src/main/objc/Prefix.pch"
    appshell.source_files = 'appshell/src/main/**/*.{h,m, mm, c}'
    appshell.dependency 'GirdersiOS/All'
  end

end
