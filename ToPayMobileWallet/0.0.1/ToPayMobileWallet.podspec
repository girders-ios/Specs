Pod::Spec.new do |s|
    s.name             = "ToPayMobileWallet"
    s.version          = "0.0.1"
    s.summary          = "A Wallet Framework containing components to build a wallet app"
    s.homepage         = "https://www.netcetera.com"
    s.license          = {:type => 'Netcetera', :text => 'Netcetera'}
    s.author           = {"Niklas Mayr" => "niklas.mayr@netcetera.com" }
    s.source           = { :git => "https://extranet.netcetera.biz/bitbucket/scm/nca422tpmw/topay-mobile-wallet-ios.git", :tag => s.version }
    s.platform         = :ios, "11.0"
    s.requires_arc     = true
    s.source_files     = '**/ToPayMobileWallet/src/swift/{authentication,architecture,runtimeconfig}/*.{swift,h,m}'
    s.swift_version    = '4.0'

    s.subspec 'Authentication' do |auth|
        auth.source_files = '**/ToPayMobileWallet/src/swift/authentication/*.{swift,h,m}'
    end

    s.subspec 'Architecture' do |arch|
        arch.source_files = '**/ToPayMobileWallet/src/swift/architecture/*.{swift,h,m}'
    end

    s.subspec 'RuntimeConfig' do |runtime|
        runtime.source_files = '**/ToPayMobileWallet/src/swift/runtimeConfig/*.{swift,h,m}'
    end
end
