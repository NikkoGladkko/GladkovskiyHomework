#
#  Be sure to run `pod spec lint GladkovskiyHomework.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|
  spec.name         = "GladkovskiyHomework"
  spec.version      = "0.0.3"
  spec.summary      = "OTUS Homework module for demonstrations"

  spec.description  = <<-DESC
	This is the demo lesson project for OTUS Homework
                   DESC

  spec.homepage     = "https://github.com/NikkoGladkko/GladkovskiyHomework"
  spec.license      = { :type => "MIT" }
  spec.author             = { "Николай Гладковский" => "ngladkovskiy@vtb.ru" }

  spec.platform     = :ios, "13.0"
  spec.source       = { :git => "https://github.com/NikkoGladkko/GladkovskiyHomework.git", :tag => "#{spec.version}" }

  spec.dependency 'SnapKit'
  spec.source_files  = "GladkovskiyHomework/**/*.{swift,h,m}"

  spec.public_header_files = "GladkovskiyHomework/**/*.{h}"

  spec.swift_version = "5.0" 
end