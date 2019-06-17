def require_by(glob)
  Dir[File.expand_path(glob, File.dirname(__FILE__))].sort.each { |f| require f }
end

%w(configuration gateway requests/base domain/specific).each do |file|
  require_relative(file)
end

%w(domain catalogs builders requests repositories mappers parsers external).each do |dir|
  require_by("#{dir}/*.rb")
end
