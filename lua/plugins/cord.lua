return {

  {
    "vyfor/cord.nvim",
    build = "./gradlew linkReleaseSharedNative --no-daemon --no-build-cache",
  },
}
