module Codebreaker
  class FileChef
    attr_reader :tmp_dir, :test_dir, :tracking_files, :path_table

    def initialize(*tracking_files)
      @tmp_dir = "#{File.expand_path('./temp_data', File.dirname(__FILE__))}"
      @test_dir = "#{File.expand_path('./test_data', File.dirname(__FILE__))}"
      @tracking_files = tracking_files
      @path_table = {}
    end

    def make
      create_path_table
      move_to_tmp_dir
      copy_from_test_dir
    end

    def clear
      delete_test_files
      restore_tracking_files
    end

    private

    def pattern
      /\A(.+)\/(.+)\z/
    end

    def create_path_table
      tracking_files.each do |file|
        path_table[file[/#{pattern}/,2]] = [file, file[/#{pattern}/,1]]
      end
    end

    def move_to_tmp_dir
      path_table.each do |_, file|
        FileUtils.mv(file[0], tmp_dir, :force => true)
      end
    end

    def same_file_path(file)
      file_key = path_table[file[/#{pattern}/,2]]
      return file_key unless file_key
      file_key[1]
    end

    def copy_from_test_dir
      Dir.glob("#{test_dir}/*.*").each do |file|
        if same_file_path(file)
          FileUtils.cp(file, same_file_path(file))
        end
      end
    end

    def delete_test_files
      path_table.each do |_, file|
        FileUtils.rm(file[0], :force => true)
      end
    end

    def restore_tracking_files
      Dir.glob("#{tmp_dir}/*.*").each do |file|
        FileUtils.mv(file, same_file_path(file), :force => true)
      end
    end
  end
end