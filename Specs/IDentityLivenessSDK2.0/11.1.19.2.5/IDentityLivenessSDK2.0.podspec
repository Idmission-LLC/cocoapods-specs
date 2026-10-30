Pod::Spec.new do |spec|


  spec.name                   = "IDentityLivenessSDK2.0"
  spec.version                = "11.1.19.2.5"
  spec.summary                = "IDentityLivenessSDK lets user add IDentityLivenessSDK in their project"
  spec.description            = <<-DESC 
                                IDentityLivenessSDK helps user to add IDentityLivenessSDK in their project.
                                On integrating IDentityLivenessSDK user will be able to Capture Face.
                                Also able to use various service ID mentioned in Documentation.
                               DESC
  
  spec.homepage                = "https://www.idmission.com/en/home"
  spec.license                 = { :type => "MIT", :file => "LICENSE" }
  spec.author                  = { "Idmission LLC" => "amol.deshmukh@idmission.com" }
  spec.source                  = { :http => "https://github.com/Idmission-LLC/ios-sdk-releases/releases/download/liveness-#{spec.version}/IDentityLivenessSDK2.0.zip" }
  spec.platform                = :ios
  spec.ios.deployment_target   = '15.5'
  spec.swift_version           = "5"
  spec.pod_target_xcconfig     = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  spec.user_target_xcconfig    = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  spec.ios.vendored_frameworks = [ 'IDentityLivenessSDK.xcframework', 'SelfieCaptureLiveness.xcframework' ]
  # spec.dependency 'SelfieCaptureLiveness', "'#{spec.version}'"
  # spec.dependency 'IDCaptureLiveness', "'#{spec.version}'"

end