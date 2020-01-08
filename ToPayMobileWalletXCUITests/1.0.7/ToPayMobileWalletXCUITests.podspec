Pod::Spec.new do |s|

    s.name             = "ToPayMobileWalletXCUITests"
    s.version          = "1.0.7"
    s.summary          = "A framework containing all necessary components to use XCUI tests from the product"
    s.homepage         = "https://www.netcetera.com"
    s.license          = {:type => 'Netcetera', :text => 'Netcetera'}
    s.author           = {"Netcetera" => "topay-ios-dev@netcetera.com"}
    s.source           = {:git => "https://extranet.netcetera.biz/bitbucket/scm/nca422tpmw/topay-mobile-wallet-ios.git", :tag => '1.0.7'}
    s.platform         = :ios, "11.0"
    s.requires_arc     = true
    s.swift_version    = '5.0'
    s.source_files     = '**/ToPayMobileWalletXCUITests/**/*.{swift}'
    s.dependency 'ToPayMobileWalletUI'
    s.static_framework = true
    s.ios.frameworks = 'XCTest'
    s.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-ObjC' }

end
