BUILD_DIR := build

default: clox

# Remove all build outputs and intermediate files.
clean:
	@ rm -rf $(BUILD_DIR)

# Compile a debug build of clox.
debug:
	@ $(MAKE) -f util/c.make NAME=cloxd MODE=debug SOURCE_DIR=c

# Compile the C interpreter.
clox:
	@ $(MAKE) -f util/c.make NAME=clox MODE=debug SOURCE_DIR=c
	@ cp build/clox clox # For convenience, copy the interpreter to the top level.

# Compile the C interpreter as ANSI standard C++.
cpplox:
	@ $(MAKE) -f util/c.make NAME=cpplox MODE=debug CPP=true SOURCE_DIR=c

c_chapters:
	@ $(MAKE) -f util/c.make NAME=chap14_chunks MODE=debug SOURCE_DIR=gen/chap14_chunks
	@ $(MAKE) -f util/c.make NAME=chap15_virtual MODE=debug SOURCE_DIR=gen/chap15_virtual
	@ $(MAKE) -f util/c.make NAME=chap16_scanning MODE=debug SOURCE_DIR=gen/chap16_scanning
	@ $(MAKE) -f util/c.make NAME=chap17_compiling MODE=debug SOURCE_DIR=gen/chap17_compiling
	@ $(MAKE) -f util/c.make NAME=chap18_types MODE=debug SOURCE_DIR=gen/chap18_types
	@ $(MAKE) -f util/c.make NAME=chap19_strings MODE=debug SOURCE_DIR=gen/chap19_strings
	@ $(MAKE) -f util/c.make NAME=chap20_hash MODE=debug SOURCE_DIR=gen/chap20_hash
	@ $(MAKE) -f util/c.make NAME=chap21_global MODE=debug SOURCE_DIR=gen/chap21_global
	@ $(MAKE) -f util/c.make NAME=chap22_local MODE=debug SOURCE_DIR=gen/chap22_local
	@ $(MAKE) -f util/c.make NAME=chap23_jumping MODE=debug SOURCE_DIR=gen/chap23_jumping
	@ $(MAKE) -f util/c.make NAME=chap24_calls MODE=debug SOURCE_DIR=gen/chap24_calls
	@ $(MAKE) -f util/c.make NAME=chap25_closures MODE=debug SOURCE_DIR=gen/chap25_closures
	@ $(MAKE) -f util/c.make NAME=chap26_garbage MODE=debug SOURCE_DIR=gen/chap26_garbage
	@ $(MAKE) -f util/c.make NAME=chap27_classes MODE=debug SOURCE_DIR=gen/chap27_classes
	@ $(MAKE) -f util/c.make NAME=chap28_methods MODE=debug SOURCE_DIR=gen/chap28_methods
	@ $(MAKE) -f util/c.make NAME=chap29_superclasses MODE=debug SOURCE_DIR=gen/chap29_superclasses
	@ $(MAKE) -f util/c.make NAME=chap30_optimization MODE=debug SOURCE_DIR=gen/chap30_optimization

