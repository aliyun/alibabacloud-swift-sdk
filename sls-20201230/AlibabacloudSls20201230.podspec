Pod::Spec.new do |spec|

  spec.name         = "AlibabacloudSls20201230"
  spec.version      = "1.0.2"
  spec.license      = "Apache 2.0"
  spec.summary      = "Alibaba Cloud Log Service (20201230) SDK Library for Swift"
  spec.homepage     = "https://github.com/alibabacloud-sdk-swift/sls-20201230" 
  spec.author       = { "Alibaba Cloud SDK" => "sdk-team@alibabacloud.com" }

  spec.source       = { :git => spec.homepage + '.git', :tag => spec.version }
  spec.source_files = 'Sources/**/*.swift'

  spec.ios.framework   = 'Foundation'

  spec.ios.deployment_target     = '13.0'
  spec.osx.deployment_target     = '10.15'
  spec.watchos.deployment_target = '6.0'
  spec.tvos.deployment_target    = '13.0'

  spec.dependency 'Tea',  '~> 1.0.3'
  spec.dependency 'TeaUtils',  '~> 1.0.6'
  spec.dependency 'AlibabacloudGatewaySLS',  '~> 0.1.11'
  spec.dependency 'AlibabacloudOpenApi',  '~> 1.0.7'
  spec.dependency 'AlibabaCloudOpenApiUtil',  '~> 1.0.1'

  spec.swift_version='5.6'
end
