#
# Be sure to run `pod lib lint Reveal.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Reveal'
  s.version          = '0.2.0'
  s.summary          = 'Reveals bits hidden in bitmaps.'

  s.description      = 'Extracting key from image by using stegonagraphy'
  s.homepage         = 'https://extranet.netcetera.biz/bitbucket/projects/VIS070VISE/repos/reveal-ios/'
  s.author           = { "Stojan Dimitrovski" => "stojan.dimitrovski@netcetera.com" }
  s.source           = { 
    :git => 'https://extranet.netcetera.biz/bitbucket/scm/vis070vise/reveal-ios.git',
    :tag => s.version.to_s
  }

  s.ios.deployment_target = '8.0'

  s.source_files = 'Reveal/GRReveal.m', 'Reveal/GRReveal.h', 'Reveal/reveal/*.h'

  s.public_header_files = 'Reveal/GRReveal.h'
  s.frameworks = 'UIKit', 'CoreGraphics'
end
