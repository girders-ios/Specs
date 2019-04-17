Pod::Spec.new do |s|

    s.name             = "ToPayMobileWallet"
    s.version          = "0.0.2"
    s.summary          = "A Wallet Framework containing components to build a wallet app"
    s.homepage         = "https://www.netcetera.com"
    s.license          = {:type => 'Netcetera', :text => 'Netcetera'}
    s.author           = {"Netcetera" => "topay-ios-dev@netcetera.com" }
    s.source           = { :git => "https://extranet.netcetera.biz/bitbucket/scm/nca422tpmw/topay-mobile-wallet-ios.git", :tag => '0.0.2' }
    s.platform         = :ios, "11.0"
    s.requires_arc     = true
    s.swift_version    = '4.0'
    
    s.subspec 'Core' do |core|
        core.source_files = '**/ToPayMobileWallet/core/**/*.{swift,h,m}'
        core.dependency 'ToPayMobileWallet/Web'
        core.dependency 'ToPayMobileWallet/Mws'
    end

    s.subspec 'Web' do |web|
        web.source_files = '**/ToPayMobileWallet/web/**/*.{swift,h,m}'
        web.dependency 'GirdersSwift'
    end

    s.subspec 'Mws' do |mws|
        mws.source_files = '**/ToPayMobileWallet/tpmw-mws/**/*.{swift,h,m}'
        mws.dependency 'GirdersSwift'
    end

    s.subspec 'Tpmw-transaction' do |tpmwTransaction|
        tpmwTransaction.source_files = '**/ToPayMobileWallet/tpmw-transaction/**/*.{swift,h,m}'
        tpmwTransaction.dependency 'ToPayMobileWallet/Core'
    end

    s.subspec 'Dependencies' do |dependencies|
        dependencies.source_files = '**/ToPayMobileWallet/dependencies/**/*.{swift,h,m}'
        dependencies.dependency 'ToPayMobileWallet/Core'
    end
    
end
