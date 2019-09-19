Pod::Spec.new do |spec|
  spec.name             = 'PayCardsRecognizerSim'
  spec.version          = '1.1.4-scanFix'
  spec.license          = { type: 'MIT', file: 'LICENSE.md' }
  spec.homepage         = 'https://pay.cards'
  spec.authors          = { 'PAY.CARDS' => 'support@pay.cards' }
  spec.summary          = 'Bank card recognizer for simulator'
  spec.social_media_url = 'https://twitter.com/Pay_Cards'
  spec.source           = { :git => 'https://extranet.netcetera.biz/bitbucket/scm/fdd004fdd0/paycards_ios_source.git', :tag => "#{spec.version}" }
  spec.platform         = :ios, '8.0'
  spec.ios.deployment_target = '8.0'
  spec.requires_arc     = true
  spec.vendored_frameworks = 'PayCardsRecognizerSim.framework'
end