#
# Be sure to run `pod lib lint ${POD_NAME}.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'WebViewLibrary'
  s.version          = '4.0'
  s.summary          = 'WebViewLibrary is a faster way of implementing webview with a sleeker design.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      =
  'WebViewLibrary is a simple easy to use library for implementing web view of Swift SDK in ios apps. It comes with designated design with a textfield atop to display the parent link, a web view underneath and a button to close.
  Just initialize WebViewLibrary with the link it is to load ensure the link is a valid url and has in this format- https://your-url , then run your project and see it in action.'
                      

  s.homepage         = 'https://github.com/tesddev/WebViewLibrary'
  s.screenshots     = 'https://user-images.githubusercontent.com/58847828/221267986-5f9a6cf4-2bdf-4f83-b23e-0fb90a644136.png'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'tesddev' => 'tesleem.amuda@gmail.com' }
  s.source           = { :git => 'https://github.com/tesddev/WebViewLibrary.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/da_tesleem'

  s.ios.deployment_target = '11.0'

  s.source_files = 'Sources/**/*'
  
  # s.resource_bundles = {
  #   'WebViewLibrary' => ['WebViewLibrary/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
