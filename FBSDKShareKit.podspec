# Use the --use-libraries switch when pushing or linting this podspec

Pod::Spec.new do |s|

  s.name         = 'FBSDKShareKit'
  s.version      = '12.0.0'
  s.summary      = 'Official Facebook SDK for iOS to access Facebook Platform Sharing Features'

  s.description  = <<-DESC
                   The Facebook SDK for iOS ShareKit framework provides:
                   * Share content with Share Dialog and Message Dialog.
                   * Send Game Requests or App Invites to grow your app.
                   * Publish content and open graph stories with the Graph API
                   DESC

  s.homepage     = 'https://developers.facebook.com/docs/ios/'
  s.license      = {
    type: 'Facebook Platform License',
    text: <<-LICENSE
    Copyright (c) 2014-present, Facebook, Inc. All rights reserved.

    You are hereby granted a non-exclusive, worldwide, royalty-free license to use,
    copy, modify, and distribute this software in source code or binary form for use
    in connection with the web services and APIs provided by Facebook.

    As with any software that integrates with the Facebook platform, your use of
    this software is subject to the Facebook Developer Principles and Policies
    [http://developers.facebook.com/policy/]. This copyright notice shall be
    included in all copies or substantial portions of the software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
    FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
    COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
    IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
    CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
    LICENSE
  }
  s.author       = 'Facebook'

  s.platform     = :ios, :tvos
  s.ios.deployment_target = '9.0'
  s.tvos.deployment_target = '10.0'

  s.source = {
    http: "https://github.com/facebook/facebook-ios-sdk/releases/download/v#{s.version}/FacebookSDK.xcframework.zip",
    sha1: 'cb6a3910a8befce7c0446065d716df9d6c9cd629'
  }
  s.vendored_frameworks = 'XCFrameworks/FBSDKShareKit.xcframework'
  s.dependency 'FBSDKCoreKit', "#{s.version}"
end
