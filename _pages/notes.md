---
layout: page
toc: true
title: Project Notes
slug: project-notes
type: projects
---

---

# common-config repository project

This project is related to Symbiflow ideas Issue #51 and others to add lots of 
[Issue #51 - Create a "common configuration" git repository which is auto-merged into SymbiFlow projects](https://github.com/SymbiFlow/ideas/issues/51).

This issue is a compilation of issues #50, #49, and other needed additions into one idea issue:

[Issue #50 - Add an .editorconfig file to all SymbiFlow repositories](https://github.com/SymbiFlow/ideas/issues/50) 

[Issue #49 - Create a symbiflow-sphinx-docs-common repository](https://github.com/SymbiFlow/ideas/issues/49) 

Prof Nelson's description:

>Here is a short description of the project you are being assigned to:
>
>Symbiflow aims to produce a completely open source FPGA design toolchain.  They have a large presence on github where they have many repositories (73 to be exact), where each repository roughly corresponds to one project.  One of the challenges is with such a large effort is imposing some order and uniformity on the various repositories so that they all use the same code formatting, copyright licensing, documentation style, etc.  One of the open issues they have relates to creating a single common configuration github repository which is then included into every other repository to provide the desired uniformity.  This project focuses on creating such a common configuration repository and modifying all other repositories to use it.
>
>Completing the project will require you to become educated on github and git to a deep level (specifically regarding git subtrees), coding standards, tools for formatting code in various languages, python environments, etc.  And, much of this standardization will be enforced via continuous integration tools (like discussed yesterday at the beginning of the Prof Goeders’ talk on Github Actions although Symbiflow uses a different CI framework).   In this work you will end up working with other members of the open source community both at Google as well as others around the world.  
>
>The end product of your work will be a standardizaton of the symbiflow github repositories with regards to .editorconfig files, copyright/license checking tools, auto-formatting tools, code of conduct, contribution guides, documtation, and python environments.  You can read more about this at  https://github.com/SymbiFlow/ideas/issues/51.
>
>You will be supervised in this work by Ryan Johnson, a 2nd year Immerse student who has been working with Symbiflow for the past year.  I believe you will very much working with Ryan - he is an excellent student and has significant experience with this project. I have CC-ed him on this email.  Please contact him to discuss the project and how you can get started.  Our hope is you can start to ramp up effort on the project as boot camp starts to ramp down in the coming days.

Steps:
* Add a comment on issue #51, and tag Tim
  * My Comment: @mithro This seems like a project we could take on here at BYU. We would start a reasonably new student on it. Our idea is that we will create a new repo that will serve as a container for the items on your checklist, and start our student on adding items to the repo. This project would continue throughout the summer, and anything that isn't done by our student could be added by other SymbiFlow contributors in the future. Our student would probably start by adding the .editorconfig file and some 'documentation around policies' items. Do you think this will be useful? Do you have any other thoughts/direction for us?
  * Tim's Response: 
* Study the existing issues and resources, including make-env and git-trees.
  * ...
* Create the repository.
  * https://github.com/ryancj14/common-config
* 

# Interchange project

From Professor Nelson:
Here is how I see it at this point:

1. A goal of Symbiflow is to make Interchange THE central representation for devices and designs.  That is, to go from one tool or system to another will use Interchange as the standard representation format.  From everything I have read and heard, Interchange will play a major role in much of Symbiflow.

2. An example of the above would be to have Interchange provide the device description and routing resource graph for the VPR tools to run.  And, what VPR outputs could be converted back to Interchange.

3. In Ethan’s work on folded rrg representations we would like to work towards being able to test these new folded representations in VPR.  The problem is VPR has traditionally relied on their own flat rrg data structure.

4. This leads to 2 sub-tasks we are pushing on:
   - Ethan is working to create an API that the VPR tools have to go through to get to the rrg representation.  Just this week he has made major progress toward this.  Once that is done the tools will be isolated from the rrg implementation and then it (the rrg representation) can be changed at will without affecting the tools.

   - We will then need to be able to provide new rrg representations to VPR.  One place for these to come from is from the Interchange representation (I believe that is the desire from the Symbiflow people).  So, this task will focus on how to do this.  One option would be to create a tool to produce the existing rrg representation from Interchange.  This would allow testing of that path without any change to VPR at all (would not rely on Ethan’s new API).  A second option would be to bypass the existing rrg and directly produce a new folded representation from the Interchange format.  This would rely on Ethan’s API being in place and seems to be the more forward looking path.

To begin with, it seems your best starting task will be to come up to speed on the Interchange format.  Things to focus on include: 

1. Exactly what does it contain to describe FPGA devices?  Although it also has a schema to represent designs that is of less importance to us since we are focusing on devices.

2. How do you generate device descriptions?  How do you load them back into other tools such as Python or C++?  I would start by focusing on Python but C++ will undoubtedly be needed at some point as well.

3. For example, how would you write out a list of all tiles or sites or nodes to a file from a device description that comes from Interchange?

4. How can we modify Ethan’s folding code for nodes and wires to pull its information from Interchange rather than from the SQL database that litghost’s sample code originally did?  Doing so would allow us to compare the size of the folded representation to normal CapnProto representations (see below for where that could help in other ways).

I will be posting and asking Maciej and Karol today for a chance to visit with them and understand what they are doing with Interchange and nextpnr.,  They are the Ant Micro guys that Tim has hired to work on Symbiflow.  The hope is we can learn from what they are doing how to begin to make progress on the Interchange->VPR path.  I am told their next task after nextpnr is to address the Interchange->VPR path so they will be doing of much what needs to be done.  If we can plug into their work and add to is for our own purposes that would be a nice outcome.

I am aware that recently they have been trying to dump device descriptions of bigger devices than the xc7a100t we all use just to test the Interchange format.  In the process they have run into CapnProto limitations on sizes of things and the conversations they have posted suggest they are interested in doing a folded representation sooner rather than later to address this.  That might easily be the starting point of our work, to enable Interchange to be able to dump larger device descriptions.  In fact, that might be a major outcome of our graph folding work, independent of our getting such descriptions into VPR.    I will keep you in the loop on my communications with them.

Steps:
* Install capnp-java and RapidWright to my computer, following instructions from Reilly.
  * https://github.com/byuccl/gmt/tree/master/interchange/docs
* Find related repositories and information:
  * https://github.com/byuccl/gmt -- Private byu repo for the GMT project.
  * https://github.com/SymbiFlow/python-fpga-interchange - This python module is designed to read and write FPGA interchange files, and provide some interoperability with other common formats.
  * https://github.com/byuccl/python-fpga-interchange - Fork of python-fpga-interchange being worked on by reillymck.
  * https://github.com/SymbiFlow/fpga-interchange-schema - This repository contains the capnp schema for the FPGA interchange. Cloned inside RapidWright in the interchange folder. Also used by python-fpga-interchange.
  * https://github.com/SymbiFlow/fpga-interchange-tests - This repository contains end-to-end tests to verify the correctness of the whole FPGA interchange flow.
* What does interchange contain to describe FPGA Devices?
  * ...
* How do you generate device descriptions? How do you load them into other tools such as C++ and Python?
* How would you write out a list of all tiles or sites or nodes to a file from a device description that comes from Interchange?
* How can we modify Ethan’s folding code for nodes and wires to pull its information from Interchange rather than from the SQL database that litghost’s sample code originally did?