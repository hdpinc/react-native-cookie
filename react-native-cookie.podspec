require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = package['name']
  s.version      = package['version']
  s.summary      = package['description']
  s.license      = package['license']

  s.authors      = ""
  s.homepage     = "https://github.com/shimohq/react-native-cookie"
  s.platform     = :ios, "9.0"

  s.source       = { :git => "https://github.com/hdpinc/react-native-cookie.git" }
  s.source_files  = "ios/**/*.{h,m}"

  s.dependency 'React'
end
