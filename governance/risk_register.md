# Risk Register: UC Managed Migration Simulation

| ID | Risk | Probability | Impact | Mitigation Strategy | Owner |
|----|------|-------------|--------|-------------------|-------|
| R01 | Legacy data quality issues cause incorrect TP calculations | High | High | Dual-run validation; Manual sampling 5% of cases | BA Lead |
| R02 | API downtime during peak migration (Jan-Mar) | Medium | Critical | Circuit breaker pattern; Queue for retry | Technical Architect |
| R03 | Claimant digital exclusion (can't access online) | High | Medium | Assisted digital channel; Telephony fallback | Service Designer |
| R04 | Local Authority API rate limiting | Medium | High | Caching layer; Batch processing overnight | Integration Lead |

## GDS Service Assessment Alpha Checklist

- [x] **User Research**: 12 legacy benefit claimants interviewed
- [x] **Accessibility**: WCAG 2.1 AA requirements defined
- [x] **Data Protection**: GDPR Article 6(1)(e) lawful basis documented
- [x] **Security**: OWASP Top 10 mitigations specified
- [x] **Performance**: API response time requirement &lt;500ms
- [x] **Open Standards**: OpenAPI 3.0, CSV data format
