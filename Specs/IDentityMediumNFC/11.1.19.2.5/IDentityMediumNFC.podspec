Pod::Spec.new do |spec|


  spec.name                    = "IDentityMediumNFC"
  spec.version                 = "11.1.19.2.5"
  spec.summary                 = "IDentityMediumNFC lets user add IDentityMediumNFC in their project"
  spec.description             = <<-DESC 
                                IDentityMediumNFC helps user to add IDentityMediumNFC in their project.
                                On integrating IDentityMediumNFC user will be able to use scan the NFC IDCard.
                               DESC
  
  spec.homepage                = "https://www.idmission.com/en/home"
  spec.license                 = { :type => "MIT", :file => "LICENSE" }
  spec.author                  = { "Idmission LLC" => "amol.deshmukh@idmission.com" }
  spec.source                  = { :http => "https://github.com/Idmission-LLC/ios-sdk-releases/releases/download/medium-#{spec.version}/IDentityMediumNFC.zip" }
  spec.platform                = :ios
  spec.ios.deployment_target   = '15.5'
  spec.swift_version           = "5"
  spec.pod_target_xcconfig     = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  spec.user_target_xcconfig    = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  spec.ios.vendored_frameworks = 'IDentityMediumNFC.xcframework'  

end