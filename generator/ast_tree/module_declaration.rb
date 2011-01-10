class ModuleDeclaration < ASTNode

  def compile(buffer = nil)
    dir_name = normalized_file_name
    file_name = "#{dir_name}.rb"

    # If we are generating spec fictures we jump directly to that
    if ClassDeclaration.spec_mode
      children_filtered(:of_class => ClassDeclaration).each(&:compile)
      return 
    end
    
    
    if dir_name != "icontrol" 
      FileUtils.remove_dir(dir_name,true) 
      Dir.mkdir(dir_name)
    end

    File.open(file_name,"w+") do |file|
      file << "require \"icontrol/base\"\n" if file_name == "icontrol.rb"
      parent_module = parents(:of_class => ModuleDeclaration)
      parent_module = parent_module ? parent_module.map{|i| i.properties[:name]}.join("::") + "::" : ""
      modules = children_filtered(:of_class => ModuleDeclaration).sort do |a,b| 
        if a.properties[:name] == "Common"
          -1
        elsif b.properties[:name] == "Common"
           1
        else
           a.properties[:name] <=> b.properties[:name]
        end
      end
          
      classes = children_filtered(:of_class => ClassDeclaration) if modules.empty?
      file << "module #{parent_module}#{properties[:name]}\n\n"
      file << @children.map{|i| i.declare }.compact.join("\n")
      Dir.chdir(dir_name)
      @children.each { |i| i.compile(file) }
      Dir.chdir("..")
      file << "\nend\n"
      [[modules] + [classes]].flatten.compact.each do |klass|
        file << "require \"#{normalized_file_name}/#{klass.normalized_file_name}\"\n"
      end

    end
    RBeautify.beautify_file(file_name)
  end

  def declare
    "module #{properties[:name]} ; end"
  end

end

