require "pod_lib_create/version"
require 'yaml'

module PodLibCreate
  class Error < StandardError; end

	class Main
	  
	  def run
	  	check_config
	  	create_pod_lib
	  end

	  def ask(question)
		  answer = ""
		  loop do
		    puts "\n#{question}?"

		    print " > "
		    answer = gets.chomp

		    break if answer.length > 0

		    print "\nYou need to provide an answer."
		  end
		  answer
		end

		def check_config
			need_save = false
			path = File.expand_path("~/.pod_lib_create_config.yaml")
			config = Hash.new
			if File.exist?(path)
				config = YAML::load_file(path)
				if not config
					config = Hash.new
				end
			else 
				File.open(path, 'w') {|f| f.write config.to_yaml }
			end
		
			if not config["user"]
				config["user"] = Hash.new
				config["user"]["name"] = ask("What is your name")
				config["user"]["email"] = ask("What is your email")
				need_save = true
			end

			if not config["spec"]
				config["spec"] = Hash.new
				config["spec"]["home"] = ask("What is your source code git homepage")
				config["spec"]["src"] = ask("What is your source code git uri")
				config["spec"]["prefix"] = ask("What is your class prefix")
				need_save = true
			end

			if need_save
				File.open(path, 'w') {|f| f.write config.to_yaml }
			end
		end

		def pod_name
			the_name = ''
			if ARGV and ARGV.size >= 1
				the_name = ARGV[0].lstrip.rstrip
			end
			if not the_name or the_name.length < 1
				the_name = ask("What is your pod name")
			end
			the_name
		end

		def create_pod_lib
			cmd = "pod lib create " + pod_name + " --template-url=https://github.com/shunchengGit/pod_lib_create_template"
			puts cmd
			system cmd
		end

	end

end
