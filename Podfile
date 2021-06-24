platform :ios, '14.0'
inhibit_all_warnings!
use_frameworks!
install! 'cocoapods', :disable_input_output_paths => true

source 'https://cdn.cocoapods.org/'
# source 'https://github.com/CocoaPods/Specs.git'

target 'DIExample' do
  pod 'DependencyInjection'

  Dir["./Modules/**/*.podspec"].each do |spec|
    name = File.basename spec, '.podspec'
    pod name, :path => spec
  end

  target 'DIExampleTests' do
    inherit! :search_paths
  end

  target 'DIExampleUITests' do
  end
end
