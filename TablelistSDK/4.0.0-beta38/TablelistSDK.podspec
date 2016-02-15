Pod::Spec.new do |s|
  s.name             = "TablelistSDK"
  s.version          = "4.0.0-beta38"
  s.summary          = "Official Tablelist SDK for Swift 2.0"
  s.description      = <<-DESC
                        Official Tablelist SDK for Swift 2.0
                       DESC

  s.homepage         = "https://github.com/tablelist/ios-sdk"
  s.license          = 'MIT'
  s.author           = { "Andrew Barba" => "andrew@tablelist.com" }
  s.source           = { :git => "https://github.com/tablelist/ios-sdk.git", :tag => s.version.to_s }

  s.requires_arc     = true

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.9'
  s.watchos.deployment_target = '2.0'
  s.tvos.deployment_target = '9.0'

  s.subspec "Core" do |core|
    core.source_files = 'Source/Core/**/*.swift'
    core.dependency 'Alamofire', '~> 3.1'
    core.dependency 'KeychainAccess', '~> 2.3'
    core.dependency 'ObjectMapper', '~> 1.1'
    core.dependency 'PromiseKit/CorePromise', '~> 3.0'
    core.dependency 'RealmSwift', '~> 0.98'
    core.dependency 'Starscream', '~> 1.0'
    core.dependency 'SwiftyJSON', '~> 2.3'
  end

  s.subspec "Desktop" do |desk|
    desk.source_files = 'Source/Desktop/**/*.swift'
    desk.dependency 'TablelistSDK/Core'
  end

  s.subspec "Mobile" do |mobile|
    mobile.source_files = 'Source/Mobile/**/*.swift'
    mobile.dependency 'TablelistSDK/Core'
  end

  s.subspec "Watch" do |watch|
    watch.source_files = 'Source/Watch/**/*.swift'
    watch.dependency 'TablelistSDK/Core'
  end

  s.subspec "TV" do |tv|
    tv.source_files = 'Source/TV/**/*.swift'
    tv.dependency 'TablelistSDK/Core'
  end
end
