# Uncomment this line to define a global platform for your project
# platform :ios, '9.0'

target 'ForeHead' do
  # Comment this line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!

  # Pods for ForeHead
  pod 'RxSwift',    '~> 3.0.0-beta.1'
  pod 'RxCocoa',    '~> 3.0.0-beta.1'
  
  target 'ForeHeadTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'ForeHeadUITests' do
    inherit! :search_paths
    # Pods for testing
  end

end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['SWIFT_VERSION'] = '3.0'
      config.build_settings['MACOSX_DEPLOYMENT_TARGET'] = '10.10'
    end
  end
end