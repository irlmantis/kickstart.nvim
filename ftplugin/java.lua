vim.uv.os_setenv('JAVA_HOME', '/usr/lib/jvm/jdk-21.0.6-oracle-x64/')

local config = {
  cmd = { '/home/mantis/.local/share/nvim/mason/bin/jdtls' },
  root_dir = vim.fs.dirname(vim.fs.find({ 'gradlew', '.git', 'mvnw' }, { upward = true })[1]),
}
require('jdtls').start_or_attach(config)
