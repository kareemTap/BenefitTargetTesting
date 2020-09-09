Pod::Spec.new do |s|
  s.name             = 'BenefitTargetTesting'
  s.version          = '1.0.0'
  s.summary          = 'By far the most fantastic view I have seen in my entire life. No joke.'
 
  s.description      = 'This fantastic view changes its color gradually makes your app look fantastic!'
 
  s.homepage         = 'https://github.com/<YOUR GITHUB USERNAME>/FantasticView'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'kareemTap' => 'k.ahmed@tap.company' }
  s.source           = { :git => 'https://github.com/kareemTap/BenefitTargetTesting.git', :tag => s.version.to_s }
 
  s.ios.deployment_target = '11.0'
  s.source_files = 'FantasticView/FantasticView.swift'
 
end
