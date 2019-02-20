S3_GLOBAL_ERROR_BUCKET := "global-atlassian-web-error-handler"


.PHONY: *

update-error-page:
	@aws s3 sync . "s3://${S3_GLOBAL_ERROR_BUCKET}" \
		--acl public-read \
		--delete \
		--exclude ".envrc" \
		--exclude ".gitignore" \
		--exclude ".git/*" \
		--exclude "Makefile"
