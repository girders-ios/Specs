Pod::Spec.new do |s|

    s.name             = "ToPayMobileWallet"
    s.version          = "0.0.2"
    s.summary          = "A Wallet Framework containing components to build a wallet app"
    s.homepage         = "https://www.netcetera.com"
    s.license          = {:type => 'Netcetera', :text => 'Netcetera'}
    s.author           = {"Niklas Mayr" => "niklas.mayr@netcetera.com" }
    s.source           = { :git => "https://extranet.netcetera.biz/bitbucket/scm/nca422tpmw/topay-mobile-wallet-ios.git", :branch => 'develop'}
    s.platform         = :ios, "11.0"
    s.requires_arc     = true
    s.swift_version    = '4.0'
    
    s.subspec 'Core' do |core|
        core.source_files = '**/ToPayMobileWallet/core/**/*.{swift,h,m}'
        core.dependency 'ToPayMobileWallet/Web'
    end

    s.subspec 'Web' do |web|
        web.source_files = '**/ToPayMobileWallet/web/**/*.{swift,h,m}'
        web.dependency 'GirdersSwift'
    end

    s.subspec 'Dependencies' do |dependencies|
        dependencies.source_files = '**/ToPayMobileWallet/dependencies/**/*.{swift,h,m}'
        dependencies.dependency 'ToPayMobileWallet/Core'
    end
    
end

