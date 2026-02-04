## AS-IS Process: Legacy Benefits Verification (The "Swivel Chair")

Current state requires agents to manually query multiple disconnected systems.

```mermaid
graph TD
    A[Claimant contacts UC Helpline] --> B[Agent opens LM System]
    B --> C[Log into JSAPS Mainframe - ESA Check]
    C --> D[Open Local Authority Portal - HB Check]
    D --> E[Access HMRC Gateway - Tax Credits]
    E --> F[Manual calculation in Excel spreadsheet]
    F --> G[Data entry into UC Digital Service]
    G --> H[Print and file paper record]
    
    style C fill:#ff9999,stroke:#333
    style D fill:#ff9999,stroke:#333
    style E fill:#ff9999,stroke:#333
    style F fill:#ffcc99,stroke:#333
```

**Pain Points:**
- 4 system logins per claimant (avg. 12 mins)
- Manual Excel calculations (error rate 8%)
- No audit trail between systems
