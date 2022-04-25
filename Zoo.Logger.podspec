#
# Be sure to run `pod lib lint Zoo.Logger.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Zoo.Logger'
  s.version          = '1.0.0'
  s.summary          = 'Logger plugin for Zoo'
  s.description      = <<-DESC
  Logger plugin for Zoo
                       DESC
  s.homepage         = 'https://github.com/lzackx/Zoo.Logger'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'lzackx' => 'lzackx@lzackx.com' }
  s.source           = { :git => 'https://github.com/lzackx/Zoo.Logger.git', :tag => s.version.to_s }
  s.ios.deployment_target = '9.0'
  s.module_name = 'ZooLogger'
  s.source_files = 'Zoo.Logger/Classes/**/*'
  s.dependency 'Zoo'
  s.dependency 'Zoo.General'
  s.dependency 'CocoaLumberjack'
end
