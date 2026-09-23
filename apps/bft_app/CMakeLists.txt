set(TARGET_NAME bft_app)

# App source files
set(BFT_APP_SOURCES
    fsw/src/bft_app.c
    fsw/src/bft_voter.c
)

# App include directories
set(BFT_APP_INCLUDES
    fsw/src
    fsw/platform_inc
    fsw/mission_inc
)

# cFS Build wrapper to define the app
add_cfe_app(${TARGET_NAME} ${BFT_APP_SOURCES})

# Specify include directories
target_include_directories(${TARGET_NAME} PUBLIC ${BFT_APP_INCLUDES})

# Add dependencies (OSAL, CFE Core)
target_link_libraries(${TARGET_NAME} cfe_core osal)
