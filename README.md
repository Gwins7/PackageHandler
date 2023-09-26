FPGANIC-PackageHandler
=======================

This repository contains the design of **packagehandler** hardware module in the CMAC-QDMA based FPGA Network Interface Controller (**FPGANIC**), which is my internship work in **ICT,CAS**, and also the project as my bachelor graduate thesis project. It is created using **chisel-template** repository, and the developing HDL is **Chisel**.

According to the overviewing perspective of the project, the packagehandler module contains the user-defined logic, and its function is to filter or distribute network packages to QDMA queues by their certain features, so that the package can be handled by different processes (threads) or in different priority. 

This repository is maintained by Gwins7(me); I recommend to open the project by Intellij IDEA.
