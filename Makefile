wuv=/mnt/c/Users/katao/.local/bin/uv.exe
target=main.dist/main.exe
srcs=main.py

all: $(target)
$(target): $(srcs)
	@$(wuv) run python -m nuitka -j 8 --remove-output --windows-console-mode=disable --standalone --enable-plugin=tk-inter main.py 

clean:
	@rm -rf main.dist/
