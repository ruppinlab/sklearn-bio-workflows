# sklearn-bio-workflows

## Installation

Install and set up [Miniconda3](https://docs.conda.io/en/latest/miniconda.html)

Clone git repository and submodules:

```bash
git clone git@github.com:ruppinlab/sklearn-bio-workflows.git
cd sklearn-bio-workflows
git submodule update --init --recursive
```

To install conda environment on Intel architecture hardware:

```bash
conda env create -f envs/sklearn-bio-workflows-mkl.yml
```

Otherwise:

```bash
conda env create -f envs/sklearn-bio-workflows.yml
```

Activate the environment:

```bash
conda activate sklearn-bio-workflows
```

Install non-conda packages into environment:

```bash
./utils/install_nonconda_r_pkgs.R
```

## Updates

Update the git repository and submodules:

```bash
git pull
git submodule update --recursive
```

To update the conda environment on Intel architecture hardware:

```bash
conda env update -f envs/sklearn-bio-workflows-mkl.yml
```

Otherwise:

```bash
conda env update -f envs/sklearn-bio-workflows.yml
```
