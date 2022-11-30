Pod::Spec.new do |spec|
  spec.name         = "OtusHomework"
  spec.version      = "0.0.12"
  spec.summary      = "OTUS Homework module for demonstrations"

  spec.description  = <<-DESC
	This is the demo lesson project for OTUS Homework
                   DESC

  spec.homepage     = "https://github.com/NikkoGladkko/OtusHomework"
  spec.license      = { :type => "MIT" }
  spec.author             = { "Николай Гладковский" => "ngladkovskiy@vtb.ru" }

  spec.platform     = :ios, "13.0"
  spec.source       = { :git => "https://github.com/NikkoGladkko/OtusHomework.git", :tag => "#{spec.version}" }

  spec.dependency 'SnapKit'
  spec.source_files  = "OtusHomework/**/*.{swift,h,m}"

  spec.public_header_files = "OtusHomework/**/*.{h}"

  spec.swift_version = "5.0" 
end
