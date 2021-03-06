require File.join(File.dirname(__FILE__), 'abstract-php-extension')

class Php53Ioncubeloader < AbstractPhp53Extension
  init
  homepage 'http://www.ioncube.com/loaders.php'
  if Hardware.is_64_bit?
    version '4.4.4'
    url 'http://downloads3.ioncube.com/loader_downloads/ioncube_loaders_dar_x86-64.tar.gz'
    sha1 'ddb562991669f6f123a1f2d959cab310d680eca5'
  else
    version '4.4.1'
    url 'http://downloads3.ioncube.com/loader_downloads/ioncube_loaders_dar_x86.tar.gz'
    sha1 '3c79f5234de43c215935b6dd4367d66f7b9a63ac'
  end

  def extension_type; "zend_extension"; end

  def install
    prefix.install "ioncube_loader_dar_5.3.so" => "ioncubeloader.so"
    write_config_file unless build.include? "without-config-file"
  end
end
