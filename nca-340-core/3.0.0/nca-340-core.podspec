#
# Be sure to run `pod spec lint nca-340-core.podspec' to ensure this is a
# valid spec.
#
# Remove all comments before submitting the spec.
#
Pod::Spec.new do |s|
  s.name     = 'nca-340-core'
  s.version = '3.0.0'
  s.license = { :type => 'commercial', :text => %{
                The copyright to the computer program(s) herein is the property of Netcetera AG, Switzerland.
                The program(s) may be used and/or copied only with the written permission of Netcetera AG or
                in accordance with the terms and conditions stipulated in the agreement/contract under which
                the program(s) have been supplied.
              } }
  s.summary  = 'MobileBanking core product.'
  s.homepage = 'http://www.netcetera.com'
  s.author   = 'Netcetera'

  # Specify the location from where the source should be retreived.
  s.source = { :git => 'https://extranet.netcetera.biz/bitbucket/scm/nca340finn/nca-340-4-ios.git', :branch => "projSwiftPrep" }
  s.description = 'Podfile for MobileBanking core product.'

  # If this Pod runs only on iOS or OS X, then specify that with one of
  # these, or none if it runs on both platforms.
  s.platform = :ios, '9.0'

  # A list of file patterns which select the source files that should be
  # added to the Pods project. If the pattern is a directory then the
  # path will automatically have '*.{h,m,mm,c,cpp}' appended.
  #
  # Alternatively, you can use the FileList class for even more control
  # over the selected files.
  # (See http://rake.rubyforge.org/classes/Rake/FileList.html.)
  #
  s.source_files ='src/core/**/*.{h,m,swift}'
  s.swift_version = '4.2'
  s.exclude_files = 'src/common/resources/OfflineResources.bundle', 'src/common/resources/Info.plist', 'src/core/rolotec/**/*.{h,m}', 'src/common/resources/Images.xcassets/**/*.png'

  # A list of resources included with the Pod. These are copied into the
  # target bundle with a build phase script.
  s.resources = 'src/common/**/*.xib', 'src/common/**/*.png', 'src/common/**/*.html', 'src/common/**/*.strings', 'src/common/**/*.xml', 'src/common/**/*.mustache', 'src/common/**/termsOfUse.txt', 'src/common/**/touchIDTermsOfUse.txt', 'src/common/**/faceIDTermsOfUse.txt', 'src/common/**/GRConfiguration.plist'

  # Specify a list of frameworks that the application needs to link
  # against for this Pod to work.

  # s.public_header_files = 'src/core/**/*.h'
  # Specify a list of libraries that the application needs to link
  # against for this Pod to work.
  #
  # If this Pod uses ARC, specify it like so.
  #
  s.requires_arc = true

  # If this Pod uses ARC, specify it like so.
  #
  s.requires_arc = true

  # If you need to specify any other build settings, add them to the
  # xcconfig hash.
  #
  # Adds the smartscan framework in the Pod target
  s.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2', 
    'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/nca-340-core/lib/"',
    'SWIFT_OBJC_BRIDGING_HEADER' => 'src/core/nca-340-core-Bridging-Header.h'} # , 'OTHER_LDFLAGS' => '-framework smartscan'

  # Finally, specify any Pods that this Pod depends on.
  #
  s.dependency 'GRMustache','7.3.2'
  s.dependency 'JRSwizzle', '1.0'
  s.dependency 'GirdersiOS/All', '1.2.4'
  s.dependency 'ObjectiveLuhn', '1.0.2'
  s.dependency 'ScanAndPay', '1.1.1-FNN'
end
