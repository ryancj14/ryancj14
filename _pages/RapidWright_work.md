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
                Read DCP:     1.175s
   Write Logical Netlist:     0.097s
  Write Physical Netlist:     0.091s
    Read Logical Netlist:     0.006s
   Read Physical Netlist:     0.040s
               Write DCP:     0.189s
------------------------------------------------------------------------------
         [No GC] *Total*:     1.599s
```
The java file is located at `RapidWright/src/com/xilinx/rapidwright/interchange/PhysicalNetlistExample.java`

---

### Schemas

I found a schema class in `PhysicalNetlist`.java that seems to have hardcoded raw bytes representing different segment readers, two of which are referenced and used earlier in the file. Not sure what this does.

A similar schema class can be found in `LogicalNetlist.java`, `References.java`, and `DeviceResources.java`


