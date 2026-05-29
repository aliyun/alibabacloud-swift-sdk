Pod::Spec.new do |spec|

  spec.name         = "AlibabacloudWuyingAI20260311"
  spec.version      = "1.1.0"
  spec.license      = "Apache 2.0"
  spec.summary      = "Alibaba Cloud WuyingAI (20260311) SDK Library for Swift"
  spec.homepage     = "https://github.com/alibabacloud-sdk-swift/wuyingai-20260311" 
  spec.author       = { "Alibaba Cloud SDK" => "sdk-team@alibabacloud.com" }

  spec.source       = { :git => spec.homepage + '.git', :tag => spec.version }
  spec.source_files = 'Sources/**/*.swift'

  spec.ios.framework   = 'Foundation'

  spec.ios.deployment_target     = '13.0'
  spec.osx.deployment_target     = '10.15'
  spec.watchos.deployment_target = '6.0'
  spec.tvos.deployment_target    = '13.0'

  spec.dependency 'Tea',  '~> 1.0.3'
  spec.dependency 'TeaUtils',  '~> 1.0.8'
  spec.dependency 'AlibabacloudOpenApi',  '~> 1.0.7'
  spec.dependency 'AlibabaCloudOpenApiUtil',  '~> 1.0.2'
  spec.dependency 'AlibabacloudEndpointUtil',  '~> 1.0.0'

  spec.swift_version='5.6'
end
