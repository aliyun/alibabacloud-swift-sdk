Pod::Spec.new do |spec|

  spec.name         = "AlibabacloudAlimt20181012"
  spec.version      = "1.2.0"
  spec.license      = "Apache 2.0"
  spec.summary      = "Alibaba Cloud Machine Translation (20181012) SDK Library for Swift"
  spec.homepage     = "https://github.com/alibabacloud-sdk-swift/alimt-20181012" 
  spec.author       = { "Alibaba Cloud SDK" => "sdk-team@alibabacloud.com" }

  spec.source       = { :git => spec.homepage + '.git', :tag => spec.version }
  spec.source_files = 'Sources/**/*.swift'

  spec.ios.framework   = 'Foundation'

  spec.ios.deployment_target     = '13.0'
  spec.osx.deployment_target     = '10.15'
  spec.watchos.deployment_target = '6.0'
  spec.tvos.deployment_target    = '13.0'

  spec.dependency 'Tea',  '~> 1.0.0'
  spec.dependency 'TeaUtils',  '~> 1.0.6'
  spec.dependency 'AlibabaCloudOssSdk',  '~> 1.0.0'
  spec.dependency 'AlibabacloudOpenPlatform20191219',  '~> 1.0.0'
  spec.dependency 'AlibabaCloudOSSUtil',  '~> 1.0.1'
  spec.dependency 'TeaFileForm',  '~> 1.0.3'
  spec.dependency 'AlibabacloudOpenApi',  '~> 1.0.7'
  spec.dependency 'AlibabaCloudOpenApiUtil',  '~> 1.0.1'
  spec.dependency 'AlibabacloudEndpointUtil',  '~> 1.0.0'

  spec.swift_version='5.6'
end