cpp_chapters:
	@ $(MAKE) -f util/c.make NAME=cpp_chap14_chunks MODE=debug CPP=true SOURCE_DIR=gen/chap14_chunks
	@ $(MAKE) -f util/c.make NAME=cpp_chap15_virtual MODE=debug CPP=true SOURCE_DIR=gen/chap15_virtual
	@ $(MAKE) -f util/c.make NAME=cpp_chap16_scanning MODE=debug CPP=true SOURCE_DIR=gen/chap16_scanning
	@ $(MAKE) -f util/c.make NAME=cpp_chap17_compiling MODE=debug CPP=true SOURCE_DIR=gen/chap17_compiling
	@ $(MAKE) -f util/c.make NAME=cpp_chap18_types MODE=debug CPP=true SOURCE_DIR=gen/chap18_types
	@ $(MAKE) -f util/c.make NAME=cpp_chap19_strings MODE=debug CPP=true SOURCE_DIR=gen/chap19_strings
	@ $(MAKE) -f util/c.make NAME=cpp_chap20_hash MODE=debug CPP=true SOURCE_DIR=gen/chap20_hash
	@ $(MAKE) -f util/c.make NAME=cpp_chap21_global MODE=debug CPP=true SOURCE_DIR=gen/chap21_global
	@ $(MAKE) -f util/c.make NAME=cpp_chap22_local MODE=debug CPP=true SOURCE_DIR=gen/chap22_local
	@ $(MAKE) -f util/c.make NAME=cpp_chap23_jumping MODE=debug CPP=true SOURCE_DIR=gen/chap23_jumping
	@ $(MAKE) -f util/c.make NAME=cpp_chap24_calls MODE=debug CPP=true SOURCE_DIR=gen/chap24_calls
	@ $(MAKE) -f util/c.make NAME=cpp_chap25_closures MODE=debug CPP=true SOURCE_DIR=gen/chap25_closures
	@ $(MAKE) -f util/c.make NAME=cpp_chap26_garbage MODE=debug CPP=true SOURCE_DIR=gen/chap26_garbage
	@ $(MAKE) -f util/c.make NAME=cpp_chap27_classes MODE=debug CPP=true SOURCE_DIR=gen/chap27_classes
	@ $(MAKE) -f util/c.make NAME=cpp_chap28_methods MODE=debug CPP=true SOURCE_DIR=gen/chap28_methods
	@ $(make) -f util/c.make name=cpp_chap29_superclasses mode=debug cpp=true source_dir=gen/chap29_superclasses
	@ $(make) -f util/c.make name=cpp_chap30_optimization mode=debug cpp=true source_dir=gen/chap30_optimization

diffs:
	@ mkdir -p build/diffs
	@ -diff --new-file nonexistent/ gen/chap14_chunks/ > build/diffs/chap14_chunks.diff
	@ -diff --new-file gen/chap14_chunks/ gen/chap15_virtual/ > build/diffs/chap15_virtual.diff
	@ -diff --new-file gen/chap15_virtual/ gen/chap16_scanning/ > build/diffs/chap16_scanning.diff
	@ -diff --new-file gen/chap16_scanning/ gen/chap17_compiling/ > build/diffs/chap17_compiling.diff
	@ -diff --new-file gen/chap17_compiling/ gen/chap18_types/ > build/diffs/chap18_types.diff
	@ -diff --new-file gen/chap18_types/ gen/chap19_strings/ > build/diffs/chap19_strings.diff
	@ -diff --new-file gen/chap19_strings/ gen/chap20_hash/ > build/diffs/chap20_hash.diff
	@ -diff --new-file gen/chap20_hash/ gen/chap21_global/ > build/diffs/chap21_global.diff
	@ -diff --new-file gen/chap21_global/ gen/chap22_local/ > build/diffs/chap22_local.diff
	@ -diff --new-file gen/chap22_local/ gen/chap23_jumping/ > build/diffs/chap23_jumping.diff
	@ -diff --new-file gen/chap23_jumping/ gen/chap24_calls/ > build/diffs/chap24_calls.diff
	@ -diff --new-file gen/chap24_calls/ gen/chap25_closures/ > build/diffs/chap25_closures.diff
	@ -diff --new-file gen/chap25_closures/ gen/chap26_garbage/ > build/diffs/chap26_garbage.diff
	@ -diff --new-file gen/chap26_garbage/ gen/chap27_classes/ > build/diffs/chap27_classes.diff
	@ -diff --new-file gen/chap27_classes/ gen/chap28_methods/ > build/diffs/chap28_methods.diff
	@ -diff --new-file gen/chap28_methods/ gen/chap29_superclasses/ > build/diffs/chap29_superclasses.diff
	@ -diff --new-file gen/chap29_superclasses/ gen/chap30_optimization/ > build/diffs/chap30_optimization.diff

.PHONY: c_chapters clean clox cpp_chapters cpplox debug default diffs
