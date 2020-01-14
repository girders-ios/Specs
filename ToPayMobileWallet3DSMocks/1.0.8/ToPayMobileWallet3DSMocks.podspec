Pod::Spec.new do |s|

    s.name             = "ToPayMobileWallet3DSMocks"
    s.version          = "1.0.8"
    s.summary          = "A framework containing all necessary components to use Transakt functionality"
    s.homepage         = "https://www.netcetera.com"
    s.license          = {:type => 'Netcetera', :text => 'Netcetera'}
    s.author           = {"Netcetera" => "topay-ios-dev@netcetera.com"}
    s.source           = {:git => "https://extranet.netcetera.biz/bitbucket/scm/nca422tpmw/topay-mobile-wallet-ios.git", :tag => '1.0.8'}
    s.platform         = :ios, "11.0"
    s.requires_arc     = true
    s.swift_version    = '5.0'
    s.source_files     = '**/ToPayMobileWallet3DSMocks/**/*.{swift,h,m}'

    s.dependency 'ToPayMobileWalletMocks'
    s.dependency 'ToPayMobileWallet3DS'
end
