# Media Forensics: Hard Drive Analysis
Tools: Autopsy (SleuthKit), SQLite, PowerShell

## Overview
This project demonstrates a full disk-image forensic workflow: acquisition, verification, artifact extraction, timeline creation, and reporting.

## Typical workflow
1. Acquire image: `dd if=/dev/sdb of=images/disk1.dd bs=4M conv=sync,noerror`
2. Hash & verify: `sha256sum disk1.dd > disk1.sha256`
3. Open Autopsy -> New Case -> Add Data Source -> point to `disk1.dd`
4. Use Autopsy modules: File Analysis, Web Artifacts, Windows Registry, Email Parser.
5. Export results, generate timeline, and document in `reports/forensic-report-template.md`

## Reporting
Use the template in `reports/forensic-report-template.md` and attach hashed images, chain-of-custody notes, and timelines.
