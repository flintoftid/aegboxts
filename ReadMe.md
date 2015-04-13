![](https://bytebucket.org/uoyaeg/aegboxts/Physical_Objects/Photos/CWAB-OF-A2.jpg "AEG Box Test Suite")

# AEG Box Test Suite: A modular test suite for validation of electromagnetic solvers

The Applied Electromagnetics Group ([AEG][]) box test suite, *aegboxts*,
is a suite of validation test cases for computational electromagnetics ([CEM][])
simulation tools. The test-cases were designed with to be representative of 
typical Electromagnetic Compatibility ([EMC][]) applications and are therefore 
of particular utility for validating tools for use in this application area. 
The test suite was primarily developed in the [Department of Electronics][] at the
[University of York][] and has been used and developed in a number of large 
research programmes (see [Credits](#Credits) below).

## Test suite features

The test-suite includes the following components that can be assemble into a range
of overall test-cases:

* A metal enclosure with an interchangable "front plate" (EN).

* The options for the front plate are:

    - Absent, i.e. open-face (OF).
  
    - Completely closed by a metal plate (CF).
  
    - A plate with large circular and square apertures (GP).
  
    - A plate with an array of small circular holes (PP).
  
    - A plate with a representation of an overlapped panel joint (PJ).

* Wires can be connected between two test-port on top face of the box:

    - Short monopole probes (PAPB).

    - A straight wire (SW).
  
    - A curve wire (CW).
  
    - An eight wire loom (LM).
  
* The internal cavity can be load with lossy dielectric material:

    - Absent, i.e. no loading (A0).
  
    - A cube of lossy dielectric on the back left corner of he box floor (A1).
  
    - A cube of lossy dielectric in the centre of he box floor (A2).
  
Models for the materials are provided in the specification.

## Specification

The test-suite specification is provided in a written [Specification][] Document.

## CAD

A basic CAD file for the main components of the test suite in [Gsmh][]'s ".geo" format
is included in the source distribution. This includes the EN, A0, A1, A2, SW, PA, PB,
CW and GP elements.

## Meshes

Unstructured meshes for the basic configurations can be generated from the [Gmsh][] CAD.

## Physical objects

Many parts of the test suite have been implemented physically and measured in the [AEG][]
laboratories at the [University of York][]. Below are some photographs of the physical 
test suite elements and the measurement of particular cases.

![](https://bytebucket.org/uoyaeg/aegboxtc/wiki/EN.jpg "EN - enclosure")

![](https://bytebucket.org/uoyaeg/aegboxtc/wiki/EN.jpg "CW - curved wire")

![](https://bytebucket.org/uoyaeg/aegboxtc/wiki/PP.jpg "PP - perforated plate")

![](https://bytebucket.org/uoyaeg/aegboxtc/wiki/LM.jpg "LM - loom")

The physical test objects may be available to borrow for research purposes. Please contact 
[Dr Ian Flintoft], <ian.flintoft@york.ac.uk> or [Dr John Dawson], <john.dawson@york.ac.uk> for details.

## Measurement data

The data-sets for a number of test-cases that have been measured are available in the test suite 
distribution.

## Publications

The following publications have made use of elements of the test suite:

1. I. D. Flintoft, J. F. Dawson, L. Dawson and A. C. Marvin, “A modular test-case for validation of electromagnetic solvers in electromagneitc compatibility applications”, submitted to IEEE Transactions on Electromagnetic Compatibility, March 2015.

2. C. Christopoulos, J. F. Dawson, L. Dawson, I. D. Flintoft, O. Hassan, A. C. Marvin, K. Morgan, P. Sewell, C. J. Smartt and Z. Q. Xie, “Characterisation and Modelling of Electromagnetic Interactions in Aircraft”, Proceedings of the Institution of Mechanical Engineers, Part G: Journal of Aerospace Engineering: Special Issue on FLAVIIR, Vol. 224, No. 4, 2010, pp. 449-458. DOI: [10.1243/09544100JAERO567](http://dx.doi.org/10.1243/09544100JAERO567).

3. D. Tallini, J. F. Dawson, I. D. Flintoft, M. Kunze and I. Munteanu, “Virtual HIRF Tests in CST STUDIO SUITE - A Reverberant Environment Application”, International Conference on Electromagnetics in Advanced Applications (ICEAA2011), Special Session on Numerical Methods for Challenging Multi-Scale Problems Torino, Italy, 12-16 September, 2011. pp. 849-852. DOI: [10.1109/ICEAA.2011.6046454](http://dx.doi.org/10.1109/ICEAA.2011.6046454).

4. I. D. Flintoft, J. F. Dawson, L. Dawson, and A. C. Marvin, “A modular test-case for validation of electromagnetic solvers in electromagnetic compatibility applications”, Computational Electromagnetics for EMC 2013 (CEMEMC'13), Granada, Spain, 19-21 March, 2013.

5. G. J. Rigden, “EMA3D Numerical Results for the CEMEMC’12 Case 2: Validation BoxEMA3D Numerical Results for the CEMEMC’12 Case 3: LLSC Test for Shielded Harness”, Computational Electromagnetics for EMC 2013 (CEMEMC'13), Granada, Spain, 19-21 March, 2013.

6. J. F. Dawson, C. J. Smartt, I. D. Flintoft and C. Christopoulos, “Validating a Numerical Electromagnetic Solver in a Reverberant Environment”, IET Seventh International Conference on Computation in Electromagnetics, 7-10 April 2008, Quality Hotel, Brighton, UK, pp. 42-43. Print ISBN: 978-0-86341-891-4. DOI: <a href=http://dx.doir.org/10.1049/cp:20080214>10.1049/cp:20080214<\a>.

## How to contribute

We welcome any contributions to the development of the test suite, including:

* CAD files.

* Meshes.

* Improving the user documentation.

* Additional elements and test cases.

* Simulation results for particular configurations.

Please contact [Dr Ian Flintoft], <ian.flintoft@york.ac.uk>, if you are interested in helping with
these or any other aspect of development.

## Licence

The test suite specification and associated files are licensed under the terms described in the file [Licence.md][].

## Contacts

[Dr Ian Flintoft][], <ian.flintoft@york.ac.uk>

[Dr John Dawson][], <john.dawson@york.ac.uk>

## Credits

The components of the test-suite have been developed over a number of years and research programmes. We grateful acknowledge
the following sources of support:

1. The FLAVIIR project which was a five year research programme looking at technologies for future 
   unmanned air vehicles (UAV) funded jointly by BAE SYSTEMS and EPSRC [FLAVIIR][]

2. The EU FP7 High Intensity Radiated Field Synthetic Environment (HIRF-SE) research programme
   that developed a simulation framework to aid aeronautical certification against electromagnetic threats [HIRFSE][].

In addition we acknowledge the following for there specific contributions and guidance of various aspects of the
test-suite:

1. John-Phillipe Parmantier from ONERA.

2. John Kazik from IDS-UK.

## Related links

* The AEG structured mesh generator [AEG Mesher](https://bitbucket.org/uoyaeg/aegmesher).

* The AEG FDTD solver [Vulture](https://bitbucket.org/uoyaeg/vulture). 

* The GGI TLM solver [GGI_TLM](https://github.com/ggiemr/GGI_TLM). 


[Dr Ian Flintoft]: http://www.elec.york.ac.uk/staff/idf1.html
[Dr John Dawson]: http://www.elec.york.ac.uk/staff/jfd1.html
[University of York]: http://www.york.ac.uk
[Department of Electronics]: http://www.elec.york.ac.uk
[AEG]: http://www.elec.york.ac.uk/research/physLayer/appliedEM.html
[FLAVIIR]: http://www.flaviir.com
[HIRFSE]: http://ec.europa.eu/research/transport/projects/items/hirf_se_en.htm
[ONERA]: http://www.onera.fr/en
[IDSUK]: https://www.idscorporation.com/uk

[CEM]: http://en.wikipedia.org/wiki/Computational_electromagnetics
[EMC]: http://en.wikipedia.org/wiki/Electromagnetic_compatibility
[Gmsh]: http://geuz.org/gmsh
[Mercurial]: http://mercurial.selenic.com

[CC-BY-ND]: http://creativecommons.org/licenses/by-nd/4.0/deed.en_GB
[Licence.md]: https://bitbucket.org/uoyaeg/aegboxts/src/tip/Licence.md
[Specification]: https://bitbucket.org/uoyaeg/aegboxts/src/tip/Specification/Specification_v1.doc
