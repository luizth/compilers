
.PHONY: generate analyze

generate:
ifeq ($(strip $(SPEC)),)
	@echo Error: Must specify SPEC argument (SPEC=example).
	@echo You may check ./specs/ folder for options.
	@exit 1

else
	@.\bin\jflex-1.9.1\jflex.bat .\specs\$(SPEC).flex -d .\models\

endif

analyze:
ifeq ($(strip $(MODEL)),)
	@echo Error: Must specify MODEL argument (MODEL=example).
	@echo You may check ./models/ folder for options.
	@exit 1
endif
ifeq ($(strip $(IN)),)
	@echo Error: Must specify IN argument (IN=example).
	@echo Input files should go to ./inputs/ folder.
	@exit 1
else
	@.\bin\jdk-22\bin\java.exe .\models\$(MODEL).java .\inputs\$(IN)
endif
