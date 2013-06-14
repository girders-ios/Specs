Pod::Spec.new do |s|
  s.name     = 'SBBNavEngine'
  s.version = '0.1'
  s.summary  = 'Navigation and map engine for ebb-052-5.'
  s.homepage = 'https://plaza.netcetera.com/wiki/display/sbb0525/sbb-052-5+SBB+Indoor+Navigation'
  s.author   = 'Netcetera'
  s.description = 'Navigation and map engine for sbb-052-5.'
  s.platform = :ios, '5.0'
  s.source = { :svn => 'https://sbb052.extranet.netcetera.biz/sbb-052-5/svn/editor/trunk/src/main/engine/' }

  s.source_files = FileList['**/*.{h,m, mm, c}']
  s.prefix_header_file = "Prefix.pch"

  s.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2' }
  s.requires_arc = true

  s.license = { :type => 'commercial', :text => %{
                 The copyright to the computer program(s) herein is the property of
                 Netcetera AG, Switzerland.  The program(s) may be used and/or copied
                 only with the written permission of Netcetera AG or in accordance
                 with the terms and conditions stipulated in the agreement/contract
                 under which the program(s) have been supplied.2
              } }
end
