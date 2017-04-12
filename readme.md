Guetzli Batch Compression Script
===

Simple script to compress entire folder of images rather than doing them one at a tim

### Prerequisites:
Install [Guetzli](https://github.com/google/guetzli). Duh.

### Installation:
`curl -L -o ~/optimize.sh https://rawgit.com/sowhatdoido/guetzli-batch-script/master/optimize.sh && chmod 755 ~/optimize.sh`

### Usage:
`~/optimize.sh {[--options]} {relative folder path}`


### Options
`--verbose`: Prints Guetzli compression messages to terminal

`--quality`: Parameter to set quality in units equivalent to libjpeg quality

`--target`: Allows you to select a single file to compress instead of running the whole folder
