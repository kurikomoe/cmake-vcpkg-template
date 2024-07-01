# use `just preset=x64-release config build` to override this
preset := "x64-debug"
target := "main"

[linux]
init:
    bash ./scripts/init_linux.sh

clean:
    rm -rf .build

config:
    cmake --preset {{preset}}

build:
    cmake --build --preset {{preset}}

run:
    ./.build/{{preset}}/{{target}}
