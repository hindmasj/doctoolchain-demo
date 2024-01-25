# DocToolchain Demo

Following the steps of

* [DocToolchain User Guide](https://doctoolchain.org/docToolchain/v2.0.x/010_manual/20_install.html)
* [DocToolchain GitHub Project](https://github.com/docToolchain/docToolchain)

## Start Your Own Project

The init script will download dtcw script and run some simple setup steps. Run the init scipt and press 'y' when prompted.

```
./init.sh

...

Config file '/project/docToolchainConfig.groovy' does not exist'
[ant:input]
[ant:input] do you want me to create a default one for you? (y, n)
y

...
```

Then you need to edit *docToolchainConfig.groovy* to suit your local documentation.

And finally add *docToolchainConfig.groovy* to your project to preserve your settings. Add the *init.sh* script to add the kickstart.

## Configure The Toolchain

Configure the tool chain by editing *docToolchainConfig.groovy* to tell it where your document source files are.

The minimum configuration is to define the input, output and the list of files to manage. The files require a format.

```
outputPath = 'build'
inputPath = 'docs'
inputFiles = [
        [file: 'index.adoc', formats: ['html']]
]
```

## Build The Documents

For best results, write the documents in [AsciiDoc](https://docs.asciidoctor.org/asciidoc/latest/). Run the *dtcw* script to generate the HTML.

```
./dtcw generateHTML
```

The results appear in *build/html5*.