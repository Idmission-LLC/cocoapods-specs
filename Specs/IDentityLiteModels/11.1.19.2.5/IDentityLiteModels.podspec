Pod::Spec.new do |spec|


  spec.name                   = "IDentityLiteModels"
  spec.version                = "11.1.19.2.5"
  spec.summary                = "IDentityLiteModels lets user add IDentityLiteModels in their project"
  spec.description            = <<-DESC 
                                IDentityLiteModels helps user to add IDentityLiteModels in their project.
                                On integrating IDentityLiteModels user will be able to use existing embedded models.
                                Also able to use various service ID mentioned in Documentation.
                               DESC
  
  spec.homepage                = "https://www.idmission.com/en/home"
  spec.license                 = { :type => "MIT", :file => "LICENSE" }
  spec.author                  = { "Idmission LLC" => "amol.deshmukh@idmission.com" }
  spec.source                  = { :http => "https://github.com/Idmission-LLC/ios-sdk-releases/releases/download/lite-#{spec.version}/IDentityLiteModels.zip" }
  spec.platform                = :ios
  spec.ios.deployment_target   = '15.6'
  spec.swift_version           = "5"
  spec.pod_target_xcconfig     = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  spec.user_target_xcconfig    = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  spec.ios.vendored_frameworks = 'IDentityLiteModels.xcframework'  

end