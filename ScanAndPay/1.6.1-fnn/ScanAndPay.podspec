Pod::Spec.new do |s|
  s.name     = 'ScanAndPay'
  s.version = '1.6.1-fnn'
  s.summary  = 'ScanAndPay library for iOS.'
  s.homepage = 'https://plaza.netcetera.com/'
  s.author   = 'Netcetera'
  s.description = 'ScanAndPay library for iOS.'
  s.platform = :ios, '7.0'
  s.source = { :git => 'https://extranet.netcetera.biz/bitbucket/scm/nca339moba/scan-and-pay-ios.git', :branch => 'scan_and_pay_1.6.1_fnn' }
  s.source_files = ['core/src/**/*.{c,h}', 'ios-lib/src/ScanAndPayQR/**/*.{m,h}']
  
  s.header_dir = 'ScanAndPayQR'
  s.frameworks = 'AVFoundation', 'CoreMedia'
  s.requires_arc = true
  s.static_framework = false

  s.license = { :type => 'commercial', :text => %{
                 The copyright to the computer program(s) herein is the property of
                 Netcetera AG, Switzerland.  The program(s) may be used and/or copied
                 only with the written permission of Netcetera AG or in accordance
                 with the terms and conditions stipulated in the agreement/contract
                 under which the program(s) have been supplied.} 
              }
end