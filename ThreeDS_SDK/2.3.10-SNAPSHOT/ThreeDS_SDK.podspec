#
#  Be sure to run `pod spec lint ThreeDS-SDK.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "ThreeDS_SDK"
  s.version      = "2.3.10-SNAPSHOT"
  s.summary      = "ThreeDS SDK for iOS applications."
  s.description  = "3DS SDK for iOS applications used by merchants"
  s.homepage     = "https://netcetera.com"
  s.author       = 'Netcetera'
  s.license      = "PROPRIETARY"
  s.ios.deployment_target = '10.0'
  s.swift_version = '5'
  s.source       = { :git => "https://extranet.netcetera.biz/bitbucket/scm/nca4463dss/ios-3ds-skd.git", :branch => 'develop' }

  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '5' }

  s.source_files = 'src/main/**/*.{swift,m,h}'
  s.resources = 'src/main/**/*.xib', 'src/main/**/Configuration.plist', 'src/main/resources/DSCertificates/**/*.*', 'src/main/**/logoImages/*', 'src/main/**/*.storyboard', 'src/main/**/images/*'
  s.public_header_files = 'src/main/**/*.h'
  s.pod_target_xcconfig = { 'SWIFT_INCLUDE_PATHS' => '$(PODS_TARGET_SRCROOT)/CommonCryptoModuleMap/** $(PODS_TARGET_SRCROOT)/src/main/utils/projectModules/**' }
  s.preserve_paths = '$(PODS_TARGET_SRCROOT)/src/main/utils/projectModules/module.modulemap'

end
