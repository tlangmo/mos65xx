# Makefile to assemble a single Apple II program with Merlin

# Set the assembler
AS = merlin32

# Directory for the source file
SRC = al03_beep.s

# Output binary file
OUTPUT = al03_beep

# Default target
all: $(OUTPUT) dsk

# Rule to assemble the source file into a binary
$(OUTPUT): $(SRC)
	$(AS) $(SRC) 

linapple:
	../tools/linapple/build/bin/linapple -b --d1 ../tools/dos33.dsk --d2 al03.dsk

dsk: 
	java -jar ../tools/AppleCommander-acx-1.9.0.jar mkdisk -d al03.dsk -n al03 --dos
	java -jar ../tools/AppleCommander-acx-1.9.0.jar import -d al03.dsk al03_beep --raw -n AL03BEEP



# Clean up
clean:
	rm  $(OUTPUT)
	rm _FileInformation.txt
	rm al03.dsk

# Phony targets
.PHONY: all clean