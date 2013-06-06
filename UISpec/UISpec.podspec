Pod::Spec.new do |s|
  s.name     = 'UISpec'
  s.version = '1.1'
  s.summary  = 'UISpec is a Behavior Driven Development framework for the iPhone.'
  s.homepage = 'https://code.google.com/p/uispec/'
  s.author   = ''
  s.description = 'UISpec is a Behavior Driven Development framework for the iPhone.'
  s.platform = :ios, '5.0'
  s.source = { :svn => 'http://uispec.googlecode.com/svn/trunk/' }

  s.source_files = FileList['src/**/*.{h,m, mm, c}']
  s.prefix_header_file = "headers/UISpec_Prefix.pch"

  s.license = { :type => 'commercial', :text => %{
                 The copyright to the computer program(s) herein is the property of
                 Netcetera AG, Switzerland.  The program(s) may be used and/or copied
                 only with the written permission of Netcetera AG or in accordance
                 with the terms and conditions stipulated in the agreement/contract
                 under which the program(s) have been supplied.2
              } }
end
