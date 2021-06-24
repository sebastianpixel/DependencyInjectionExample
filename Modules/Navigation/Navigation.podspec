Pod::Spec.new do |s|
  s.name         = File.basename __FILE__, '.podspec'
  s.version      = '0.0.1'
  s.license      = { :type => 'BSD' }
  s.homepage     = 'https://github.com/sebastianpixel/DependencyInjectionExample'
  s.authors      = { 'Sebastian Pickl' => 'sebastianpickl@gmail.com' }
  s.summary      = 'Example for https://github.com/sebastianpixel/DependencyInjection'
  s.source       = { :git => 'https://github.com/sebastianpixel/DependencyInjectionExample.git' }
  s.platform      = :ios, '14.0'
  s.requires_arc  = true
  s.swift_version = '5.4'

  s.subspec 'Interface' do |sp|
    sp.source_files = 'Interface'
  end

  s.subspec 'Implementation' do |sp|
    sp.source_files = 'Implementation'
    sp.dependency "#{s.name}/Interface"
  end
end
