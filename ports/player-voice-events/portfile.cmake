vcpkg_from_github(
        OUT_SOURCE_PATH SOURCE_PATH
        REPO lunatic-gh/Player-Voice-Events
        REF 50bf099033447ad8001ebd6446d07fa6ba74f2c4
        SHA512 5b2e465c3e604ce59f8a3d920addb05e177b19e80a22bc4ceaa84cb71717e66d9937b1e54ab6048885066e5b7b106ed72615631af55c2cce9342334fabf076f1
        HEAD_REF rewrite
)

vcpkg_configure_cmake(
        SOURCE_PATH "${SOURCE_PATH}"
        PREFER_NINJA
)

vcpkg_build_cmake()
vcpkg_install_cmake()
vcpkg_copy_pdbs()