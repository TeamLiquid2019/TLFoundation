#
# Be sure to run `pod lib lint TLFoundation.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TLFoundation'
  s.version          = '0.1.3'
  s.summary          = 'TL基础组件库 \
    -网络\
    -数据库\
    -中间件\
    -日志系统\
    -分类\
    -工具\
        -日期处理\
        -文件处理\
        -设备信息\
    '

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
iOS项目基础组件库（网络，数据库等）业务无关的基础组件
                       DESC

  s.homepage         = 'https://github.com/TeamLiquid2019/TLFoundation'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'TeamLiquid2019' => 'liquid@teamliquid.com' }
  s.source           = { :git => 'https://github.com/TeamLiquid2019/TLFoundation.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

#  s.source_files = 'TLFoundation/Classes/**/*'
  s.source_files = 'TLFoundation/Classes/*'
  
  s.public_header_files = 'TLFoundation/Classes/TLHeader.h'
  
  #-----------------文件分级-------------------#
  
  s.subspec 'Category' do |ss|
    ss.source_files = 'TLFoundation/Classes/Category/*.{h,m}'
  end
  
  s.subspec 'DB' do |ss|
    ss.source_files = 'TLFoundation/Classes/DB/*.{h,m}'
  end
  
  s.subspec 'Mediator' do |ss|
    ss.source_files = 'TLFoundation/Classes/Mediator/*.{h,m}'
  end
  
  s.subspec 'Networking' do |ss|
    ss.source_files = 'TLFoundation/Classes/Networking/*.{h,m}'
  end
  
  s.subspec 'Tools' do |ss|
    ss.source_files = 'TLFoundation/Classes/Tools/*.{h,m}'
  end
  
  #-----------------文件分级结束----------------#
  
  # s.resource_bundles = {
  #   'TLFoundation' => ['TLFoundation/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  
  s.dependency 'YTKNetwork'
  s.dependency 'CTMediator'
  s.dependency 'FMDB'
  
end
