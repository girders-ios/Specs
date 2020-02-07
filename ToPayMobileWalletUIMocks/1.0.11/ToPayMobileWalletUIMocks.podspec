Pod::Spec.new do |s|

    s.name             = "ToPayMobileWalletUIMocks"
    s.version          = "1.0.11"
    s.summary          = "A framework containing predefined mocked components of the tpmw UI framework."
    s.homepage         = "https://www.netcetera.com"
    s.license          = {:type => 'Netcetera', :text => 'Netcetera'}
    s.author           = {"Netcetera" => "topay-ios-dev@netcetera.com"}
    s.source           = {:git => "https://extranet.netcetera.biz/bitbucket/scm/nca422tpmw/topay-mobile-wallet-ios.git", :branch => 'develop'}
    s.platform         = :ios, "11.0"
    s.requires_arc     = true
    s.swift_version    = '5.0'
    s.source_files = '**/ToPayMobileWalletUIMocks/**/*.{swift,h,m}'
    s.dependency 'ToPayMobileWalletMocks'
    s.dependency 'ToPayMobileWalletUI'
    s.dependency 'ToPayMobileWalletBranding'
    s.dependency 'GirdersSwift'

end

