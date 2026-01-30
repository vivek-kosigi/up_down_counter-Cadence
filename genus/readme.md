# Genus Synthesis – Up/Down Counter

This directory contains all files related to **RTL synthesis using Cadence Genus** for the Up/Down Counter design.

The goal of this stage is to synthesize the RTL Verilog design into a **gate-level netlist**, apply timing constraints, and analyze synthesis reports.

---

## 📁 Directory Contents

```txt
genus/
├── synthesis_commands.tcl # Genus synthesis command script
├── counter.sdc # Timing and design constraints
├── images/ # Synthesis result snapshots (schematic, reports)
├── reports/ # Synthesis reports (area, timing, power)
└── README.md # This file
```


---

## 🧩 Required External Files

Although not present inside this folder, the following RTL files are **required for synthesis** and are available in the `rtl_verilog/` directory:

```txt
rtl_verilog/
├── top_module.v
├── up_counter.v
└── down_counter.v
```


These RTL files are **read into Genus** using relative paths inside the synthesis script.

---

## 📜 Description of Files

### 1️⃣ `synthesis_commands`
This TCL script contains all the **commands used to run synthesis** in Cadence Genus, including:
- Reading RTL Verilog files
- Reading technology libraries
- Applying SDC constraints
- Elaborating and synthesizing the design
- Generating reports (area, timing, power)
- Writing synthesized netlist (if enabled)

This script enables **reproducible synthesis** using a single command.

---

### 2️⃣ `counter.sdc`
This file defines the **design constraints**, such as:
- Clock definition
- Input/output delays
- Timing environment assumptions

The SDC is critical for **accurate timing-driven synthesis**.

---

### 3️⃣ `images/`
This folder contains screenshots captured from Genus after running synthesis, such as:
- RTL schematic
- Technology-mapped schematic
- Report snapshots

These images serve as **visual proof of synthesis execution and results**.

---

### 4️⃣ `reports/`
This folder contains **text-based synthesis reports** generated after successful synthesis, including:
- **Area report** – cell/gate count and silicon area
- **Timing report** – setup timing analysis
- **Power report** – dynamic and leakage power estimation

These reports are used to **evaluate design quality and feasibility** before moving to physical design.

---

## ▶️ How to Run Synthesis

From the `genus/` directory:

```bash
source synthesis_commands.tcl
```

--- 

## Prerequisites:

- RTL files available in ../rtl_verilog/
- Technology library paths correctly set in the TCL script
- counter.sdc path correctly referenced

---

## 📊 Outputs Generated

After synthesis, Genus produces:

- Gate-level netlist
- Area, timing, and power reports (stored in reports/)
- Technology-mapped schematic views

These outputs serve as inputs for the physical design stage.
