Pod::Spec.new do |s|

    s.name             = "ToPayMobileWallet"
    s.version          = "1.0.13"
    s.summary          = "A Wallet Framework containing components to build a wallet app"
    s.homepage         = "https://www.netcetera.com"
    s.license          = {:type => 'Netcetera', :text => 'Netcetera'}
    s.author           = {"Netcetera" => "topay-ios-dev@netcetera.com" }
    s.source           = { :git => "https://extranet.netcetera.biz/bitbucket/scm/nca422tpmw/topay-mobile-wallet-ios.git", :branch => 'develop'}
    s.platform         = :ios, "11.0"
    s.requires_arc     = true
    s.swift_version    = '5.0'
    s.resource_bundles = { 'ToPayMobileWallet' => ['**/ToPayMobileWallet/**/*.{json,trm,rb}'] }
    s.source_files = '**/ToPayMobileWallet/**/*.{swift,h,m}'
    s.resources = ["ToPayMobileWallet/tpmw-transaction/resources/*"]
    s.dependency 'JOSESwift', '2.0.0'
    s.dependency 'GirdersSwift'
    s.dependency 'Sentry', '4.4.3'
end

