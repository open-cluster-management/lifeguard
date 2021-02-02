.PHONY: install-oc-extension
## install the lifegaurd project as an oc extension
install-oc-extension:
	@cp $(PWD)/clusterpools/apply.sh /usr/local/bin/oc-clusterpool_apply
	@echo "Added an oc extension for 'oc clusterpool-apply'"
	@cp $(PWD)/clusterpools/delete.sh /usr/local/bin/oc-clusterpool_delete
	@echo "Added an oc extension for 'oc clusterpool-delete'"
	@cp $(PWD)/clusterclaims/apply.sh /usr/local/bin/oc-clusterclaim_apply
	@echo "Added an oc extension for 'oc clusterclaim-apply'"
	@cp $(PWD)/clusterclaims/delete.sh /usr/local/bin/oc-clusterclaim_delete
	@echo "Added an oc extension for 'oc clusterclaim-delete'"
	@cp $(PWD)/clusterclaims/get_credentials.sh /usr/local/bin/oc-clusterclaim_get_credentials
	@echo "Added an oc extension for 'oc clusterclaim-get-credentials'"

.PHONY: uninstall-oc-extension
## Uninstall the lifegaurd project as an oc extension
uninstall-oc-extension:
	@rm /usr/local/bin/oc-clusterpool_apply
	@echo "Removed the oc extension for 'oc clusterpool-apply'"
	@rm /usr/local/bin/oc-clusterpool_delete
	@echo "Removed the oc extension for 'oc clusterpool-delete'"
	@rm /usr/local/bin/oc-clusterclaim_apply
	@echo "Removed the oc extension for 'oc clusterclaim-apply'"
	@rm /usr/local/bin/oc-clusterclaim_delete
	@echo "Removed the oc extension for 'oc clusterclaim-delete'"
	@rm /usr/local/bin/oc-clusterclaim_get_credentials
	@echo "Removed the oc extension for 'oc clusterclaim-get-credentials'"

