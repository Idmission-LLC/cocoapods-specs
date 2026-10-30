# IDmission CocoaPods specs

The CocoaPods specs repo for IDmission's iOS SDKs. CocoaPods trunk becomes read-only on 2 December 2026, so new
SDK versions are published here. While trunk still accepts pushes they go there too, but only this repo is
guaranteed to have every release.

## Use it

Put both sources at the top of your `Podfile`, this one first:

```ruby
source 'https://github.com/Idmission-LLC/cocoapods-specs.git'
source 'https://cdn.cocoapods.org/'

target 'YourApp' do
  pod 'IDentityMediumSDK2.0', '11.1.19.2.5'
end
```

Keep the trunk line: once a `Podfile` names any `source`, CocoaPods stops adding trunk on its own, and your other
pods still come from there. The pods download their binaries from the public GitHub releases in
[ios-sdk-releases](https://github.com/Idmission-LLC/ios-sdk-releases/releases), so no credentials are needed.
`Podfile.lock` lists this repo under `SPEC REPOS` for the pods it served.

| SDK | Main pod | Optional pods |
|:---|:---|:---|
| Medium | `IDentityMediumSDK2.0` | `IDentityMediumModels`, `IDentityMediumNFC`, `SignatureCaptureMedium`, `VoiceCaptureMedium`, `FingerPrintCaptureMedium` |
| Lite | `IDentityLiteSDK2.0` | `IDentityLiteModels`, `SignatureCaptureLite`, `VoiceCaptureLite`, `FingerPrintCaptureLite` |
| Liveness | `IDentityLivenessSDK2.0` | `IDentityLivenessModels` |

The main pod already contains the capture frameworks that also ship as separate pods (`IDCapture*`, `SelfieCapture*`).

## Publishing (IDmission)

Each SDK's `Cocoapod_<Flavor>SDK_Release.sh` runs `pod repo push`, which lints the podspecs and commits them here
as `Specs/<Pod>/<version>/<Pod>.podspec`. Treat a published version as final. Don't edit or delete it, and don't
rewrite history: customers' `Podfile.lock` files record each podspec's checksum.
