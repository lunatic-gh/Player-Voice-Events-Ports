vcpkg_from_github(
        OUT_SOURCE_PATH SOURCE_PATH
        REPO lunatic-gh/Player-Voice-Events
        REF c30f66e42b3edabda5a0d933abbc09b67e06426e
        SHA512 0
        HEAD_REF rewrite
)

vcpkg_configure_cmake(
        SOURCE_PATH "${SOURCE_PATH}"
        PREFER_NINJA
        OPTIONS -DBUILD_TESTS=off -DSKSE_SUPPORT_XBYAK=on
)

vcpkg_install_cmake()
vcpkg_cmake_config_fixup(PACKAGE_NAME PlayerVoiceEvents CONFIG_PATH lib/cmake)
vcpkg_copy_pdbs()

file(GLOB CMAKE_CONFIGS "${CURRENT_PACKAGES_DIR}/share/PlayerVoiceEvents/PlayerVoiceEvents/*.cmake")
file(INSTALL ${CMAKE_CONFIGS} DESTINATION "${CURRENT_PACKAGES_DIR}/share/PlayerVoiceEvents")
file(INSTALL "${SOURCE_PATH}/cmake/PlayerVoiceEvents.cmake" DESTINATION "${CURRENT_PACKAGES_DIR}/share/PlayerVoiceEvents")

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/share/PlayerVoiceEvents/PlayerVoiceEvents")

file(INSTALL "${SOURCE_PATH}/LICENSE" DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}" RENAME copyright)
