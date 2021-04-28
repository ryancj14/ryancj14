---
layout: default
title: Ryan Johnson's Contributions to SymbiFlow
---

---

# SymbiFlow/fpga-tool-perf

### X [Pull Request #151](https://github.com/SymbiFlow/fpga-tool-perf/pull/151): `--verbose` functionality in `fpgaperf.py` and `exhaust.py`
Opened **16 June 2020**, Closed **1 July 2020**

### X [Pull Request #176](https://github.com/SymbiFlow/fpga-tool-perf/pull/176): Implementing `--verbose` functionality using logger
Opened and Approved **2 July 2020**, Closed **22 July 2020**

### ✓ [Pull Request #186](https://github.com/SymbiFlow/fpga-tool-perf/pull/186): Using Logger to implement `--verbose` functionality
Opened and Approved **22 July 2020**, Merged **23 July 2020**

Modified `fpgaperf.py`, `exhaust.py`, and `runner.py` / +42 Lines / -5 Lines
1. Added a logger for both `fpgaperf.py` and `exhaust.py`, that is turned on if --verbose is specified and messages that will be printed through the logger under the DEBUG level.
2. Changed the default directory to which `exhuast.py` runs will be saved, which fixes an error that comes up whenever there are `fpgaperf.py` runs in the directory where `exhuast.py` is saving its runs.

### ✓ [Pull Request #180](https://github.com/SymbiFlow/fpga-tool-perf/pull/180): Adding New Project Instructions to README
Opened and Approved **10 July 2020**, Merged **23 July 2020**

Modified `README.md` / +106 Lines / -72 Lines
1. Added instructions for inserting a project into fpga-tool-perf.
2. Changed the ordering of sections in `README.md` for clarity.

### ✓ [Issue #179](https://github.com/SymbiFlow/fpga-tool-perf/issues/179): Problems with Miniconda when Previously Installed
Opened **10 July 2020**, Closed **27 April 2021**

`fpga-tool-perf` successfully builds, but loses some functionality, when MiniConda has been previously installed to the machine (perhaps in another project). The MiniConda reinstall initiated by `make env` causes the MiniConda environments to lose their names and may remove functionality of a different project. Also, `source env.sh` does not function as desired after this.

### ✓ [Issue #189](https://github.com/SymbiFlow/fpga-tool-perf/issues/189): Adding wiki to fpga-tool-perf
Opened **27 July 2020** and Closed **3 August 2020**

I compiled my notes on `fpga-tool-perf` to create an example wiki, which was approved by Tim 'Mithro' Ansell. I created an issue to discuss inserting the wiki into `fpga-tool-perf`.

See the wiki created by me in August 2020 at https://github.com/SymbiFlow/fpga-tool-perf/wiki. The wiki includes a Home page, 4 wiki pages, and a Sidebar.

### ✓ [Pull Request #203](https://github.com/SymbiFlow/fpga-tool-perf/pull/203): Timing Consistency Between Toolchains
Opened **3 August 2020**, Merged **15 October 2020**

