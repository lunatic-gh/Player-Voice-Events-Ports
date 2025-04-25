vcpkg_from_github(
        OUT_SOURCE_PATH SOURCE_PATH
        REPO lunatic-gh/Player-Voice-Events
        REF 40a30c4e477a067aab76312d8575153a3d377ee9
        SHA512 09ad3a480f833b9169844759493226978468733780e0d5ea2536aaaa09dc11c721210acbc9d3ed4f61584807c696726f6aa90f71530963d38a6e777f9bc8e19b
        HEAD_REF rewrite
)

vcpkg_configure_cmake(
        SOURCE_PATH "${SOURCE_PATH}"
        PREFER_NINJA
)

vcpkg_build_cmake()
vcpkg_install_cmake()
vcpkg_copy_pdbs()