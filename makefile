OUTPUT_FILE = README.md
SCRIPT_FILE = guessinggame.sh
NUMBER_OF_LINES := $(shell wc -l < $(SCRIPT_FILE))
DATE_TIME := $(shell date)

$(OUTPUT_FILE): $(SCRIPT_FILE)
	@echo "# Guessing Game" > $(OUTPUT_FILE)
	@echo "" >> $(OUTPUT_FILE)
	@echo "## Information about the project" >> $(OUTPUT_FILE)
	@echo "- Date and Time at which make was run: $(DATE_TIME)" >> $(OUTPUT_FILE)
	@echo "- Number of lines of code in guessinggame.sh: $(NUMBER_OF_LINES)" >> $(OUTPUT_FILE)
