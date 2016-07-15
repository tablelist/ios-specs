Pod::Spec.new do |s|
  s.name             = "TablelistCore"
  s.version          = "5.5.1"
  s.summary          = "Official Tablelist SDK for Swift 2.2"
  s.description      = <<-DESC
                        Official Tablelist SDK for Swift 2.2
                       DESC

  s.homepage         = "https://github.com/tablelist/ios-sdk"
  s.license          = 'MIT'
  s.author           = { "Andrew Barba" => "andrew@tablelist.com" }
  s.source           = { :git => "https://github.com/tablelist/ios-sdk.git", :tag => s.version.to_s }

  s.requires_arc     = true

  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'
  s.watchos.deployment_target = '2.0'
  s.tvos.deployment_target = '9.0'

  s.source_files = 'Source/Core/**/*.swift'
  s.dependency 'Alamofire', '~> 3.4'
  s.dependency 'KeychainAccess', '~> 2.3'
  s.dependency 'ObjectMapper', '~> 1.3'
  s.dependency 'PromiseKit/CorePromise', '~> 3.1'
  s.dependency 'RealmSwift', '~> 1.0'
  s.dependency 'Starscream', '~> 1.1'
  s.dependency 'SwiftyJSON', '~> 2.3'
end
