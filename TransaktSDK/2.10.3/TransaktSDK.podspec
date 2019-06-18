#
#  Be sure to run `pod spec lint ThreeDS-SDK.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "TransaktSDK"
  s.version      = "2.10.3"
  s.summary      = "Transakt SDK"
  s.description  = "Transakt SDK"
  s.homepage     = "https://www.entersekt.com"
  s.author       = 'Netcetera'
  s.license      = "PROPRIETARY"
  s.ios.deployment_target = '9.0'
  s.swift_version = '4.2'
  s.source       = { :http => "https://repo.netcetera.com/nexus/repository/thirdparty/com/entersekt/transakt-sdk-ios/#{s.version}/transact-sdk-ios-#{s.version}.zip" }
  s.ios.vendored_frameworks = "TransaktSDK.framework"
   
end
