# critical-transitions-model-
Apply each of the to shallow lake eutrophication to see if they are observed as well as using R code, as given in my 3rd year maths project
# Early Warning Signals and Modelling of Critical Transitions

Third-year mathematics project, University of Southampton (2026) — MMath Mathematics with Statistics.

## Overview

This project explores how **critical transitions** — sudden, often irreversible shifts between states in complex systems — can be modelled and predicted using dynamical systems theory. The mathematical framework is applied to two ecological case studies: **carrying capacity** and **shallow lake eutrophication** (the sudden shift of a lake from clear to turbid water).

The core question: can we detect an approaching critical transition *before* it happens, using statistical early warning signals (EWSs) such as rising variance and autocorrelation — and where do these signals fail?

## What this project covers

- **Non-linear dynamical systems** — fixed points, stability, and phase portrait classification via Jacobian eigenvalues
- **Bifurcation theory** — derivation and classification of fold, Hopf, pitchfork and transcritical bifurcations
- **Stochastic differential equations (SDEs)** — modelling systems under environmental noise, including simulation of an inverse Monod/Hill-function model of shallow lake eutrophication
- **Early warning signals** — rolling variance and lag-1 autocorrelation as predictors of an approaching tipping point, tested against a real case study (Erhai Lake, China)
- **Limitations of EWSs** — where these generic indicators fail to predict a known transition, and why
- **Machine learning** — a review of how ML (e.g. surrogate-data-based classifiers, neural networks) is used to predict critical transitions and forecast eutrophication indicators like chlorophyll-a

## Tools & techniques

- **R** — model derivation, stochastic simulation (Euler–Maruyama method for SDEs), rolling variance/autocorrelation analysis, all plots
- **Mathematics** — Taylor expansion, Jacobian/eigenvalue analysis, bifurcation normal forms, logistic and Verhulst-Pearl growth models

## Repository contents

- `report.pdf` — full write-up, including derivations (appendices) and R code used for all simulations (Appendix G)

## Key finding

Applying the model to shallow lake dynamics showed that although the system undergoes a genuine regime shift (clear → turbid), the classic early warning signals of rising variance and autocorrelation were **not** clearly present in the simulation — consistent with known limitations of EWSs in real ecological systems. This highlights why relying on a single indicator to predict a tipping point is risky, and why combining EWSs with machine learning approaches is an active area of research.

## Author

Sophie Claybrook — [linkedin.com/in/sophie-claybrook](https://linkedin.com/in/sophie-claybrook)
