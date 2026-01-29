# 🚀 Synchronous Up/Down Counter: RTL-to-GDSII Flow

This repository contains an end-to-end **ASIC digital design flow project**, starting from **RTL Verilog** and progressing through **logic synthesis** and **physical design (PnR)** using industry-standard EDA tools.

A complete digital design project showcasing the full VLSI implementation flow, from Verilog RTL to Physical Design.

---

## 📁 Project Structure

```text
.
├── rtl_verilog/
│   ├── code/
│   │   ├── top_module.v
│   │   ├── up_counter.v
│   │   ├── down_counter.v
│   │   └── testbench.v
│   ├── waveform.png
│   └── README.md
│
├── genus/
│   └── (logic synthesis files and reports)
│
├── innovus_pnr/
│   └── (floorplanning, placement, routing, and signoff data)
│
└── README.md

```

---

## 🧠 Design Overview
* **Design Type:** Synchronous Digital Design
* **Functionality:** Configurable Up/Down Counter
* **Clocked Logic:** Yes
* **Reset Support:** Yes
* **Verification:** RTL Simulation with waveform analysis

---

## 🔧 Tools Used
| Stage | Tool |
| :--- | :--- |
| **RTL Design & Simulation** | Cadence Incisive |
| **Logic Synthesis** | Cadence Genus |
| **Physical Design (PnR)** | Cadence Innovus |

---

## 📊 Flow Summary
1.  **RTL Design**: Verilog implementation of counter logic.
2.  **RTL Verification**: Functional simulation using a testbench to ensure design intent.
3.  **Logic Synthesis**: Conversion of RTL into a gate-level netlist using **Genus**.
4.  **Physical Design**: Floorplanning, placement, and routing (PnR) using **Innovus**.

---

## 📌 Notes
* Each folder contains tool-specific scripts, design constraints (SDC), and timing/area reports.
* The `RTL` folder includes simulation waveforms to verify functional correctness.
* This project is intended for learning, demonstration, and portfolio purposes.

---

## 👤 Author
**Vivek**  
*ASIC / VLSI Design Enthusiast*

---
*Feel free to explore, fork, or improve this project!*
