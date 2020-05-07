#
#  Be sure to run `pod spec lint ThreeDS-SDK.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "ThreeDS_SDK"
  s.version      = "2.3.00"
  s.summary      = "ThreeDS SDK for iOS applications."
  s.description  = "3DS SDK for iOS applications used by merchants"
  s.homepage     = "https://netcetera.com"
  s.author       = 'Netcetera'
  s.license      = "PROPRIETARY"
  s.ios.deployment_target = '10.0'
  s.swift_version = '5'
  s.default_subspec = 'iphoneos'
  s.source       = { :http => "https://3ds-sdk.extranet.netcetera.biz/nca-446-3/dav/ios/release/#{s.version}/ThreeDS_SDK.zip" }
  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '5' }

  s.subspec 'iphoneos' do |iphoneos|
      iphoneos.ios.vendored_frameworks = 'iphoneos/ThreeDS_SDK.framework'
  end

  s.subspec 'universal' do |universal|
      universal.ios.vendored_frameworks = 'universal/ThreeDS_SDK.framework'
  end

end
