Pod::Spec.new do |s|
  s.name     = 'AccuTerraSQLCipher'
  s.version  = '4.4.3'
  
  s.license  = { :type => 'BSD' }
  s.summary  = 'Full Database Encryption for SQLite.'
  s.homepage = 'https://www.zetetic.net/sqlcipher/'
  s.author   = 'Zetetic LLC'
  s.source = {
    "git": "https://github.com/neotreks/sqlcipher.git",
    "tag": "AccuTerrav4.4.3"
  }
  s.module_name = 'SQLCipher'

  s.ios.deployment_target = '10.0'
  s.osx.deployment_target = '10.10'
  s.watchos.deployment_target = '2.0'
  s.tvos.deployment_target = '9.0'
  s.default_subspec  = 'standard'
  s.requires_arc = false
  s.prepare_command = './configure --enable-tempstore=yes --with-crypto-lib=commoncrypto CFLAGS="-DSQLITE_HAS_CODEC -DSQLITE_TEMP_STORE=2 -DSQLITE_SOUNDEX -DSQLITE_THREADSAFE -DSQLITE_ENABLE_RTREE -DSQLITE_ENABLE_STAT3 -DSQLITE_ENABLE_STAT4 -DSQLITE_ENABLE_COLUMN_METADATA -DSQLITE_ENABLE_MEMORY_MANAGEMENT -DSQLITE_ENABLE_LOAD_EXTENSION -DSQLITE_ENABLE_UNLOCK_NOTIFY -DSQLITE_ENABLE_FTS3_PARENTHESIS -DSQLITE_ENABLE_FTS4 -DSQLITE_ENABLE_FTS4_UNICODE61 -DSQLITE_ENABLE_JSON1 -DSQLITE_ENABLE_FTS5 -DHAVE_USLEEP=1 -DSQLITE_MAX_VARIABLE_NUMBER=99999"; make sqlite3.c'
  
  s.subspec 'standard' do |ss|
    ss.source_files = 'sqlite3.{h,c}'
    ss.framework = 'Foundation', 'Security'
    ss.compiler_flags = '-DNDEBUG', '-DSQLITE_HAS_CODEC', '-DSQLITE_TEMP_STORE=2', '-DSQLITE_SOUNDEX', '-DSQLITE_THREADSAFE', '-DSQLITE_ENABLE_RTREE', '-DSQLITE_ENABLE_STAT3', '-DSQLITE_ENABLE_STAT4', '-DSQLITE_ENABLE_COLUMN_METADATA', '-DSQLITE_ENABLE_MEMORY_MANAGEMENT', '-DSQLITE_ENABLE_LOAD_EXTENSION', '-DSQLITE_ENABLE_FTS4', '-DSQLITE_ENABLE_FTS4_UNICODE61', '-DSQLITE_ENABLE_FTS3_PARENTHESIS', '-DSQLITE_ENABLE_UNLOCK_NOTIFY', '-DSQLITE_ENABLE_JSON1', '-DSQLITE_ENABLE_FTS5', '-DSQLCIPHER_CRYPTO_CC', '-DHAVE_USLEEP=1', '-DSQLITE_MAX_VARIABLE_NUMBER=99999', '-DSQLITE_ENABLE_MATH_FUNCTIONS'
    ss.pod_target_xcconfig = { 'HEADER_SEARCH_PATHS' => '$(PODS_ROOT)/SQLCipher', 'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) SQLITE_HAS_CODEC=1', 'OTHER_CFLAGS' => '$(inherited) -DSQLITE_HAS_CODEC -DSQLITE_TEMP_STORE=2 -DSQLITE_SOUNDEX -DSQLITE_THREADSAFE -DSQLITE_ENABLE_RTREE -DSQLITE_ENABLE_STAT3 -DSQLITE_ENABLE_STAT4 -DSQLITE_ENABLE_COLUMN_METADATA -DSQLITE_ENABLE_MEMORY_MANAGEMENT -DSQLITE_ENABLE_LOAD_EXTENSION -DSQLITE_ENABLE_FTS4 -DSQLITE_ENABLE_FTS4_UNICODE61 -DSQLITE_ENABLE_FTS3_PARENTHESIS -DSQLITE_ENABLE_UNLOCK_NOTIFY -DSQLITE_ENABLE_JSON1 -DSQLITE_ENABLE_FTS5 -DSQLCIPHER_CRYPTO_CC -DHAVE_USLEEP=1 -DSQLITE_MAX_VARIABLE_NUMBER=99999 -DSQLITE_ENABLE_MATH_FUNCTIONS' }
  end
end