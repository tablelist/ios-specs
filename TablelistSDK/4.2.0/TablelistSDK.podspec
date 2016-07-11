Pod::Spec.new do |s|
  s.name             = "TablelistSDK"
  s.version          = "4.2.0"
  s.summary          = "Official Tablelist SDK for Swift 2.0"
  s.description      = <<-DESC
                        Official Tablelist SDK for Swift 2.0
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

  s.subspec "Core" do |core|
    core.source_files = 'Source/Core/**/*.swift'
    core.dependency 'Alamofire', '~> 3.4'
    core.dependency 'KeychainAccess', '~> 2.3'
    core.dependency 'ObjectMapper', '~> 1.3'
    core.dependency 'PromiseKit/CorePromise', '~> 3.1'
    core.dependency 'RealmSwift', '~> 1.0'
    core.dependency 'Starscream', '~> 1.1'
    core.dependency 'SwiftyJSON', '~> 2.3'
  end

  s.subspec "iOS" do |ios|
    ios.source_files = 'Source/Mobile/**/*.swift'
    ios.dependency 'PureLayout', '~> 3.0'
    ios.dependency 'TablelistSDK/Core'
  end

  s.subspec "macOS" do |macos|
    macos.source_files = 'Source/Desktop/**/*.swift'
    macos.dependency 'TablelistSDK/Core'
  end

  s.subspec "watchOS" do |watchos|
    watchos.source_files = 'Source/Watch/**/*.swift'
    watchos.dependency 'TablelistSDK/Core'
  end

  s.subspec "tvOS" do |tvos|
    tvos.source_files = 'Source/TV/**/*.swift'
    tvos.dependency 'TablelistSDK/Core'
  end
end
