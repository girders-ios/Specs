Pod::Spec.new do |s|

    s.name             = "ToPayMobileWalletBrandingMocks"
    s.version          = "0.0.7"
    s.summary          = "A framework containing predefined mocked components of the tpmw branding framework."
    s.homepage         = "https://www.netcetera.com"
    s.license          = {:type => 'Netcetera', :text => 'Netcetera'}
    s.author           = {"Netcetera" => "topay-ios-dev@netcetera.com"}
    s.source           = {:git => "https://extranet.netcetera.biz/bitbucket/scm/nca422tpmw/topay-mobile-wallet-ios.git", :tag => '0.0.7'}
    s.platform         = :ios, "11.0"
    s.requires_arc     = true
    s.swift_version    = '5.0'
    s.source_files = '**/ToPayMobileWalletBrandingMocks/**/*.{swift,h,m}'
    s.dependency 'ToPayMobileWallet'
    s.dependency 'ToPayMobileWalletBranding'

end

