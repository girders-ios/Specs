Pod::Spec.new do |s|

    s.name             = "ToPayMobileWalletUI"
    s.version          = "1.0.8"
    s.summary          = "A framework containing all necessary UI components to be used with ToPayMobileWallet"
    s.homepage         = "https://www.netcetera.com"
    s.license          = {:type => 'Netcetera', :text => 'Netcetera'}
    s.author           = {"Netcetera" => "topay-ios-dev@netcetera.com"}
    s.source           = {:git => "https://extranet.netcetera.biz/bitbucket/scm/nca422tpmw/topay-mobile-wallet-ios.git", :branch => 'develop'}
    s.platform         = :ios, "11.0"
    s.requires_arc     = true
    s.swift_version    = '5.0'
    s.source_files     = '**/ToPayMobileWalletUI/**/*.{swift,h,m}'
    s.resource_bundles = { 'ToPayMobileWalletUI' => ['**/ToPayMobileWalletUI/**/*.{storyboard,xib,xcassets,json,imageset,png,strings}'] }
    s.dependency 'ToPayMobileWallet'
    s.dependency 'ToPayMobileWalletBranding'
end

