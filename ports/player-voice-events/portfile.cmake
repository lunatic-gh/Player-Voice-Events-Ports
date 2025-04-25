vcpkg_from_github(
        OUT_SOURCE_PATH SOURCE_PATH
        REPO lunatic-gh/Player-Voice-Events
        REF 5cf25e03787961334781cbdff0727a1dc86185a3
        SHA512 644574ba482353995d15961a0e5d9faa8d4fd5b9b14b5ec79b61a6b859e81714cb04474d1d65c12e0319bd0d4fe677f2b90f997864b7e41864c35ca05e8df1d4
        HEAD_REF rewrite
)

vcpkg_configure_cmake(
        SOURCE_PATH "${SOURCE_PATH}"
        PREFER_NINJA
)

vcpkg_build_cmake()
vcpkg_install_cmake()
vcpkg_copy_pdbs()