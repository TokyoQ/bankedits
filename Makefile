#
# default target
#

help:           ## Show this help.
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep  | sed -e 's/:[^#]*##/ -- /' | sed 's/^##/\n##/'

readme: ## Generate README.md from the template
	utils/generate_readme.sh

siem_phase1_spikes: ## create siem_phase1_spikes docx|pdf from the siem_phase1_spikes directory
	cd siem_phase1_spikes && \
	rm -f .\~lock.*\# && \
	documentorx.py \
		--metadata    doc.yaml \
		--doc         ../preamble.docx \
		--pandoc-glob './*/*.md' \
		--output      '../output/siem_phase1_spikes.{Revision_SHA}.docx' \
		--output      '../output/siem_phase1_spikes.{Revision_SHA}.pdf'