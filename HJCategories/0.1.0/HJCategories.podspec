#
# Be sure to run `pod lib lint HJCategories.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'HJCategories'
  s.version          = '0.1.0'
  s.summary          = '一些常用的分类整理'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = '对分类进行整理区分分为：UIKit Foundation CoreFoundation ....'

  s.homepage         = 'https://github.com/lihongsong/HJCategories'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'lihs' => 'lihs@2345.com' }
  s.source           = { :git => 'https://github.com/lihongsong/HJCategories.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  #s.source_files = 'HJCategories/Classes/**/*.{h,m}'

  HJ_NSUrl                   = { :spec_name => "NSString"}
  HJ_NSData                  = { :spec_name => "NSData"}
  HJ_NSArray                 = { :spec_name => "NSArray"}
  HJ_NSTimer                 = { :spec_name => "NSTimer"}
  HJ_NSNumber                = { :spec_name => "NSNumber"}
  HJ_NSString                = { :spec_name => "NSString"}
  HJ_NSObject                = { :spec_name => "NSObject"}
  HJ_NSDictionary            = { :spec_name => "NSDictionary"}
  HJ_NSFileManager           = { :spec_name => "NSFileManager"}
  HJ_NSUserDefaults          = { :spec_name => "NSUserDefaults"}

  HJ_UIView                  = { :spec_name => "UIView"}
  HJ_UIImage                 = { :spec_name => "UIImage"}
  HJ_UIColor                 = { :spec_name => "UIColor"}
  HJ_UIDevice                = { :spec_name => "UIDevice"}
  HJ_UIButton                = { :spec_name => "UIButton"}
  HJ_UIScreen                = { :spec_name => "UIScreen"}
  HJ_UITextView              = { :spec_name => "UITextView"}
  HJ_UITextField             = { :spec_name => "UITextField"}
  HJ_UIImageView             = { :spec_name => "UIImageView"}
  HJ_UIResponder             = { :spec_name => "UIResponder"}
  HJ_UIBezierPath            = { :spec_name => "UIBezierPath"}
  HJ_UIApplication           = { :spec_name => "UIApplication"}
  HJ_UITableViewCell         = { :spec_name => "UITableViewCell"}
  HJ_UIBarButtonItem         = { :spec_name => "UIBarButtonItem"}
  HJ_UINavigationItem        = { :spec_name => "UINavigationItem"}
  HJ_UINavigationController  = { :spec_name => "UINavigationController"}

  HJ_CAShapeLayer            = { :spec_name => "CAShapeLayer"}





  HJ_CoreFoundation          = { :spec_name => "CoreFoundation", :subSpec_names => [HJ_CAShapeLayer]}

  HJ_UIKit                   = { :spec_name => "UIKit", :subSpec_names => [HJ_UIView, 
                                                                           HJ_UIImage, 
                                                                           HJ_UIColor,
                                                                           HJ_UIDevice,
                                                                           HJ_UIButton,
                                                                           HJ_UIScreen,
                                                                           HJ_UITextView,
                                                                           HJ_UITextField,
                                                                           HJ_UIImageView,
                                                                           HJ_UIResponder,
                                                                           HJ_UIBezierPath,
                                                                           HJ_UIApplication,
                                                                           HJ_UITableViewCell,
                                                                           HJ_UIBarButtonItem,
                                                                           HJ_UINavigationItem,
                                                                           HJ_UINavigationController]}

  HJ_Foundation              = { :spec_name => "Foundation", :subSpec_names => [HJ_NSUrl,
                                                                                HJ_NSData,
                                                                                HJ_NSTimer,
                                                                                HJ_NSArray,
                                                                                HJ_NSString,
                                                                                HJ_NSNumber,
                                                                                HJ_NSObject,
                                                                                HJ_NSDictionary,
                                                                                HJ_NSFileManager,
                                                                                HJ_NSUserDefaults] }
    
  $hj_specs = [HJ_CoreFoundation, HJ_UIKit, HJ_Foundation]

  $hj_specs.each do |sync_spec| 
      s.subspec sync_spec[:spec_name] do |ss|
           
          specname = sync_spec[:spec_name]
            
          sources = ["HJCategories/Classes/#{specname}/**/*"]

          ss.source_files = sources
      end
  end

  s.default_subspec = 'Categories'

  s.subspec 'Categories' do |c|
    c.source_files  = "HJCategories/Classes/**/**/*"
    c.public_header_files = "HJCategories/Classes/**/**/*.h"
  end
    
  #s.subspec "Transformer" do |ss|
  #  ss.source_files = ["Pod/Classes/YTXGooeyCircleLayer.{h,m}", "Pod/Classes/YTXCountDownShowLayer.{h,m}"]
  #end
  
  # s.resource_bundles = {
  #   'HJCategories' => ['HJCategories/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
