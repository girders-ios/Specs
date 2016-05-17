Pod::Spec.new do |s|
  s.name     = 'RailVistaCore'
  s.version = '1.1.0.0'
  s.summary  = 'Podpsec for the core project of RailVista product'
  s.homepage = 'http://www.netcetera.com'
  s.author   = 'Netcetera'
  s.description = 'This is the podspec which contains the core project for RailVista product'
  s.platform = :ios, '8.0'
  s.source = { :git => 'https://railvista-development.extranet.netcetera.biz/git/nca-395-1-railvista-development', :tag => '1.1.0.0' }

  s.libraries = 'z', 'xml2', 'bz2', 'iconv', 'stdc++.6.0.9'
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

  s.resources = 'src/common/resources/images/*', 'src/common/resources/tutorials/**/*', 'src/common/resources/launchImages/*'
  s.prefix_header_file = "src/core/objc/main/Prefix.pch"
  s.source_files = 'src/core/objc/main/**/*.{h,m, mm, c}'
  s.exclude_files = 'src/common/resources/Info.plist', 'src/core/objc/main/RVCoreNavigationCenter.{h,m}', 'src/core/objc/main/RVCoreAppDelegate*.{h,m}', 'src/common/resources/packs/*.*'
  s.dependency 'GirdersiOS/All', '1.1.20'
  s.dependency 'pearlchainModule', '1.0.0'
  s.dependency 'CocoaAsyncSocket', '7.4.2'
  s.dependency 'GirdersiOSPlusMedia', '1.1.1'
  s.dependency 'GirdersiOSPlusAnalytics', '1.2.0'
  s.dependency 'GirdersiOSPlusOfflineMap', '1.2.3'
  s.frameworks = 'CoreLocation', 'CoreGraphics', 'QuartzCore', 'AVFoundation', 'CoreMedia', 'AudioToolbox', 'OpenGLES', 'CoreText'
  s.default_subspec = 'Core'

  s.subspec 'All' do |all|
    all.resources = 'src/common/xib/**/*.{xib}', 'src/common/resources/images/*', 'src/common/resources/tutorials/**/*', 'src/common/resources/launchImages/*'
    all.source_files = 'src/core/objc/**/*.{h,m, mm, c}', 'src/core/objc/main/RVCoreNavigationCenter.{h,m}', 'src/core/objc/main/RVCoreAppDelegate*.{h,m}', 'src/core/objc/features/**/*.{h,m, mm, c}'
    all.dependency 'RailVistaCore/Core', '1.1.0.0'
  end

  s.subspec 'Core' do |core|
    core.resources = 'src/common/resources/images/*', 'src/common/resources/tutorials/**/*', 'src/common/resources/launchImages/*'
    core.prefix_header_file = "src/core/objc/main/Prefix.pch"
    core.source_files = 'src/core/objc/main/**/*.{h,m, mm, c}'
    core.exclude_files = 'src/common/resources/Info.plist', 'src/core/objc/main/RVCoreNavigationCenter.{h,m}', 'src/core/objc/main/RVCoreAppDelegate*.{h,m}', 'src/common/resources/packs/*.*'
  end

  s.subspec 'AccessInfo' do |accessInfo|
    accessInfo.resources = 'src/common/xib/accessInfo/*.{xib}', 'src/common/resources/images/*', 'src/common/resources/tutorials/**/*', 'src/common/resources/launchImages/*'
    accessInfo.source_files = 'src/core/objc/main/**/*.{h,m, mm, c}', 'src/core/objc/features/accessInfo/**/*.{h,m, mm, c}'
    accessInfo.exclude_files = 'src/common/resources/Info.plist', 'src/core/objc/main/RVCoreNavigationCenter.{h,m}', 'src/core/objc/main/RVCoreAppDelegate*.{h,m}', 'src/common/resources/packs/*.*'
    accessInfo.dependency 'RailVistaCore/Core', '1.1.0.0'
  end

  s.subspec 'AudioPlayer' do |audioPlayer|
    audioPlayer.resources = 'src/common/xib/audioPlayer/*.{xib}', 'src/common/resources/images/*', 'src/common/resources/tutorials/**/*', 'src/common/resources/launchImages/*'
    audioPlayer.source_files = 'src/core/objc/main/**/*.{h,m, mm, c}', 'src/core/objc/features/audioPlayer/**/*.{h,m, mm, c}'
    audioPlayer.exclude_files = 'src/common/resources/Info.plist', 'src/core/objc/main/RVCoreNavigationCenter.{h,m}', 'src/core/objc/main/RVCoreAppDelegate*.{h,m}', 'src/common/resources/packs/*.*'
    audioPlayer.dependency 'RailVistaCore/Core', '1.1.0.0'
  end

  s.subspec 'Book' do |book|
    book.resources = 'src/common/xib/reusable/*.{xib}','src/common/xib/book/*.{xib}', 'src/common/resources/images/*', 'src/common/resources/tutorials/**/*', 'src/common/resources/launchImages/*'
    book.source_files = 'src/core/objc/main/**/*.{h,m, mm, c}', 'src/core/objc/features/book/**/*.{h,m, mm, c}'
    book.exclude_files = 'src/common/resources/Info.plist', 'src/core/objc/main/RVCoreNavigationCenter.{h,m}', 'src/core/objc/main/RVCoreAppDelegate*.{h,m}', 'src/common/resources/packs/*.*'
    book.dependency 'RailVistaCore/Core', '1.1.0.0'
  end

  s.subspec 'Highlight' do |highlight|
    highlight.source_files = 'src/core/objc/main/**/*.{h,m, mm, c}', 'src/core/objc/features/book/**/*.{h,m, mm, c}', 'src/core/objc/features/highlight/**/*.{h,m, mm, c}'
    highlight.exclude_files = 'src/common/resources/Info.plist', 'src/core/objc/main/RVCoreNavigationCenter.{h,m}', 'src/core/objc/main/RVCoreAppDelegate*.{h,m}', 'src/common/resources/packs/*.*'
    highlight.dependency 'RailVistaCore/Core', '1.1.0.0'
  end

  s.subspec 'ImageGallery' do |imageGallery|
    imageGallery.resources = 'src/common/xib/imageGallery/*.{xib}', 'src/common/resources/images/*', 'src/common/resources/tutorials/**/*', 'src/common/resources/launchImages/*'
    imageGallery.source_files = 'src/core/objc/main/**/*.{h,m, mm, c}', 'src/core/objc/features/imageGallery/**/*.{h,m, mm, c}'
    imageGallery.exclude_files = 'src/common/resources/Info.plist', 'src/core/objc/main/RVCoreNavigationCenter.{h,m}', 'src/core/objc/main/RVCoreAppDelegate*.{h,m}', 'src/common/resources/packs/*.*'
    imageGallery.dependency 'RailVistaCore/Core', '1.1.0.0'
  end

  s.subspec 'JourneyInformation' do |journeyInfo|
    journeyInfo.resources = 'src/common/xib/journeyInformation/*.{xib}', 'src/common/resources/images/*', 'src/common/resources/tutorials/**/*', 'src/common/resources/launchImages/*'
    journeyInfo.source_files = 'src/core/objc/main/**/*.{h,m, mm, c}', 'src/core/objc/features/journeyInformation/**/*.{h,m, mm, c}'
    journeyInfo.exclude_files = 'src/common/resources/Info.plist', 'src/core/objc/main/RVCoreNavigationCenter.{h,m}', 'src/core/objc/main/RVCoreAppDelegate*.{h,m}', 'src/common/resources/packs/*.*'
    journeyInfo.dependency 'RailVistaCore/Core', '1.1.0.0'
  end

  s.subspec 'LanguageSelection' do |languageSelection|
    languageSelection.resources = 'src/common/xib/languageSelection/*.{xib}', 'src/common/resources/images/*', 'src/common/resources/tutorials/**/*', 'src/common/resources/launchImages/*'
    languageSelection.source_files = 'src/core/objc/main/**/*.{h,m, mm, c}', 'src/core/objc/features/languageSelection/**/*.{h,m, mm, c}'
    languageSelection.exclude_files = 'src/common/resources/Info.plist', 'src/core/objc/main/RVCoreNavigationCenter.{h,m}', 'src/core/objc/main/RVCoreAppDelegate*.{h,m}', 'src/common/resources/packs/*.*'
    languageSelection.dependency 'RailVistaCore/Core', '1.1.0.0'
  end

  s.subspec 'Map' do |map|
    map.resources = 'src/common/xib/map/*.{xib}', 'src/common/resources/images/*', 'src/common/resources/tutorials/**/*', 'src/common/resources/launchImages/*'
    map.source_files = 'src/core/objc/main/**/*.{h,m, mm, c}', 'src/core/objc/features/map/**/*.{h,m, mm, c}'
    map.exclude_files = 'src/common/resources/Info.plist', 'src/core/objc/main/RVCoreNavigationCenter.{h,m}', 'src/core/objc/main/RVCoreAppDelegate*.{h,m}', 'src/common/resources/packs/*.*'
    map.dependency 'RailVistaCore/Core', '1.1.0.0'
  end

  s.subspec 'Menu' do |menu|
    menu.resources = 'src/common/xib/menu/*.{xib}', 'src/common/resources/images/*', 'src/common/resources/tutorials/**/*', 'src/common/resources/launchImages/*'
    menu.source_files = 'src/core/objc/main/**/*.{h,m, mm, c}', 'src/core/objc/features/menu/**/*.{h,m, mm, c}'
    menu.exclude_files = 'src/common/resources/Info.plist', 'src/core/objc/main/RVCoreNavigationCenter.{h,m}', 'src/core/objc/main/RVCoreAppDelegate*.{h,m}', 'src/common/resources/packs/*.*'
    menu.dependency 'RailVistaCore/Core', '1.1.0.0'
  end

  s.subspec 'Notifications' do |notifications|
    notifications.resources = 'src/common/xib/notifications/*.{xib}', 'src/common/resources/images/*', 'src/common/resources/tutorials/**/*', 'src/common/resources/launchImages/*'
    notifications.source_files = 'src/core/objc/main/**/*.{h,m, mm, c}', 'src/core/objc/features/notifications/**/*.{h,m, mm, c}'
    notifications.exclude_files = 'src/common/resources/Info.plist', 'src/core/objc/main/RVCoreNavigationCenter.{h,m}', 'src/core/objc/main/RVCoreAppDelegate*.{h,m}', 'src/common/resources/packs/*.*'
    notifications.dependency 'RailVistaCore/Core', '1.1.0.0'
  end

  s.subspec 'Pearlchain' do |pearlchain|
    pearlchain.resources = 'src/common/xib/pearlchain/*.{xib}', 'src/common/resources/images/*', 'src/common/resources/tutorials/**/*', 'src/common/resources/launchImages/*'
    pearlchain.source_files = 'src/core/objc/main/**/*.{h,m, mm, c}', 'src/core/objc/features/pearlchain/**/*.{h,m, mm, c}'
    pearlchain.exclude_files = 'src/common/resources/Info.plist', 'src/core/objc/main/RVCoreNavigationCenter.{h,m}', 'src/core/objc/main/RVCoreAppDelegate*.{h,m}', 'src/common/resources/packs/*.*'
    pearlchain.dependency 'RailVistaCore/Core', '1.1.0.0'
  end

  s.subspec 'Settings' do |settings|
    settings.resources = 'src/common/xib/settings/*.{xib}', 'src/common/resources/images/*', 'src/common/resources/tutorials/**/*', 'src/common/resources/launchImages/*'
    settings.source_files = 'src/core/objc/main/**/*.{h,m, mm, c}', 'src/core/objc/features/settings/**/*.{h,m, mm, c}'
    settings.exclude_files = 'src/common/resources/Info.plist', 'src/core/objc/main/RVCoreNavigationCenter.{h,m}', 'src/core/objc/main/RVCoreAppDelegate*.{h,m}', 'src/common/resources/packs/*.*'
    settings.dependency 'RailVistaCore/Core', '1.1.0.0'
  end

  s.subspec 'Startup' do |startup|
    startup.resources = 'src/common/xib/startup/*.{xib}', 'src/common/resources/images/*', 'src/common/resources/tutorials/**/*', 'src/common/resources/launchImages/*'
    startup.source_files = 'src/core/objc/main/**/*.{h,m, mm, c}', 'src/core/objc/features/startup/**/*.{h,m, mm, c}'
    startup.exclude_files = 'src/common/resources/Info.plist', 'src/core/objc/main/RVCoreNavigationCenter.{h,m}', 'src/core/objc/main/RVCoreAppDelegate*.{h,m}', 'src/common/resources/packs/*.*'
    startup.dependency 'RailVistaCore/Core', '1.1.0.0'
  end

  s.subspec 'Stream' do |stream|
    stream.resources = 'src/common/xib/stream/*.{xib}', 'src/common/resources/images/*', 'src/common/resources/tutorials/**/*', 'src/common/resources/launchImages/*'
    stream.source_files = 'src/core/objc/main/**/*.{h,m, mm, c}', 'src/core/objc/features/stream/**/*.{h,m, mm, c}'
    stream.exclude_files = 'src/common/resources/Info.plist', 'src/core/objc/main/RVCoreNavigationCenter.{h,m}', 'src/core/objc/main/RVCoreAppDelegate*.{h,m}', 'src/common/resources/packs/*.*'
    stream.dependency 'RailVistaCore/Core', '1.1.0.0'
  end

  s.subspec 'Tutorial' do |tutorial|
    tutorial.resources = 'src/common/xib/menu/*.{xib}', 'src/common/xib/tutorial/*.{xib}', 'src/common/resources/images/*', 'src/common/resources/tutorials/**/*', 'src/common/resources/launchImages/*'
    tutorial.source_files = 'src/core/objc/main/**/*.{h,m, mm, c}', 'src/core/objc/features/tutorial/**/*.{h,m, mm, c}', 'src/core/objc/features/menu/**/*.{h,m, mm, c}'
    tutorial.exclude_files = 'src/common/resources/Info.plist', 'src/core/objc/main/RVCoreNavigationCenter.{h,m}', 'src/core/objc/main/RVCoreAppDelegate*.{h,m}', 'src/common/resources/packs/*.*'
    tutorial.dependency 'RailVistaCore/Core', '1.1.0.0'
  end

  s.subspec 'VideoPlayer' do |videoPlayer|
    videoPlayer.resources = 'src/common/xib/videoPlayer/*.{xib}', 'src/common/resources/images/*', 'src/common/resources/tutorials/**/*', 'src/common/resources/launchImages/*'
    videoPlayer.source_files = 'src/core/objc/main/**/*.{h,m, mm, c}', 'src/core/objc/features/videoPlayer/**/*.{h,m, mm, c}'
    videoPlayer.exclude_files = 'src/common/resources/Info.plist', 'src/core/objc/main/RVCoreNavigationCenter.{h,m}', 'src/core/objc/main/RVCoreAppDelegate*.{h,m}', 'src/common/resources/packs/*.*'
    videoPlayer.dependency 'RailVistaCore/Core', '1.1.0.0'
  end
end
