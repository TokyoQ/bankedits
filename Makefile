#
# default target
#

## Show this help
help:
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep  | sed -e 's/:[^#]*##/ -- /' | sed 's/^##/\n##/'

## Generate README.md from the template
readme:
	utils/generate_readme.sh

## Create docker image from Dockerfile
image:
	sudo docker image build -t tokyoq/bankedits:latest .

## Create config.json file from template
twitconfig: 
	utils/generate_config.sh

## Run bankedits in the container
bankedits:
	#sudo docker container run -d -v $PWD/config/config.json:/bankedits/config.json -v $PWD/config/ranges.json:/bankedits/ranges.json --name bankedits tokyoq/bankedits
	sudo docker container run -d --mount type=bind,source=$(PWD)/config/config.json,target=/bankedits/config.json --mount type=bind,source=$(PWD)/config/ranges.json,target=/bankedits/ranges.json --name bankedits tokyoq/bankedits

## Stop bankedits
clean:
	sudo docker container stop bankedits && \
	sudo docker container rm bankedits
