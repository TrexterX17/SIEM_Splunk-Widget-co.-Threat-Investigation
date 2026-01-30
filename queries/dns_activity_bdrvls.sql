-- Figure 1: DNS Activity by User BDRVLS
-- Purpose: Identify phishing activity via malicious domain glasslu.com

index=final_project sourcetype=dns user=BDRVLS
| search query_domain="*glasslu.com*"
| table _time user src_ip query_domain
| sort _time
