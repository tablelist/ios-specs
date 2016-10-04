Pod::Spec.new do |s|
  s.name             = 'TablelistCore'
  s.version          = '7.0.0'
  s.summary          = 'Official Tablelist SDK for Swift 3'
  s.homepage         = 'https://github.com/tablelist/ios-sdk'
  s.license          = 'MIT'
  s.author           = { 'Andrew Barba' => 'andrew@tablelist.com' }
  s.source           = { :git => 'https://github.com/tablelist/ios-sdk.git', :tag => s.version.to_s }

  s.requires_arc     = true

  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'
  s.watchos.deployment_target = '2.0'
  s.tvos.deployment_target = '9.0'

  s.source_files = 'Source/Core/**/*.{h,swift}'
  s.public_header_files = 'Source/Core/**/*.h'

  s.dependency 'Alamofire', '~> 4.0'
  s.dependency 'Bluebird', '~> 1.0'
  s.dependency 'KeychainAccess', '~> 3.0'
  s.dependency 'ObjectMapper', '~> 2.0'
  s.dependency 'RealmSwift', '~> 2.0'
  s.dependency 'Starscream', '~> 2.0'
  s.dependency 'SwiftyJSON', '~> 3.0'
end
