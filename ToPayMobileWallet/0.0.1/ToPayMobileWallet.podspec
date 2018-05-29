Pod::Spec.new do |s|
    s.name             = "ToPayMobileWallet"
    s.version          = "0.0.1"
    s.summary          = "A Wallet Framework containing components to build a wallet app"
    s.homepage         = "https://www.netcetera.com"
    s.license          = {:type => 'Netcetera', :text => 'Netcetera'}
    s.author           = {"Niklas Mayr" => "niklas.mayr@netcetera.com" }
    s.source           = { :git => "https://extranet.netcetera.biz/bitbucket/scm/nca422tpmw/topay-mobile-wallet-ios.git", :branch => 'develop' }
    s.platform         = :ios, "11.0"
    s.requires_arc     = true
    s.swift_version    = '4.0'
    
    s.subspec 'Core' do |core|
        core.source_files = '**/ToPayMobileWallet/core/**/*.{swift,h,m}'
    end
    
end

