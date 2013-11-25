APP_NAME:=emongo

UPSTREAM_GIT:=https://github.com/JacobVorreuter/emongo
UPSTREAM_REVISION:=d8e5d0a2b328e6131aa188341c8e58a066971b47
RETAIN_ORIGINAL_VERSION:=true

ORIGINAL_APP_FILE:=$(CLONE_DIR)/ebin/$(APP_NAME).app
DO_NOT_GENERATE_APP_FILE=true

define package_rules

$(CLONE_DIR)/ebin/$(APP_NAME).app: $(CLONE_DIR)/.done

#$(ORIGINAL_APP_FILE): $(CLONE_DIR)/ebin/$(APP_NAME).app
#	cp $(CLONE_DIR)/ebin/$(APP_NAME).app $(ORIGINAL_APP_FILE)

$(PACKAGE_DIR)+clean::
	rm -rf $(GENERATED_DIR) $(EBIN_DIR)

endef
