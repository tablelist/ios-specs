Pod::Spec.new do |s|
  s.name             = "TLKit"
  s.version          = "2.4.0"
  s.summary          = "Tablist iOS Core"

  s.homepage         = "https://github.com/tablelist/ios-kit"
  s.license          = 'MIT'
  s.author           = { "Andrew Barba" => "andrew@tablelist.com" }
  s.source           = { :git => "https://github.com/tablelist/ios-kit.git", :tag => s.version.to_s }

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.subspec "Core" do |c|
    c.resource_bundles = {
      'TLKit' => ['Pod/Assets/**/*.*']
    }
    c.prefix_header_contents = '#import <TLKit/TLCore.h>'
    c.source_files = 'Pod/Core'
    c.public_header_files = 'Pod/Core/*.h'
    c.dependency "SSKeychain",   "~> 1.2"
  end

  s.subspec "Kit" do |k|
    k.frameworks = 'UIKit', 'MapKit', 'CoreLocation'
    k.source_files = 'Pod/Classes'
    k.public_header_files = 'Pod/Classes/*.h'
    k.dependency 'AFNetworking', '~> 2.5'
    k.dependency 'SSKeychain', '~> 1.2'
    k.dependency 'PocketSocket', '~> 0.6'
    k.dependency 'FBSDKCoreKit', '~> 4.7'
    k.dependency 'FBSDKLoginKit', '~> 4.7'
    k.dependency 'SDWebImage', '~> 3.7'
  end
end
