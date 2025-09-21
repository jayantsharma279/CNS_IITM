# Modeling the Exploratory Dynamics of the Indirect Pathway in the Basal Ganglia

This repository contains the code accompanying our work presented at the **Society for Neuroscience (SfN) 2024 Annual Meeting**:

**"Modeling the Exploratory Dynamics of the Indirect Pathway in the Basal Ganglia using a Network of Chaotic Attractors"**  
- *Charitha Palika¹, Jayant Sharma³, Rohan N.R¹, S.S. Nair¹, V.S. Chakravarthy¹²*  
¹ Department of Biotechnology, IIT Madras  
² Department of Medical Science and Technology, IIT Madras  
³ Manipal Institute of Technology  

 Published as a **poster** and **abstract** at SfN 2024.  

  <img src='Exploratory Model/poster.jpg' alt='webpage' width="500">

---

##  Project Overview

The **Basal Ganglia (BG)** plays a critical role in action selection, balancing between:  
- the **Direct Pathway (DP)** → exploitation (“Go”)  
- the **Indirect Pathway (IP)** → exploration (“No-Go”)  

Dopamine (from the Substantia Nigra pars compacta, SNc) modulates this balance. In **Parkinson’s Disease (PD)**, dopamine loss leads to reduced exploratory behavior and impaired decision-making.

In this project, we propose a **computational model** of the BG where:  
- The **STN–GPe circuit** is modeled using a **network of Rössler chaotic attractors**.  
- Chaotic dynamics enable **exploration** under normal conditions.  
- Dopamine depletion constrains the network to periodic oscillations, mimicking **PD pathology**.  
- The model is validated using tasks like the **Iowa Gambling Task (IGT)** and **multi-armed bandit problem**.  

---

##  Model Highlights

- **Chaotic attractor dynamics** drive exploratory behavior.  
- **Temporal difference error (δ)** modeled as dopamine, influencing exploration parameter (ε).  
- Transition between **chaotic (healthy)** and **synchronous periodic (PD)** regimes.  
- Captures key PD signatures:  
  - Reduced IGT scores  
  - Elevated beta-band synchrony in STN
  - 
 <img src='Exploratory Model/Basal Ganglia Model.png' alt='webpage' width="300">
---

## Tasks Modeled

1. **Iowa Gambling Task (IGT)**  
   - Differentiates healthy vs. PD performance  
   - Exploration–exploitation tradeoff linked to STN dynamics  

2. **Multi-armed Bandit Task**  
   - Shows effect of chaotic parameter tuning on reward optimization  

---


