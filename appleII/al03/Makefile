# Makefile to assemble a single Apple II program with Merlin

# Set the assembler
AS = merlin32

# Directory for the source file
SRC = al03_beep.s

# Output binary file
OUTPUT = al03_beep

# Default target
all: $(OUTPUT)

# Rule to assemble the source file into a binary
$(OUTPUT): $(SRC)
	$(AS) $(SRC) 

dsk:
	../tools/linapple/build/bin/linapple
# Clean up
clean:
	rm  $(OUTPUT)
	rm _FileInformation.txt

# Phony targets
.PHONY: all clean