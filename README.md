# Universal Credit Managed Migration: BA Portfolio

**Educational Simulation | Business Analysis & Transformation**

## 📂 Key Artefacts (Click to View)

### Requirements & Business Rules
- [Transitional Protection Gherkin Features](./requirements/transitional_protection.feature) 
  - Complex eligibility logic with 65% earnings taper calculations
- [User Story Mapping](./requirements/user_story_map.md) *(if you add this)*

### Process Optimisation
- [AS-IS: Swivel Chair Analysis](./process-analysis/as_is_swivel_chair.md) 
  - Current state pain points (4 systems, 12-min avg handling time)
- [TO-BE: API Integration Architecture](./process-analysis/to_be_api_integration.md) 
  - Proposed automation eliminating manual data entry

### Technical Design
- [OpenAPI 3.0 Specification](./technical-design/legacy_verification_api.yaml) 
  - REST contract for real-time legacy benefit checks
- [Data Migration SQL](./technical-design/data_migration_mapping.sql) 
  - Business rules for 2.8m record transformation
- [Java Calculator Reference](./technical-design/TransitionalProtectionCalculator.java) 
  - Validation logic for transitional protection amounts

### Governance & Risk
- [Risk Register & GDS Checklist](./governance/risk_register.md) 
  - KPMG-style risk framework with mitigation strategies

## 🎯 Business Challenge
Current "swivel chair" processes require agents to manually check 4+ systems 
(JSAPS mainframe, Local Authority portals, HMRC Gateway), causing delays in 
managed migration. This portfolio proposes an API-first architecture.

## 📂 Repository Structure
| Folder | Contents | Standard |
|--------|----------|----------|
| `/requirements` | Gherkin features, User Stories | BDD / Agile |
| `/process-analysis` | AS-IS/TO-BE Mermaid workflows | Lean Six Sigma |
| `/technical-design` | OpenAPI specs, Data models | GDS Technical Standards |
| `/governance` | Risk registers, Assessment checklists | GDS Service Standard |

## ⚠️ Disclaimer
*This is an educational simulation. Not affiliated with DWP. Contains no real 
claimant data. Based on publicly available NAO reports and GDS standards.*

**Licence**: Open Government Licence v3.0
