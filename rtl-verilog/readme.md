
---

## 📘 **`rtl_verilog/README.md`**

```md
# RTL Verilog – Up/Down Counter

This directory contains the **RTL Verilog implementation** and **simulation results** for a synchronous up/down counter design.

---

## 📁 Directory Structure

```text
rtl_verilog/
├── code/
│   ├── top_module.v
│   ├── up_counter.v
│   ├── down_counter.v
│   └── testbench.v
│
├── waveform.png
└── README.md
```

## 🧩 Module Description

### 🔹 `top_module.v`
- Top-level module  
- Instantiates up-counter and down-counter  
- Selects operation based on control signal  

### 🔹 `up_counter.v`
- Implements synchronous up-counting logic  
- Counts incrementally on each positive clock edge  

### 🔹 `down_counter.v`
- Implements synchronous down-counting logic  
- Counts decrementally on each positive clock edge  

### 🔹 `testbench.v`
- Generates clock and reset signals  
- Applies control stimulus  
- Verifies counter operation via simulation  

---

## 🧪 Simulation & Verification

The design was verified using RTL simulation.  
A waveform snapshot is provided below to demonstrate correct behavior.

### 📊 Simulation Waveform

**Observed Behavior:**
- Counter increments when up-count mode is enabled  
- Counter decrements when down-count mode is enabled  
- Reset correctly initializes the counter value  

---

## ✅ Conclusion

The RTL design functions as expected and is ready for:
- Logic synthesis (Genus)  
- Physical design and place-and-route (Innovus)  

---

## 📝 Notes

- All modules are written in synthesizable Verilog  
- Code follows synchronous design best practices  
- Suitable for ASIC and FPGA design flows  
