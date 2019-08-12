Pod::Spec.new do |s|

    s.name             = "ToPayMobileWallet3DSIdentification"
    s.version          = "0.0.8"
    s.summary          = "A framework containing all necessary components to use Transakt functionality"
    s.homepage         = "https://www.netcetera.com"
    s.license          = {:type => 'Netcetera', :text => 'Netcetera'}
    s.author           = {"Netcetera" => "topay-ios-dev@netcetera.com"}
    s.source           = {:git => "https://extranet.netcetera.biz/bitbucket/scm/nca422tpmw/topay-mobile-wallet-ios.git", :branch => 'develop'}
    s.platform         = :ios, "11.0"
    s.requires_arc     = true
    s.swift_version    = '5.0'
    s.source_files     = '**/ToPayMobileWallet3DSIdentification/**/*.{swift,h,m}'
    s.resource_bundles = { 'ToPayMobileWallet3DSIdentification' => ['**/ToPayMobileWallet3DSIdentification/**/*.{storyboard,xib,xcassets,json,imageset,png,strings}', 
    												  '**/ToPayMobileWallet3DSIdentification/**/*.xcassets'] }
    s.dependency 'ToPayMobileWallet3DS'
    s.dependency 'ToPayMobileWalletUI'
    s.dependency 'ToPayMobileWallet'
    s.dependency 'ToPayMobileWalletBranding'
end
