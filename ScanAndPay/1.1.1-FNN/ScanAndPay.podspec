Pod::Spec.new do |s|
  s.name     = 'ScanAndPay'
  s.version = '1.1.1-FNN'
  s.summary  = 'ScanAndPay library for iOS.'
  s.homepage = 'https://plaza.netcetera.com/'
  s.author   = 'Netcetera'
  s.description = 'ScanAndPay library for iOS.'
  s.platform = :ios, '7.0'
  s.source = { :svn => 'https://finnova.extranet.netcetera.biz/nca-340-4/svn/tools/scanAndPay' }
  s.source_files = '**/*.{h,m,mm,c}'
  s.xcconfig = { 'OTHER_LDFLAGS' => '-framework AVFoundation, -framework CoreMedia' }
  s.requires_arc = true

  s.license = { :type => 'commercial', :text => %{
                 The copyright to the computer program(s) herein is the property of
                 Netcetera AG, Switzerland.  The program(s) may be used and/or copied
                 only with the written permission of Netcetera AG or in accordance
                 with the terms and conditions stipulated in the agreement/contract
                 under which the program(s) have been supplied.2
              } }
end
