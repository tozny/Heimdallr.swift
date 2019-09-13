Pod::Spec.new do |spec|
  spec.name = 'ToznyHeimdallr'
  spec.version = '4.0.1'
  spec.authors = {
    'trivago' => 'info@trivago.de'
  }
  spec.license = {
    :type => 'Apache License, Version 2.0',
    :file => 'LICENSE'
  }
  spec.homepage = 'https://github.com/tozny/Heimdallr.swift'
  spec.source = {
    :git => 'https://github.com/tozny/Heimdallr.swift.git',
    :tag => spec.version.to_s
  }
  spec.summary = 'Easy to use OAuth 2 library, written in Swift'
  spec.description = 'Heimdallr is an OAuth 2.0 client specifically designed for easy usage. It currently supports the resource owner password credentials grant flow, refreshing an access token as well as extension grants.'

  spec.ios.deployment_target = '9.0'
  spec.osx.deployment_target = '10.10'
  spec.swift_version = '5.0'

  spec.default_subspec = 'Core'

  spec.subspec 'Core' do |subspec|
    subspec.dependency 'Result', '~> 4.1.0'
    subspec.framework = 'Foundation'

    subspec.source_files = 'Heimdallr/*.swift'
  end
end
