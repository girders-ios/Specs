Pod::Spec.new do |s|

    s.name             = "ToPayMobileWalletBranding"
    s.version          = "0.0.7"
    s.summary          = "A framework containing all necessary component definitions to brand the ToPayMobileWallet"
    s.homepage         = "https://www.netcetera.com"
    s.license          = {:type => 'Netcetera', :text => 'Netcetera'}
    s.author           = {"Netcetera" => "topay-ios-dev@netcetera.com"}
    s.source           = {:git => "https://extranet.netcetera.biz/bitbucket/scm/nca422tpmw/topay-mobile-wallet-ios.git", :branch => 'develop'}
    s.platform         = :ios, "11.0"
    s.requires_arc     = true
    s.swift_version    = '5.0'
    s.source_files = '**/ToPayMobileWalletBranding/**/*.{swift,h,m}'

end

