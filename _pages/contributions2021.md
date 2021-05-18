---
layout: default
toc: true
title: Ryan Johnson's Contributions to SymbiFlow
---

---

# SymbiFlow/fpga-tool-perf

### - [Pull Request #266](https://github.com/SymbiFlow/fpga-tool-perf/pull/266): exhaust.py - saving table output to a text file
Opened __12 November 2020__, Merged __soon__

Modified `exhaust.py` / +18 / -0
1. Saves the table output to the terminal of the most recent exhaust run to a text file, so that you can go back and review it.

### - [Pull Request #282](https://github.com/SymbiFlow/fpga-tool-perf/pull/282): Adding JSON and Verilog Formatters
Opened __1 December 2020__, Merged __soon__

Modified `Makefile`, `.github/workflows/ci.yml`, 3 `environment.yml` files, a `requirements.txt` file, 30 verilog files, and 32 json files / +42,749 / -57,399
1. Initially intended to be a cursory formatting improvement for a number of files.
2. It was requested that I make these formatting improvements standard for the project by adding json and verilog formatters to the `make format` command.
3. Added mjson for json formatting
4. Added verible for verilog formatting
5. Formatted json and verilog files

---

# SymbiFlow/symbiflow-examples

### [Pull Request #147](https://github.com/SymbiFlow/symbiflow-examples/pull/147): Adding Python, JSON, and Verilog Formatters
Opened __11 May 2021__, Merged __17 May 2021__

Created `Makefile` and `.style.yapf`, and Modified `environment.yml`, `requirements.txt`, `.gitignore`, a json file, 2 python files, and 10 verilog files / +16,609 / -16,200
1. Updated .gitignore file
2. Minor syntax corrections
3. Added yapf for python formatting
4. Added mjson for json formatting
5. Added verible for verilog formatting
6. Formatted all python, json, and verilog files

---

# SymbiFlow/fpga-interchange-tests

### [Pull Request #---](https://github.com/SymbiFlow/fpga-interchange-tests/pull/---): Adding a Verilog Formatter to the Makefile
Opened __May 2021__, Merged __eventually__

Created `...`, Modified `...` / + / -
1. Updated the `Makefile` to include `make format`, an option which would format all the verilog files to a speicific style.

### [Pull Request #---](https://github.com/SymbiFlow/fpga-interchange-tests/pull/---): Adding to the README
Opened __May 2021__, Merged __eventually__

Created `...`, Modified `...` / + / -
1. Updated `README.md` to include download and environment install instructions. 

---

# SymbiFlow/symbiflow-arch-defs

### [Pull Request #---](https://github.com/SymbiFlow/symbiflow-arch-defs/pull/---): Adding Formatters to the Makefile
Opened __May 2021__, Merged __eventually__

Created `...`, Modified `...` / + / -
1. Updated Makefile to include `make format`, an option which would format all the verilog files to a specific style.
