# Innovus Place & Route – Up/Down Counter

This directory contains all files and results related to **physical design (Place & Route)** of the Up/Down Counter using **Cadence Innovus**.

The objective of this stage is to convert the synthesized gate-level netlist into a **physically realizable layout**, ensuring correct power delivery, timing closure, and DRC-clean design.

---

## 📁 Directory Structure

```txt
innovus-pnr/
├── images/ # Layout, placement, CTS, routing, setup/hold screenshots
├── reports/ # Area, power, and timing reports
└── README.md # This file
```


---

## 🧩 Inputs to Physical Design

The following files were used as inputs while creating the Innovus design:

- **Gate-level netlist (`netlist.v`)** – Generated from Genus synthesis
- **SDC file** – Timing constraints
- **Standard cell library (`.lib`)**
- **Technology LEF files (`.lef`)**
- **MMMC file** – Multi-Mode Multi-Corner analysis setup

These inputs ensure timing-aware and process-aware physical design.

---

## 🛠 Tool Used

- **Cadence Innovus**
- Flow executed using **GUI-based commands** (not CLI scripts)

---

## 🏗 Physical Design Flow Executed

### 1️⃣ Design Initialization
- Created a new design by importing:
  - Netlist
  - LEF files
  - Liberty libraries
  - MMMC file
- Verified design integrity before floorplanning

---

### 2️⃣ Floorplanning
- Defined **core-to-IO boundary**
- Set **core utilization**
- Established the physical canvas for placement and routing

This step determines routing congestion and overall chip feasibility.

---

### 3️⃣ Power Planning

#### 🔹 Power Net Definition
- Defined:
  - `VDD` as power net
  - `VSS` as ground net

#### 🔹 Power Rings
- Horizontal: **Metal 9**
- Vertical: **Metal 8**

(Highest metal layers used to reduce IR drop and improve robustness)

#### 🔹 Power Stripes
- Horizontal stripes: **Metal 9**
- Vertical stripes: **Metal 8**
- Number of stripes: **2**

#### 🔹 Special Routing
- Power routing performed using:
  - **Metal 9**
  - **Metal 1**

Ensures power is delivered from rings to standard cells.

---

### 4️⃣ Placement
- Standard cells placed inside the core region
- IO pins positioned
- Placement optimized for congestion and timing

---

### 5️⃣ Clock Tree Synthesis (CTS)
- Clock tree built to minimize skew and latency
- Generated reports:
  - `opt.spec`
  - `trees.rpt`

CTS ensures reliable clock distribution across the design.

---

### 6️⃣ Routing
- Routing performed using **NanoRoute**
- All signal, clock, and power connections completed
- Cells connected to each other and to IO pins

---

### 7️⃣ Physical Verification

#### 🔹 DRC Check
- `verify_drc`
- Ensures layout follows foundry design rules

#### 🔹 Connectivity Check
- `verifyConnectivity`
- Confirms all logical connections are physically complete

---

### 8️⃣ Timing Analysis
- Generated:
  - **Setup timing reports**
  - **Hold timing reports**

These reports identify timing violations (if any).

> If violations exist, further **STA analysis and fixes** would be performed using **Cadence Tempus**.

---

## 📊 Reports Generated (`reports/`)

The `reports/` directory contains:
- **Area reports** – Physical area utilization
- **Power reports** – Static and dynamic power estimation
- **Timing reports** – Setup and hold analysis
- **DRC report** - Correct Geometry according to foundry
- **Connectivity report** - all cells and pins are connected 

These reports are essential for design signoff decisions.

---

## 🖼 Images (`images/`)

This folder contains screenshots from Innovus, including:
- CTS visualization
- Routed layout
- Setup and hold timing views

These images serve as **visual proof of successful PnR execution**.

---

## 🎯 Objective of This Stage

- Achieve **routable, DRC-clean layout**
- Ensure **correct power delivery**
- Verify **timing feasibility**
- Prepare the design for **signoff-level STA and tapeout readiness**

---

## 🔗 Previous Stage

Inputs for this stage were generated from:  
genus/  
which contains RTL synthesis outputs and reports.
 

