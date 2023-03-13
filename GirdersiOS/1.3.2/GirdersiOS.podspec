Pod::Spec.new do |s|
  s.name     = 'GirdersiOS'
  s.version = '1.3.2'
  s.summary  = 'Girders for iOS.'
  s.homepage = 'http://www.netcetera.com'
  s.author   = 'Netcetera'
  s.description = 'A library that greatly reduces development time for iOS applications.'
  s.platform = :ios, '8.0'
  s.source = { :git => 'https://extranet.netcetera.biz/bitbucket/scm/nca312ios/girders-ios.git', :branch => "VIS070-19169-Enable-storing-of-public-key-in-secure-storage-multiple-times" }

  s.libraries = 'z', 'xml2'
  s.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2',
                 'OTHER_LDFLAGS' => '-framework Security, -framework CFNetwork, -framework SystemConfiguration, -lsqlite3.0' }
  s.requires_arc = true

  s.license = { :type => 'commercial', :text => %{
                 The copyright to the computer program(s) herein is the property of
                 Netcetera AG, Switzerland.  The program(s) may be used and/or copied
                 only with the written permission of Netcetera AG or in accordance
                 with the terms and conditions stipulated in the agreement/contract
                 under which the program(s) have been supplied.2
              } }

  s.subspec 'All' do |core|
    core.prefix_header_file = "src/main/objc/girders-ios-Prefix.pch"
    core.source_files = 'src/main/**/*.{h,m, mm, c}'
    core.exclude_files = 'src/main/objc/ghunitmigration/*.{h,m}'
    core.dependency 'SSZipArchive', '1.0.1'
    core.dependency 'NSJSONSerialization-NSNullRemoval', '1.0.1'
  end

  s.subspec 'XCTest' do |xctest|
    xctest.dependency 'GirdersiOS/Migration'
  end

  s.subspec 'Migration' do |migration|
    migration.xcconfig = { 'OTHER_LDFLAGS' => '-framework XCTest',
                           'FRAMEWORK_SEARCH_PATHS' => '$(PLATFORM_DIR)/Developer/Library/Frameworks' }
    migration.frameworks = 'XCTest'
    migration.prefix_header_file = "src/main/objc/migration-Prefix.pch"
    migration.source_files = 'src/main/objc/ghunitmigration/*.{h,m}'
    migration.requires_arc = true
  end
end
