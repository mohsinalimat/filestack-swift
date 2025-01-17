Change Log
==========

Version 2.2 *(2019-09-18)*
----------------------------

- Added `upload(using:options:queue:uploadProgress:completionHandler:)` taking one or multiple `Uploadable` items as input to `Client` and deprecated `multiPartUpload(...)` and `multiFileUpload(...)`.
- Added equivalent new upload functionality for Objective-C that allows uploads of one or several local `NSURL` or  `NSData`.
- `Client` upload functions now return types based on protocols, such as `Uploadable`, `DeferredAdd`, `Cancellable`, `Monitorizable` or combinations of these.
- Added `UploadOptions` class that allows customizing the upload behavior in a much more fine-grained way.
- Added `CustomStringConvertible` conformance to most public classes using newly added helper `Tools.describe(subject:only:except:)`.
- Added static `defaults` function to `StorageOptions` defaulting to `StorageOptions(location: .S3, access: .private)`.
- Removed unused `storage` property from `Client` and marked `init(apiKey:security:storage:)` as deprecated.
- Exposed more API to Objective-C.
- Updated `Alamofire` dependency to `~> 4.9`.
- Updated `CryptoSwift` dependency to `~> 1.0`.
- Improved documentation.

Version 2.1 *(2019-09-05)*
----------------------------

- Restored Objective-C support.
- Made `Transform` typealiases publicly available.
- Minor documentation fixes.

Version 2.0.2 *(2019-08-31)*
----------------------------

- Added support for transformations that take multiple handles or external URLs as input to `Client` (see `transformable(handles:)` and  `transformable(externalURLs:)`.)

Version 2.0.1 *(2019-08-30)*
----------------------------

- Added animate transform.
- Added minify CSS transform.
- Added minify JS transform.
- Added auto image transform.
- Added OCR transform.
- Added copyright transform.
- Added presets to enhance transform (see `TransformEnhancePreset`).

Version 2.0 *(2019-06-15)*
----------------------------

- Added synchronous document transformations support.
- Added workflows support.
- Added several missing typealiases to `Transform`.
- Fixed multipart upload failure during the complete operation stage (PR #12.)
- Fixed some memory leaks in multipart uploads.
- Deprecated `store(fileName:,location:,path:,container:,region:,access:,base64Decode:,queue:,completionHandler:)` (now `store(using:,base64Decode:,queue:,completionHandler:)`) in `Transformable` class.
- `RoundedCornersTransform` transformation is now working as expected (was `RoundCornersTransform` before.)
- Deprecated `AsciiTransform` (now `ASCIITransform`).
- Deprecated `ProgressiveJpegTransform` (now `ProgressiveJPEGTransform`).
- Deprecated `RoundCornersTransform` (now `RoundedCornersTransform`).
- Deprecated `UrlScreenshotTransform` (now `URLScreenshotTransform`).
- Dropped support for iOS versions earlier than 11.0.
- Dropped support for Swift versions earlier than 4.2.

Version 1.2.7 *(2018-07-18)*
----------------------------

- Fix test target.

Version 1.2.6 *(2018-06-20)*
----------------------------

- Added new image content detection transforms.

Version 1.2.5 *(2018-06-18)*
----------------------------

- Added new Transforms.
- Moved some Transform related string to enums.


Version 1.2.4 *(2018-06-11)*
----------------------------

- Added `MultifileUpload` class.


Version 1.2.3 *(2018-06-01)*
----------------------------

- Updated CryptoSwift to version 0.10.0.

Version 1.2.2 *(2017-12-19)*
----------------------------

- Added @objc decorator to MultipartUpload's `cancel()` function.

Version 1.2.1 *(2017-12-19)*
----------------------------

- Updated CryptoSwift and Alamofire dependencies.
- Upgraded code to Swift 4.

Version 1.2 *(2017-11-20)*
----------------------------

- Migrated from Arcane to CryptoSwift.

Version 1.1 *(2017-11-03)*
----------------------------

- Added support for store options to uploads functionality.
- Improved upload error reporting.

Version 1.0.2 *(2017-11-01)*
----------------------------

- Disabled new Xcode build system to prevent issues with Carthage builds.
- Updated Arcane dependency to version 1.0.
- Updated Alamofire dependency to version 4.5.1.

Version 1.0.1 *(2017-10-31)*
----------------------------

- Added `startUploadImmediately` argument and turning `localURL` into an optional argument in `Client` `multipartUpload` function.
- Declared `MultipartUpload` `uploadFile()` function public.
- Added `StorageOptions` class.

Version 1.0 *(2017-08-23)*
----------------------------

Initial release.
