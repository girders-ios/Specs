#

# Be sure to run `pod spec lint girders-ios.podspec' to ensure this is a
# valid spec.
#
# Remove all comments before submitting the spec.
#
Pod::Spec.new do |s|
  s.name     = 'girders-ios'
  s.version  = '2.4'
  s.summary  = 'Girders for iOS'
  s.homepage = 'https://plaza.netcetera.com/wiki/display/nca3122/Girders+for+iOS'
  s.author   = 'Netcetera'
  s.description = 'Girders for iOS'
  s.platform = :ios, '5.0'
  s.source   = { :svn => 'https://svn.netcetera.biz/svn/playground/zkuvendz/nca-312-2/girders-ios/tags/2.4' }

  s.source_files = FileList['src/main/**/*.{h,m, mm, c}'].
                    exclude(%w(src/main/objc/core/zip/ZipArchive*.{mm,h}
                               src/main/objc/core/zip/minizip/*.{h,c}))

  s.libraries = 'z', 'xml2'
  s.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2' }
  s.requires_arc = true
end
