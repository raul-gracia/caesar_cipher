![Caesar Cipher](http://upload.wikimedia.org/wikipedia/commons/thumb/2/2b/Caesar3.svg/800px-Caesar3.svg.png)
### Installation
```bash
$ gem install caesar_cipher
```
### Usage
##### Ruby Script

```ruby
require 'caesar_cipher'

# with default shift of 4
caesar = CaesarCipher::Caesar.new
caesar.cipher   "hello" # returns "lipps"
caesar.decipher "asvph" # returns "world"

# with different shift
caesar = CaesarCipher::Caesar.new 8
caesar.cipher   "hello" # returns "pmttw"
caesar.decipher "ewztl" # returns "world"
```

##### Command Line

```bash
$ caesar_cipher --help
Usage: caesar_cipher [options] text

Is a simple Caesar Cipher ruby implementation

v0.0.1

Options:
    -h, --help                       Show command line help
        --version                    Show help/version info
    -d, --decipher                   Decipher
    -s, --shift SHIFT                Shift
                                     (default: 4)
    -o, --output FILE                Output File


$ caesar_cipher "hello"         # returns "lipps"
$ caesar_cipher -d "asvph"      # returns "world" 
$ caesar_cipher -s 8 "hello"    # returns "pmttw"
$ caesar_cipher -s 8 -d "ewztl" # returns "world"
```