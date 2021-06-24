---
layout: page
toc: true
title: RapidWright Notes
slug: rapidwright-notes
type: projects
---

### Running interchange to read a dcp file and write it back out

Commands in bash and tcl to achieve result:
```
vivado
open_project /home/ryancj14/Lab3_StructuralSystemVerilog/Lab_3-Structural_System_Verilog.xpr
reset_run synth_1
launch_runs synth_1 -jobs 2
open_run synth_1 -name synth_1
write_checkpoint -force 220.dcp
write_edif 220.edf

mv 220.dcp RapidWright/220.dcp
mv 220.edf RapidWright/220.edf
source rapidwright.sh
cd RapidWright
java com.xilinx.rapidwright.interchange.PhysicalNetlistExample 220.dcp output.dcp
```
Output of final command:
```
==============================================================================
==                       DCP->Interchange Format->DCP                       ==
==============================================================================
-               Read DCP:     1.175s
-  Write Logical Netlist:     0.097s
- Write Physical Netlist:     0.091s
-   Read Logical Netlist:     0.006s
-  Read Physical Netlist:     0.040s
-              Write DCP:     0.189s
------------------------------------------------------------------------------
-        [No GC] *Total*:     1.599s
```
The java file is located at `RapidWright/src/com/xilinx/rapidwright/interchange/PhysicalNetlistExample.java`

---

### Schemas

I found a schema class in `PhysicalNetlist`.java that seems to have hardcoded raw bytes representing different segment readers, two of which are referenced and used earlier in the file. Not sure what this does.

A similar schema class can be found in `LogicalNetlist.java`, `References.java`, and `DeviceResources.java`

---

### Meeting w/ Prof Nelson

- get everything he has into interchange
- work with Ethan to get something vpr can use
- Symbiflow wants to make interchange rep. the center for all things design related 
  - get things in and out of vivado 
  - anything that process fpga designs need a way in and out of interchange schema
- RapidWright is the center right now, but the vision is that interchange becomes the center.
- attempted standard representations - edif xdl etc.
- logical - mapped to luts and flipflops
- place and route reads logical netlist (for design) and reads device netlist (for device) and creates a placed physical netlist. Physical netlist can generate a bitstream.
- device -> where every tile is - what types are there + all the parts in the tile, every pip connection, 
- thousands of intl tiles (all identical), to the right sometimes clb and sometimes intl, sometimes the wire doesn't connect to anything
- representing the differences is the challenge
- node is the collection of the wires connecting to other cells/tiles
- the node is tied to a number of pips that can be turned on to connect to other nodes. Where does each node lead to and route, so forth
- the only thing we are messing with is going from interchange to a routing resource graph. 
- Generate a routing resource graph from an interchange device format.
- The question is: can we create a folded rr graph and run the router on it?
- Symiflow has a python interface into interchange: python-fpga-interchange
- take the physical netlist and use the python packages attached to python-fpga-interchange to access the structure and make any changes to it.
- learn how to use this code so that Ethan can use it.
- load up my last physical netlist output and run code on it.
  - actually don't worry about this. run the physical device example in rapidwright interchange and send an email to Reilly to meet up and see what he is doing. 
    - see how he is generating the interchange and reading it and pulling it apart.
- do the same with a device representation.
- Take ethan's python code and where he uses sql replace it with python into queries into the interchange format.
- when you verify ethan's new folded representation 

---

### Meeting w/ Reilly

- xdlrc has all the tiles and wires and everything. Corey has been looking at what bits turn on what features.
- xdlrc shows everything could possibly be used. xilinx stopped using xdlrc files. Reilly is generating an xdlrc file from an interchange device resources file.
- Create interchange format with RapidWright. Held in an interchange schema. 
- device-resources.py has python stuff for the device resources. located in python-interchange. Other members can still be accessed through capnp.
- 95% of Reilly's code uses device-resources.py and 5% accesses directly from capnp using python.
- export design to a dcp and an edf and then 
- Update Rapidwright using directions on the project readme
- you can update email to automatically move emails related to symbiflow to a seperate inbox.