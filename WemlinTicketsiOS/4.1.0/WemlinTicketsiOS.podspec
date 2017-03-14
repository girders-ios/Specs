#
#  Be sure to run `pod spec lint MobileTicketingCore.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help  people to find your library, and whilst it
  #  can feel  like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "WemlinTicketsiOS"
  s.version      = '4.1.0'
  s.summary      = "Core project for mobile ticketing."

  s.description  = "Core project for the mobile ticketing applications."

  s.homepage     = "http://www.netcetera.com"
  # s.screenshots  = "TBD"


  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Licensing your code is important. See http://choosealicense.com for more info.
  #  CocoaPods will detect a license file if there is a named LICENSE*
  #  Popular ones are 'MIT', 'BSD' and 'Apache License, Version 2.0'.
  #

  s.license      = { :type => 'commercial', :text => %{
                     The copyright to the computer program(s) herein is the property of
                     Netcetera AG, Switzerland. The program(s) may be used and/or copied
                     only with the written permission of Netcetera AG or in accordance
                     with the terms and conditions stipulated in the agreement/contract
                     under which the program(s) have been supplied.2
                    } }


  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the authors of the library, with email addresses. Email addresses
  #  of the authors are extracted from the SCM log. E.g. $ git log. CocoaPods also
  #  accepts just a name if you'd rather not provide an email address.
  #
  #  Specify a social_media_url where others can refer to, for example a twitter
  #  profile URL.
  #

  s.author             = { "Netcetera" => "http://www.netcetera.com" }

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If this Pod runs only on iOS or OS X, then specify the platform and
  #  the deployment target. You can optionally include the target after the platform.
  #

  s.platform     = :ios, "8.0"

  #  When using multiple platforms
  # s.ios.deployment_target = "5.0"
  # s.osx.deployment_target = "10.7"


  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the location from where the source should be retrieved.
  #  Supports git, hg, bzr, svn and HTTP.
  #

  s.source = { :svn => 'https://wemlin-tickets.extranet.netcetera.biz/nca-376-8/svn/mobile/ios/core/tags/4.1.0' }

  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it includes source code. For source files
  #  giving a folder will include any h, m, mm, c & cpp files. For header
  #  files it will include any header in the folder.
  #  Not including the public_header_files will make all headers public.
  #

  s.source_files  = "src/main/**/*.{h,m}"
  s.exclude_files = "src/main/resources/pod_ignore/**/*.*", "src/main/objc/main.m", "src/main/resources/core"

  s.public_header_files = "src/main/**/*.h", "lib/DTiPL/include/*.h"

  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  A list of resources included with the Pod. These are copied into the
  #  target bundle with a build phase script. Anything else will be cleaned.
  #  You can preserve files from being cleaned, please don't preserve
  #  non-essential files like tests, examples and documentation.
  #

  # s.resource  = "icon.png"
  s.resources = "src/main/resources/**/*.*", "lib/DTiPL/resources/*.*", "src/main/xib/**/*.*"

  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"


  # ――― Project Linking  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

  # s.framework  = "SomeFramework"
  s.frameworks = "Security", "CoreLocation", "CoreGraphics", "MobileCoreServices", "MessageUI"

  s.ios.preserve_paths = "lib/DTiPL/include/*.h"
  s.vendored_libraries = "lib/DTiPL/lib/libdtipl.a"
  s.libraries = "xml2", "dtipl"

  # s.library   = "iconv"
  # s.libraries = "iconv", "xml2"


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

  s.requires_arc = true

  s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2 ${PODS_ROOT}/#{s.name}/lib/DTiPL/include"}

  s.prefix_header_file = "src/main/objc/Prefix.pch"

  s.dependency "GirdersiOS/All", '1.1.25'
  s.dependency "Reachability"
  s.dependency "GoogleAnalytics", '3.17.0'
  s.dependency "DACircularProgress", '2.3.1'

end
