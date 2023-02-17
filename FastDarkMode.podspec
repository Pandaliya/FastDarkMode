#
# Be sure to run `pod lib lint FastDarkMode.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'FastDarkMode'
  s.version          = '0.1.0'
  s.summary          = '快速适配夜间模式'

  s.description      = <<-DESC
快速适配夜间模式
                       DESC

  s.homepage         = 'https://github.com/zhangpan/FastDarkMode'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'zhangpan' => 'zhangpan@cls.cn' }
  s.source           = { :git => 'https://github.com/zhangpan/FastDarkMode.git', :tag => s.version.to_s }

  s.swift_versions = ['5.0']
  s.ios.deployment_target = '11.0'

  s.source_files = 'FastDarkMode/Classes/**/*'
  
  s.resource_bundles = {
    'FastDarkMode' => ['FastDarkMode/Assets/*.{xib,png,xcassets}']
  }
  
  s.frameworks = 'UIKit', 'Foundation'

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.dependency 'AFNetworking', '~> 2.3'
end
