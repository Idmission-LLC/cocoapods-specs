Pod::Spec.new do |spec|


  spec.name                    = "IDentityMediumSDK2.0"
  spec.version                 = "11.1.19.2.5"
  spec.summary                 = "IDentityMediumSDK lets user add IDentityMediumSDK in their project"
  spec.description             = <<-DESC 
                                IDentityMediumSDK helps user to add IDentityMediumSDK in their project.
                                On integrating IDentityMediumSDK user will be able to Capture Face & ID.
                                Also able to use various service ID mentioned in Documentation.
                               DESC
  
  spec.homepage                = "https://www.idmission.com/en/home"
  spec.license                 = { :type => "MIT", :file => "LICENSE" }
  spec.author                  = { "Idmission LLC" => "amol.deshmukh@idmission.com" }
  spec.source                  = { :http => "https://github.com/Idmission-LLC/ios-sdk-releases/releases/download/medium-#{spec.version}/IDentityMediumSDK2.0.zip" }
  spec.platform                = :ios
  spec.ios.deployment_target   = '15.5'
  spec.swift_version           = "5"
  spec.pod_target_xcconfig     = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  spec.user_target_xcconfig    = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  spec.ios.vendored_frameworks = [ 'IDentityMediumSDK.xcframework', 'SelfieCaptureMedium.xcframework', 'IDCaptureMedium.xcframework'  ]
  # spec.dependency 'SelfieCaptureMedium', "'#{spec.version}'"}
  # spec.dependency 'IDCaptureMedium', "'#{spec.version}'"}

end