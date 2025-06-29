return {
  LrPluginName = "WabiScript",
  LrToolkitIdentifier = "com.ubangiink.wabiscript",
  LrSdkVersion = 10.0,
  VERSION = { major = 0, minor = 1, revision = 0, build = 1 },

  LrPluginInfoUrl = "https://github.com/UbangiInk/WabiScript",
  LrPluginInfoProvider = "WabiScriptInfoProvider.lua",

  LrExportMenuItems = {
    {
      title = "Generate Zen Caption",
      file = "wabiCaption.lua",
    },
  },

  LrInitPlugin = "init.lua",

  LrHttp = {
    allowHTTPS = true
  }
}