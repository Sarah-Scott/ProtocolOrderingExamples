# Attestation Protocol Ordering Examples

Example attestation protocol analyses using the AttestationProtocolOrdering 
Coq library. Orders attestation protocols by their difficulty to attack.

## Meta

- Author(s):
  - Sarah Johnson
  - Anna Fritz
  - Perry Alexander
- Compatible Coq versions: 8.20 or later
- Additional dependencies: `AttestationProtocolOrdering`

## Building and installation instructions

### Prerequisites
Clone the AttestationProtocolOrdering repository at
git@github.com:Sarah-Scott/AttestationProtocolOrdering.git
and follow the build instructions in the README.md to install 
a local version of the library.

### Provided Examples
Generate and compile the provided examples with:
```
(cd scripts/ ; bash setup.sh <foldername>)
make
```
Option for `<foldername>` is *examples*. 

The Chase output in XHTML can be found in the `<foldername>/chase-outputs` 
directory. The attack trees in Coq can be found in the `<foldername>` directory.

### User-Defined Examples
Copy the `template` directory and give it a name of your choosing. 
```
cp -r template/ <foldername>
```

Add pairs of files with names in the form `<basename>.cop` and `<basename>.gln` 
to the `chase-inputs` directory containing a Copland protocol and its corresponding 
system assumptions respectively. 

Complete the `components.v` file by defining a type that represents the set of 
system components appearing in your protocols and completing a proof that this 
type has decidable equality. 

Generate and compile your example with:
```
(cd scripts/ ; bash setup.sh <foldername>)
make
```

To analyze and order your protocols, create a Coq file. Import the AttestationProtocolOrdering 
library and the generated attack trees with:
```
Require Import AttestationProtocolOrdering.<libname>.
Require Import ProtocolOrderingExamples.<basename>.
```
Options for `<libname>` are *attacktree*, *attacktree_normalization*, *attacktree_ordering*,
*set_minimization*, *set_ordering*, and *set_relationship*.




## Documentation

### Scripts
Todo

### Provided Examples
Todo