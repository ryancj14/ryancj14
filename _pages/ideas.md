---
layout: page
toc: true
title: Project Ideas
slug: project-ideas
type: projects
---

---

## From SymbiFlow/ideas

[Issue #50 - Add an .editorconfig file to all SymbiFlow repositories](https://github.com/SymbiFlow/ideas/issues/50) -- This seems like a really good first project. It basically entails forking the repository, making a branch, addding a `.editorconfig` file, and making a pull request... for each symbiflow repository. I imagine that the .editorconfig file would be the same for each repo, and that there are people you could reach out to on each repo to test whether it breaks anything and how it would need to be modified. The person would then note each updated repository in the issue.

[Issue #47 - Updated the repositories to comply with the current copyright best practices](https://github.com/SymbiFlow/ideas/issues/47) -- There has been much done pertaining to this issue, but there are many unfinished parts that could be easily worked on by undergrad students, in communication with current contributors. It is pretty important to make sure everything is up to date with the copyright best practices so that anyone can use it.

[Issue #53 - Add Contributing Guide to SymbiFlow projects](https://github.com/SymbiFlow/ideas/issues/53) -- Currently, only a few projects which constitute SymbiFlow have proper contribution guidelines. Most of them need new guidelines or need to have the existing ones updated. Also, the style and formatting should be unified across all guides.

[Issue #56 - SymbiFlow projects documentation audit](https://github.com/SymbiFlow/ideas/issues/56) -- In this task you will perform an audit of documentation in order to verify its completeness, correctness, accuracy and wording. The task will involve close collaboration with developers and engineers to try to anticipate the users’ questions and issues even before they run into them.

[Issue #7 - Create a JSON schema for the Yosys JSON format](https://github.com/SymbiFlow/ideas/issues/7) -- Learn JSON Schema and create one for the jsons created by yosys. Communicate with yosys contributors to know where to add this. (P.S netlistsvg, mentioned below in Tim's Ideas, has written up a json schema that could be helpful here. A link to that can be found in the issue.)

[Issue #52 - Open FPGA for absolute beginners](https://github.com/SymbiFlow/ideas/issues/52) -- Gather information and combine it into a guide for newcomers to the world of FPGA chips. After covering the basics, the document would describe the aims of Symbiflow. The Writer would receive guidance, advice, and necessary information from a mentor.

[Issue #54 - Symbiflow ecosystem map](https://github.com/SymbiFlow/ideas/issues/54) -- Map providing comprehensive information about the open FPGA ecosystem and the relationships between projects. Could be used in the previous project or coordinate with it.

[Issue #46 - Add common ASIC/FPGA file formats to GitHub/linguist](https://github.com/SymbiFlow/ideas/issues/46) -- The student doing this project should reach out to Tim to see if this would be a good contribution they could make. It seems like it should be pretty straightforward and helpful.

[Issue #36 - Improve FASM documentation to boost adoption of the standard](https://github.com/SymbiFlow/ideas/issues/36) -- This issue points down to a number of issues in Symbiflow/fasm that need work done on them.

[Issue #8 - Convert yosys documentation to be sphinx compatible](https://github.com/SymbiFlow/ideas/issues/8) -- Learn Latex and Sphinx and convert the current documentation from Latex to Sphinx. It seems that this may be done or nearly done. If so, get in touch with Tim in the issue asking if there is anything else that needs to be done or if this can be closed.

[Issue #41 - RTL Schematic View](https://github.com/SymbiFlow/ideas/issues/41) -- This issue relates to Tim's desire for improved netlistsvg and other visualization tools. See that section under Tim's Ideas below for more info.

---

## From SymbiFlow/fpga-tool-perf

[Issue #309 - A single JSON file containing all meta.json data would be useful](https://github.com/SymbiFlow/fpga-tool-perf/issues/309) -- This is something that a student would do in python, editing the `exhaust.py` file.

[Issue #281 - Reintroduce all.json to merge all tests results](https://github.com/SymbiFlow/fpga-tool-perf/issues/281) -- This one is likely related to the previous issue, so take them both into account and communicate with @acomodi if you work on that.

[Issue #324 - Replace local license checks with the SymbiFlow/actions/checks@main action](https://github.com/SymbiFlow/fpga-tool-perf/issues/324) -- Editing something in the .github folder to add to symbiflow/actions/checks.

[Issue #162 - Documentation for each of the designs tested](https://github.com/SymbiFlow/fpga-tool-perf/issues/162) -- This would be helpful to record the information specified for each design somewhere in the documentation, or atleast add an example for one design, so that others can pick up with the designs they test.

[Issue #3 - Add support for extracting the VPR "routing information table"](https://github.com/SymbiFlow/fpga-tool-perf/issues/3) -- This has been an issue since 2018 and still hasn't been done. It would require intercepting the printed tables in the vpr run and adding them to our printout in fpga-tool-perf

[Issue #22 - Add timeout mechanism](https://github.com/SymbiFlow/fpga-tool-perf/issues/22) -- This has been an issue since 2018 and still hasn't been done. I don't know how this is done, but some research could be done to find out how to implement it.

---

## From SymbiFlow/symbiflow-examples

[Issue #139 - Documentation: checkout of symbiflow-examples should be part of Installation part](https://github.com/SymbiFlow/symbiflow-examples/issues/139) -- Updating documentation. Not sure exactly what is wanted here, but you'll figure it out if you look into the related issue and dcoumentation.

[Issue #56 - Add Music box example from FPGA4Fun to symbiflow-examples](https://github.com/SymbiFlow/symbiflow-examples/issues/56) -- I don't know exactly the process to add this, but with communication with Tim, you could take this project on.

[Issue #57 - Add all fpga4fun - "FPGA projects - Basic" examples to repository](https://github.com/SymbiFlow/symbiflow-examples/issues/57) -- This would be a continuation of the previous project, adding the rest of the FPGA4Fun examples.

[Issue #59 - Redundant conda download when doing 'make README.rst'](https://github.com/SymbiFlow/symbiflow-examples/issues/59) -- Add the stuff from make README.rst to make env and make any other requested changes here.

[Issue #38 - Convert the README docs to rst and make sure it is included in symbiflow.rtfd.io](https://github.com/SymbiFlow/symbiflow-examples/issues/38) -- Study the symbiflow-examples documentation and communicate with Tim for direction on this project.

[Issue #95 - Improve the quality of images in the sphinx-based documentation](https://github.com/SymbiFlow/symbiflow-examples/issues/95) -- Improve the Spinx documentation, including the images.

Set up and Run symbiflow-examples and then make a document, if it doesn't exist, on how to add a project and run it using the Symbiflow-examples setup.

---

## From SymbiFlow/symbiflow-rr-graph

[Issue #12 - Add linting and formatting checking](https://github.com/SymbiFlow/symbiflow-rr-graph/issues/12) -- This would mean looking at other repos to see how they handle formatting in make format and adding that to this repo. One would need to download the repo and understand exactly what needed formatting. (Ryan has added some formatting changes to fpga-tool-perf and could help with this)

[Issue #7 - Get documentation up on ReadTheDocs](https://github.com/SymbiFlow/symbiflow-rr-graph/issues/7) -- While I haven't worked on ReadTheDocs documentation before, I think it wouldn't be hard to approach and learn, and then work with collaborators on the best documentation.

---

## Other Ideas

[prjxray - Issue #777 - Terminate the looping fuzzers when TODO list stops changing](https://github.com/SymbiFlow/prjxray/issues/777) -- This seems interesting as a possible project within prjxray.

[prjxray - Issue #150 - Add README for all the fuzzers](https://github.com/SymbiFlow/prjxray/issues/150) -- Add a `README.md` file to each fuzzer folder. Get in communication with others to gather info for each readme matching the style of the already existing README files. (Mason documented lots of the information you will need).

[sv-tests - Issue #1346 - Pull request "Compared test results" small feature requests](https://github.com/SymbiFlow/sv-tests/issues/1346) -- Going into python and adding some minor features to the printout, like color and totals to make output more readable and interesting.

[symbiflow-arch-defs - Many Issues - 'make env'](https://github.com/SymbiFlow/symbiflow-arch-defs) -- See if `make env` is working. If it isn't, one could use git bisect to find out where it stopped working and get in touch with a contributor to see what they can do to help fix it.

All project managers seem to have in common a desire for better and more streamlined and uniform documentation. Adding to a project's documentation or creating it is a good idea. Make sure it is in the right format and the right place and has all the necessary and relevant information.

---

## Tim's Ideas

a) Getting all the test suites running using **SLURM** to improve the speed of testing runs. -- Slurm is an open source, fault-tolerant, and highly scalable cluster management and job scheduling system for large and small Linux clusters. It stands for **S**imple **L**inux **U**tility for **R**esource **M**anagement. An introduction to Slurm can be found [here](https://www.youtube.com/watch?v=NH_Fb7X6Db0), in the form of a 7-part youtube video. There are also some [resoures regarding SLURM from BYU](https://rc.byu.edu/wiki/?id=General+Batch+Information).

b) Testing and debugging more designs with the tools (IE Expanding the symbiflow-examples repository). -- Pretty straight-forward. We can add more symbiflow example designs to the symbiflow-examples repository.

c) More documentation and tests for every primitive and functionality found in the devices (basically you should never need to read the Xilinx documentation XAPPS). -- Not sure what he wants here, but the Xilinx documentation I found when I searched "Xilinx documentation XAPPS" is something I have come across before. I think he just wants everything documented in Symbiflow so that a person never has to go to that Xilinx documentation. This might be referring to improved documentation in the prjxray repository.

d) Improving netlistsvg and other visualization tooling. -- the netlistsvg repository can be found [here](https://github.com/nturley/netlistsvg/tree/d6690b668d7c7414304365780cc9aac43d8c7d31). It is one of the third-party downloads made by the symbiflow-arch-defs repository. netlistsvg draws an SVG schematic from a yosys JSON netlist. This can be generated with the write_json command. It uses elkjs for layout. [This website](https://neilturley.dev/netlistsvg/) show a kind of demo, but [the README.md](https://github.com/nturley/netlistsvg/tree/d6690b668d7c7414304365780cc9aac43d8c7d31#netlistsvg) is also helpful. There is a huge discussion about improving netlistsvg and other visualization tooling found in [symbiflow/ideas issue #41](https://github.com/SymbiFlow/ideas/issues/41).

A) Get http://projectf.io/ working with SymbiFlow -- The referenced website can be reached by [clicking here](http://projectf.io/). Projectf is not just a website. It is essentially a set of introductory modules to using FPGAs. The content of each module is found in a blog post and a corresponding folder of code in [the projf-explore repository](https://github.com/projf/projf-explore). I imagine that Tim wants us to add each module's code to symbiflow-examples, so that people going through the modules will be able to build the designs with Symbiflow.

B) Get http://fpgacpu.ca/fpga/index.html working with SymbiFlow -- I think this is the same deal as the previous project. Simply add the modules and designs represented by fpgacpu to Symbiflow somewhere.

C) Get GNURadio examples working with SymbiFlow -- I think this is the same deal as the previous project. Simply add the modules and designs represented by GNURadio to Symbiflow somewhere. [GNURadio homepage](https://www.gnuradio.org/)

---

## From nturley/netlistsvg

[Issue #104 - Add skins for missing Yosys RTL cells](https://github.com/nturley/netlistsvg/issues/104) -- Adding different images/skins to cells of the yosys json.

[Issue #79 - How to run tests in test](https://github.com/nturley/netlistsvg/issues/79) -- An issue made by Tim. Add to the readme documentation on how to run the tests. It looks like someone already wrote the process. Testing that method and then adding to the readme should be a relatively easy and quick way to help in this repo.

[Issue #64 - Support for nested netlists?](https://github.com/nturley/netlistsvg/issues/64) -- An issue made by Tim. This is already almost done by a large pull request that changes about 1000 lines and adds almost as many. This pull request can be found [here](https://github.com/nturley/netlistsvg/pull/92). After making sense of the original repository, one would want to clone his repo and update it to rebase on top of master, and resolve the conflicts. Get in touch with nturley and make sure it gets through.

[Issue #7 - Allow manual placement of pins](https://github.com/nturley/netlistsvg/issues/64) -- An issue made by Tim. This seems to be a recurring problem in multiple issues, but hasn't been done. It may not be possible to do, but it is probably worth looking into. After reaching a basic understanding of the repo's functionality, maybe start by leaving a comment in this issue asking what you can do, and presenting any initial ideas you have based on your understanding of the repo.

One other thing that could be done is proposing that issues are closed if they aren't actually issues or have been resolved.
