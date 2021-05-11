---
layout: default
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

Modified `.github/workflows/ci.yml`, `Makefile`, environment files, and automatically formatted json and verilog files / +42,749 / -57,399
1. Initially intended to be a cursory formatting improvement for a number of files.
2. It was requested that I make these formatting improvements standard for the project by adding json and verilog formatters to the `make format` command.

---

# SymbiFlow/symbiflow-examples

### [Pull Request #---](https://github.com/SymbiFlow/symbiflow-examples/pull/---): Adding Python, JSON, and Verilog Formatters
Opened __soon__, Merged __eventually__

Created `1`, Modified `2` / + / -
1. Updated .gitignore file
2. Minor syntax corrections
3. Added yapf for python formatting
4. Added mjson for json formatting
5. Added verible for Verilog and SystemVerilog formatting