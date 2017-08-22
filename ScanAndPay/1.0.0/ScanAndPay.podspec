Pod::Spec.new do |s|
  s.name     = 'ScanAndPay'
  s.version = '1.0.0'
  s.summary  = 'ScanAndPay library for iOS.'
  s.homepage = 'https://plaza.netcetera.com/'
  s.author   = 'Netcetera'
  s.description = 'ScanAndPay library for iOS.'
  s.platform = :ios, '8.0'
  s.source = { :svn => 'https://extranet.netcetera.biz/bitbucket/scm/mgb013mmba/scan-and-pay.git' }

  s.source_files = 'src/main/**/*.{h,m, mm, c}'

  s.libraries = 'z', 'xml2'
  s.xcconfig = { 'OTHER_LDFLAGS' => '-framework AVFoundation, -framework CoreMedia' }
  s.requires_arc = true

  s.license = { :type => 'commercial', :text => %{
                 The copyright to the computer program(s) herein is the property of
                 Netcetera AG, Switzerland.  The program(s) may be used and/or copied
                 only with the written permission of Netcetera AG or in accordance
                 with the terms and conditions stipulated in the agreement/contract
                 under which the program(s) have been supplied.2
              } }
end
