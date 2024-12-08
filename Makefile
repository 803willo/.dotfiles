LINUX_SCRIPT=./bin/linux.sh
CLEANUP_SCRIPT=./bin/cleanup.sh

#run the linux setup script
linux: clean
	chmod +x $(LINUX_SCRIPT)
	$(LINUX_SCRIPT)

#run the cleanup script
clean:
	chmod +x $(CLEANUP_SCRIPT)
	$(CLEANUP_SCRIPT)
