Pod::Spec.new do |s|
  s.name             = 'TablelistMobile'
  s.version          = '6.1.0'
  s.summary          = 'Official Tablelist SDK for iOS and Swift 2.2'
  s.homepage         = 'https://github.com/tablelist/ios-sdk'
  s.license          = 'MIT'
  s.author           = { 'Andrew Barba' => 'andrew@tablelist.com' }
  s.source           = { :git => 'https://github.com/tablelist/ios-sdk.git', :tag => s.version.to_s }

  s.requires_arc     = true

  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'
  s.watchos.deployment_target = '2.0'
  s.tvos.deployment_target = '9.0'

  s.module_name = 'TablelistMobile'
  s.source_files = 'Source/Mobile/**/*.{h,swift}'
  s.public_header_files = 'Source/Mobile/**/*.h'

  s.dependency 'PureLayout', '~> 3.0'
  s.dependency 'TablelistCore', '~> 6.0'
end
