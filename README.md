# Enterprise Architecture Repository

This repository contains the organization's TOGAF architecture artifacts including Architecture Building Blocks (ABBs), Solution Building Blocks (SBBs), and Technology Building Blocks (TBBs).

## Quick Start

1. Clone the repository
```bash
git clone https://github.com/org/architecture-repository.git
```
2. Create a new artefact
```bash
cp governance/templates/ABB-template.md ABBs/application/ABB-APP-002-new-pattern.md
```
3. Validate your artefact
```bash
python scripts/validate-artifact.py ABBs/application/ABB-APP-002-new-pattern.md
```
4. Submit for review
```bash
git checkout -b feature/ABB-APP-002
git add .
git commit -m "Add ABB-APP-002: New Pattern"
git push origin feature/ABB-APP-002
