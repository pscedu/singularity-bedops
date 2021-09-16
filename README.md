![Status](https://github.com/pscedu/singularity-bedops/actions/workflows/main.yml/badge.svg)
![Status](https://github.com/pscedu/singularity-bedops/actions/workflows/pretty.yml/badge.svg)
![Issue](https://img.shields.io/github/issues/pscedu/singularity-bedops)
![forks](https://img.shields.io/github/forks/pscedu/singularity-bedops)
![Stars](https://img.shields.io/github/stars/pscedu/singularity-bedops)
![License](https://img.shields.io/github/license/pscedu/singularity-bedops)

# singularity-bedops
<img src="https://bedops.readthedocs.io/en/latest/_static/logo_with_label_v3.png" width="100%" />

Singularity recipe for BEDOPS.

## Installing the container on Bridges 2
Copy the

* `SIF` file
* and the `bedops` script

to `/opt/packages/bedops/2.4.39`.

Copy the file `modulefile.lua` to `/opt/modulefiles/bedops` as `2.4.39.lua`.

## Building the image using the recipe
### To build the image locally
Run the script `build.sh` to build image locally.

```
bash ./build.sh
```

### To build the image remotely
Run the script `rbuild.sh` to build image remotely.

```
bash ./rbuild.sh
```

## To run tests
To run the available tests, run the command

```
bash ./test.sh
```

---
Copyright © 2020-2021 Pittsburgh Supercomputing Center. All Rights Reserved.

The [Biomedical Applications Group](https://www.psc.edu/biomedical-applications/) at the [Pittsburgh Supercomputing Center](http://www.psc.edu) in the [Mellon College of Science](https://www.cmu.edu/mcs/) at [Carnegie Mellon University](http://www.cmu.edu).
