require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec) 

task :default => :spec

task :mostrar do
        #sh "puts 'hola'"
        sh "clear"
       sh "ruby lib/proyecto_etiqueta/etiqueta.rb"

end

task :lista do
        sh "rspec -I. spec/lista_spec.rb"
end

task :antro do
	sh "rspec -I. spec/antropometrico_spec.rb"
end

task :compa do
	sh "rspec -I. spec/comparable_y_enumerable_spec.rb"
end



