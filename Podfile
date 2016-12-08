# Uncomment this line to define a global platform for your project
# platform :ios, '9.0'

target 'Pedal' do
  # Comment this line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!

  # Pods for Pedal

  target 'PedalTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'PedalUITests' do
    inherit! :search_paths
    # Pods for testing
  end

pod 'Charts', :git => 'https://github.com/danielgindi/Charts.git', :branch => 'master'
pod 'RealmSwift', '~> 2.0.2'
post_install do |installer|
    installer.pods_project.targets.each do |target|
      target.build_configurations.each do |config|
        config.build_settings['SWIFT_VERSION'] = '3.0'
      end
    end
  end
end 