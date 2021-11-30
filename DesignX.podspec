
Pod::Spec.new do |spec|

spec.name         = "DesignX"
  spec.version      = "1.2.1"
  spec.summary      = "Collection of Design & Layout extensions written in swift"

  spec.description  = <<-DESC
      Collection of Design & Layout extensions to speed up making complex user interfaces ✨
                     DESC

  spec.homepage     = "https://github.com/belalsamyyy/DesignX"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "Belal Samy" => "belalsamy10@gmail.com" }

  spec.ios.deployment_target = "13.0"
  spec.swift_version = "5"

  spec.source        = { :git => "https://github.com/belalsamyyy/DesignX.git", :tag => "#{spec.version}" }
  spec.source_files  = "DesignX/**/*.{h,m,swift}"

end