Modified `toolchain.py`, `vivado.py` and `symbiflow.py` / +57 / -67
1. Changed `total` timing to include `prepare` timing in `vivado.py`.
2. Changed `total` timing to not include adding runtimes in `symbiflow.py` as it is not part of the toolchain run.
3. Removed 'nop' timing. Fixes [#221](https://github.com/SymbiFlow/fpga-tool-perf/issues/221), meaning that if this pull request is merged, issue [#221](https://github.com/SymbiFlow/fpga-tool-perf/issues/221) will automatically be closed.

### ✓ [Pull Request #204](https://github.com/SymbiFlow/fpga-tool-perf/pull/204): Directory Enhancements for Usability
Opened **3 August 2020**, Merged **27 Sep 2020**

Modified `runner.py` and `toolchain.py` / +3 / -2
1. Adds the `Writing to <out_prefix>` statement to the `exhaust` run. Serves the same purpose as it does in the `fpgaperf` run.
2. Changes `os.mkdir()` to `os.makedirs()` in the `fpgaperf` run. Serves the same purpose as it does in the `exhaust` run. Amoung other things, this allows the user to use the `--out-prefix` and `--out-dir` arguments separately as intended.

### ✓ [Pull Request #205](https://github.com/SymbiFlow/fpga-tool-perf/pull/205): Implemented `--overwrite` Functionality
Opened **3 August 2020**, Merged **12 August 2020**

Modified `fpgaperf.py`, `toolchain.py`, and `runner.py` / +18 / -4
1. Adds functionality to the `--overwrite` argument. When `--overwrite` is specified by the user, the folder (to which the files from the run will be saved) is first deleted. This ensures that the run does not interact with files from a previous run of the same project.

### ✓ [Pull Request #206](https://github.com/SymbiFlow/fpga-tool-perf/pull/206): Implemented New `--list-combinations` Argument
Opened **3 August 2020**, Merged **11 August 2020**

Created `vendors.json` and the `other` directory and Modified `fpgaperf.py` and 12 files in the `project` directory / +125 / -37
1. Creates and adds functionality to the `--list-combinations` argument. This lists every runnable combination of project, toolchain, and board in `fpga-tool-perf`.
2. This pull reqest fixes [#202](https://github.com/SymbiFlow/fpga-tool-perf/issues/202), meaning that if this pull request is merged, issue [#202](https://github.com/SymbiFlow/fpga-tool-perf/issues/202) will automatically be closed.
3. Created the `vendors.json` file and added a vendor specification to each of the `project` .json files. This way, only feasible board and toolchain combinations will be listed by `--list-combinations`.

### ✓ [Pull Request #207](https://github.com/SymbiFlow/fpga-tool-perf/pull/207): Exhaust Printing Fix
Opened **4 August 2020**, Merged **12 August 2020**

Modified `exhaust.py`, `vivado.py`, `icecube.py`, `radiant.py` and 6 files in the `project` directory / +30 / -21
1. Fixes an issue with the `exhaust.py` runs print_stats() function. It would previously print stats for every build in the folder, but now it only prints stats for the specified toolchains and/or projects that were specified and built in this run.
2. Standardizes toolchain and project names to be fully consistent between what the user inputs and what the output says. (For example, changes toolchain names to be consistently `synth-main`, such as in `yosys-vivado` and project names to be the same as what the .json specifies)

### ✓ [Pull Request #219](https://github.com/SymbiFlow/fpga-tool-perf/pull/219): Exhaust: Argument Fix and `--board`
Opened **13 August 2020**, Merged **11 September 2020**

Modified `exhaust.py` / +28 / -8
1. Gives the `--project` and `--toolchain` arguments choices like their counterparts in `fpagperf.py`. This way, `exhuast.py` can recognize bad arguments and print out the user's options.
2. Creates and adds functionality to the `--board` argument. This means you can now specify a board or boards you want tested by the `exhuast.py` run.

### ✓ [Pull Request #220](https://github.com/SymbiFlow/fpga-tool-perf/pull/220): Implemented New `--list-boards` Argument
Opened **13 August 2020**, Merged **11 September 2020**

Modified `fpgaperf.py` and `symbiflow.py` / +14 / -5
1. Creates and adds functionality to the `--list-boards` argument. This lists every board available for testing in `fpga-tool-perf` according to the `boards.json` file.
2. Removes an unnecessary import from `symbiflow.py`.

### ✓ [Issue #221](https://github.com/SymbiFlow/fpga-tool-perf/issues/221): 'nop' Runtime
Opened **13 August 2020**, Closed **15 October 2020**

I created an issue to discuss removing the 'nop' runtime from the `fpgaperf.py` run.

This issue is attached to pull request #203.

### ✓ [Pull Request #223](https://github.com/SymbiFlow/fpga-tool-perf/pull/223): Exhaust `--overwrite` Argument
Opened **17 August 2020**, Merged **11 September 2020**

Modified `exhaust.py` and `runner.py` / +9 / -3
1. `--overwrite` is a basic argument that was easily added and could be useful in many circumstances. Serves the same function as in `fpgaperf.py`. In fact, it passes the argument along to fpagperf's run.

### ✓ [Pull Request #226](https://github.com/SymbiFlow/fpga-tool-perf/pull/226): Fixed Project Files and Updated Readme
Opened **18 August 2020**, Merged **25 September 2020**

Modified `README.md`, `vendors.json`, and 4 files in the `project` directory / +32 / -26
1. Updates project .json files to use `yosys-vivado` instead of `vivado-yosys`.
2. Same for `vendors.json`.
3. Updated project names with underscores to instead use dashes.
4. Updated `README.md` to reflect this and other recent updates to the code.

### ✓ [Pull Request #227](https://github.com/SymbiFlow/fpga-tool-perf/pull/227): Exhaust Task List Generation
Opened **19 August 2020**, Closed **25 September 2020** (incoorporated into [kamilrakoczy's pull request #235](https://github.com/SymbiFlow/fpga-tool-perf/pull/235) of the same name)

Modified `fpgaperf.py` and `tasks.py` / +18 / -37
1. Makes inital changes to resolve [issue #215](https://github.com/SymbiFlow/fpga-tool-perf/issues/215).

### ✓ [Pull Request #229](https://github.com/SymbiFlow/fpga-tool-perf/pull/229): Exhaust Results Improvements
Opened **24 August 2020**, Merged **12 October 2020**

Modified `exhaust.py` / +2 / -1
1. Fixes two errors: (Update: these fixes were made irrelevant by other PRs and removed)
    - If there are no results, then the summary table is still printed, but with no entries, avoiding another error message for dividing by zero. (This fix was associated somewhat with my work in my previous PR and implemented by kamilrakoczy) 
2. Adds the total number of runs to the summary table at the end of the run for improved clarity for the user.

### ✓ [Pull Request #266](https://github.com/SymbiFlow/fpga-tool-perf/pull/266): exhaust.py - saving table output to a text file
Opened **12 November 2020**, Merged **soon**

Modified `exhaust.py` / +18 / -0
1. Saves the table output to the terminal of the most recent exhaust run to a text file, so that you can go back and review it.

### ✓ [Pull Request #282](https://github.com/SymbiFlow/fpga-tool-perf/pull/282): Adding JSON and Verilog Formatters
Opened **1 December 2020**, Merged **sometime**

Modified...
1. Initially intended to be a cursory formatting improvement for a number of files.
2. It was requested that I make these formatting improvements standard for the project by adding json and verilog formatters to the `make format` command.

---

# SymbiFlow/symbiflow-examples

### [Pull Request #---](https://github.com/SymbiFlow/symbiflow-examples/pull/---): Minor Fixes for Ease of Use
1. Updated .gitignore file
2. Minor syntax corrections
3. Minor changes to .v and .sdc code for understandability and consistency between projects.

### [Pull Request #---](https://github.com/SymbiFlow/symbiflow-examples/pull/---): Added Up-counter Test
1. Adding Jason's up-counter test

----------------------------------
Initially created by Ryan Johnson, August 2020.