Pod::Spec.new do |s|
  s.name     = 'ScanAndPay'
  s.version = '2.0.0-framework'
  s.summary  = 'ScanAndPay library for iOS.'
  s.homepage = 'https://plaza.netcetera.com/'
  s.author   = 'Netcetera'
  s.description = 'ScanAndPay library for iOS.'
  s.platform = :ios, '10.0'
  s.source = { :git => 'https://extranet.netcetera.biz/bitbucket/scm/nca339moba/scan-and-pay-ios.git', :branch => 'scan_and_pay_2.0_framework', :tag => '2.0.0' }
  s.source_files = '**/*.{h,m,mm,c, framework}'
#   s.requires_arc = true

  s.license = { :type => 'commercial', :text => %{
                 The copyright to the computer program(s) herein is the property of
                 Netcetera AG, Switzerland.  The program(s) may be used and/or copied
                 only with the written permission of Netcetera AG or in accordance
                 with the terms and conditions stipulated in the agreement/contract
                 under which the program(s) have been supplied.2
              } }
  
  s.vendored_frameworks = "ScanAndPayQR.framework"
end
