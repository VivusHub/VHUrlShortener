#
# Be sure to run `pod lib lint VHUrlShortenerpodspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'VHUrlShortener'
  s.version          = '0.0.1'
  s.summary          = 'VHURLShortener is a developer-first URL shortener. It is focused on quick integration, scalability and customisation.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
VHURLShortener is a developer-first URL shortener. 
It's focused on helping startups, indie hackers and more quickly integrate url shorteners in their app without the huge backend.
 This repo has been documented to the best of our knowledge to help you get the best of our services. 
 If you need further help please visit [sh.vivushub.com](https://sh.vivushub.com)
  or email us at [support@vivuahub.com](mailto:support@vivushub.com)
                       DESC

  s.homepage         = 'https://github.com/VivusHub/VHUrlShortener'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'VivusHub' => 'dev@vivushub.com' }
  s.source           = { :git => 'https://github.com/VivusHub/VHUrlShortener/iOS.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/VivusHub'

  s.ios.deployment_target = '10.0'
  s.swift_version = '4.2'
  s.dependency 'Alamofire'
  s.dependency 'SwiftyJSON'
  s.source_files = ['VHUrlShortener/**/*.{h,m,swift}']
  s.resources = 'VHUrlShortener/**/*.{xcassets,xib,nib}'

end
