Pod::Spec.new do |s|

    s.name             = "ToPayMobileWalletUI"
    s.version          = "0.0.2"
    s.summary          = "A framework containing all necessary UI components to be used with ToPayMobileWallet"
    s.homepage         = "https://www.netcetera.com"
    s.license          = {:type => 'Netcetera', :text => 'Netcetera'}
    s.author           = {"Jan Brunner" => "jan.brunner@netcetera.com"}
    s.source           = {:git => "https://extranet.netcetera.biz/bitbucket/scm/nca422tpmw/topay-mobile-wallet-ios.git", :branch => 'develop'}
    s.platform         = :ios, "11.0"
    s.requires_arc     = true
    s.swift_version    = '4.0'
    s.source_files     = '**/ToPayMobileWalletUI/**/*.{swift,h,m}'
    s.resource_bundles = { 'ToPayMobileWalletUI' => ['**/ToPayMobileWalletUI/**/*.{storyboard,xib,xcassets,json,imageset,png,strings}'] }
    s.dependency 'ToPayMobileWalletBranding'
    s.dependency 'ToPayMobileWallet'

end

