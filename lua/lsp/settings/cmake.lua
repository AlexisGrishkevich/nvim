return {
  settings = {

    cmake = {
      command = "cmake-language-server",
      filetypes = "cmake",
      root_dir = "CMakePresets.json", "CTestConfig.cmake", ".git", "build", "cmake",
      single_file_support = true,
      init_options = {
        buildDirectory = "build",
      }
    }

  }
}
