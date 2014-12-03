Pod::Spec.new do |s|
  s.name             = "TLAPIKit"
  s.version          = "0.1.0"
  s.summary          = "Tablelist iOS API"

  s.homepage         = "https://github.com/tablelist/ios-apikit"
  s.license          = 'MIT'
  s.author           = { "Andrew Barba" => "andrew@tablelist.com" }
  s.source           = { :git => "https://github.com/tablelist/ios-apikit.git", :tag => s.version.to_s }

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes'
  s.resource_bundles = {
    'ios-apikit' => ['Pod/Assets/*.png']
  }

  s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'TLKit', '~> 0.1'
end
