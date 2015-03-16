Pod::Spec.new do |s|
  s.name             = "TLKit"
  s.version          = "0.17.3"
  s.summary          = "Tablist iOS Core"

  s.homepage         = "https://github.com/tablelist/ios-kit"
  s.license          = 'MIT'
  s.author           = { "Andrew Barba" => "andrew@tablelist.com" }
  s.source           = { :git => "https://github.com/tablelist/ios-kit.git", :tag => s.version.to_s }

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes'
  s.resource_bundles = {
    'TLKit' => ['Pod/Assets/**/*.*']
  }

  s.public_header_files = 'Pod/**/*.h'
  s.prefix_header_contents = '#import "TLKit.h"'
  s.frameworks = 'UIKit', 'MapKit', 'CoreLocation'

  s.dependency 'AFNetworking', '~> 2.5'
  s.dependency 'SSKeychain', '~> 1.2'
  s.dependency 'PocketSocket', '~> 0.6'
  s.dependency 'Facebook-iOS-SDK', '~> 3.22'
  s.dependency 'SDWebImage', '~> 3.7'
end
