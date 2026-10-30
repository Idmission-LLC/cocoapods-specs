Pod::Spec.new do |spec|


  spec.name                   = "VoiceCaptureLite"
  spec.version                = "11.1.19.2.5"
  spec.summary                = "VoiceCaptureLite lets user add VoiceCaptureLiteSDK in their project"
  spec.description            = <<-DESC 
                                VoiceCaptureLite helps user to add VoiceCaptureLiteSDK in their project.
                                On integrating VoiceCaptureLiteSDK user will be able to Capture Voice.
                                Also able to use verious service ID mentined in Documentation.
                               DESC
  
  spec.homepage                = "https://www.idmission.com/en/home"
  spec.license                 = { :type => "MIT", :file => "LICENSE" }
  spec.author                  = { "Idmission LLC" => "amol.deshmukh@idmission.com" }
  spec.source                  = { :http => "https://github.com/Idmission-LLC/ios-sdk-releases/releases/download/lite-#{spec.version}/VoiceCaptureLite.zip" }
  spec.platform                = :ios
  spec.ios.deployment_target   = '15.6'
  spec.swift_version           = "5"
  spec.pod_target_xcconfig     = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  spec.user_target_xcconfig    = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  spec.ios.vendored_frameworks = 'VoiceCaptureLite.xcframework'

end