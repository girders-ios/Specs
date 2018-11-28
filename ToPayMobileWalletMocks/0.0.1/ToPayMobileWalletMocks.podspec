Pod::Spec.new do |s|

    s.name             = "ToPayMobileWalletMocks"
    s.version          = "0.0.1"
    s.summary          = "A framework containing predefined mocked components of the tpmw framework."
    s.homepage         = "https://www.netcetera.com"
    s.license          = {:type => 'Netcetera', :text => 'Netcetera'}
    s.author           = {"Eduard Berbecaru" => "eduard.berbecaru@netcetera.com"}
    s.source           = {:git => "https://extranet.netcetera.biz/bitbucket/scm/nca422tpmw/topay-mobile-wallet-ios.git", :branch => 'develop'}
    s.platform         = :ios, "11.0"
    s.requires_arc     = true
    s.swift_version    = '4.0'
    s.source_files = '**/ToPayMobileWalletMocks/**/*.{swift,h,m}'
    s.dependency 'ToPayMobileWallet'
    s.dependency 'GirdersSwift'

end

