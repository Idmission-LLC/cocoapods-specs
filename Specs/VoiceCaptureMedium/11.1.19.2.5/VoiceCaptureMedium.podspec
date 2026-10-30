Pod::Spec.new do |spec|


  spec.name                    = "VoiceCaptureMedium"
  spec.version                 = "11.1.19.2.5"
  spec.summary                 = "VoiceCaptureMedium lets user add VoiceCaptureMediumSDK in their project"
  spec.description             = <<-DESC 
                                VoiceCaptureMedium helps user to add VoiceCaptureMediumSDK in their project.
                                On integrating VoiceCaptureMediumSDK user will be able to Capture Voice.
                                Also able to use various service ID mentioned in Documentation.
                               DESC
  
  spec.homepage                = "https://www.idmission.com/en/home"
  spec.license                 = { :type => "MIT", :file => "LICENSE" }
  spec.author                  = { "Idmission LLC" => "amol.deshmukh@idmission.com" }
  spec.source                  = { :http => "https://github.com/Idmission-LLC/ios-sdk-releases/releases/download/medium-#{spec.version}/VoiceCaptureMedium.zip" }
  spec.platform                = :ios
  spec.ios.deployment_target   = '15.5'
  spec.swift_version           = "5"
  spec.pod_target_xcconfig     = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  spec.user_target_xcconfig    = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  spec.ios.vendored_frameworks = 'VoiceCaptureMedium.xcframework'

end
