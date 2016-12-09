Pod::Spec.new do |s|
  s.name     = 'GirdersiOSPlus'
  s.version = '1.2.1'
  s.summary  = 'Girders Plus for iOS.'
  s.homepage = 'https://plaza.netcetera.com/wiki/display/nca3122/Girders+Plus+for+iOS'
  s.author   = 'Netcetera'
  s.description = 'Girders Plus for iOS.'
  s.platform = :ios, '5.0'
  s.source = { :svn => 'https://girders-ios.extranet.netcetera.biz/nca-312-2/svn/girders-ios-plus/tags/1.2.1' }

  s.source_files = 'src/main/**/*.{h,m, mm, c}'
  s.prefix_header_file = "src/main/objc/GirdersiOSPlus-Prefix.pch"
  s.xcconfig     = { 'HEADER_SEARCH_PATHS' => '"$(SDKROOT)/usr/include/libxml2"' }

  s.requires_arc = true

  s.license = { :type => 'commercial', :text => %{
                 The copyright to the computer program(s) herein is the property of
                 Netcetera AG, Switzerland.  The program(s) may be used and/or copied
                 only with the written permission of Netcetera AG or in accordance
                 with the terms and conditions stipulated in the agreement/contract
                 under which the program(s) have been supplied.2
              } }

  s.resources = "src/main/xib/**/*.xib", "src/main/resources/**/*.png", "src/main/resources/**/*.strings"

  s.dependency 'GirdersiOS/All', '1.1.18'
end
