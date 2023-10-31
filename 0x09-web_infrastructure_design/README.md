Here is a README summarizing the key points from the 3 web infrastructure designs:

# Foobar Website Infrastructure

This document outlines the infrastructure design for the Foobar website (www.foobar.com).

## Single Server Setup

The initial setup involved a single server running Nginx, App Server, and MySQL.

**Issues:**

- Single point of failure
- Maintenance downtime 
- Unable to handle traffic spikes

## 3 Server Setup 

The infrastructure was expanded to 3 servers:

- Load balancer (HAProxy) 
- 2 x Web servers (Nginx)
- Application servers
- MySQL primary and replica databases

**Improvements:**

- Load balancing increases redundancy 
- Database replication provides backup 

**Remaining Issues:**

- Load balancer is a single point of failure
- No encryption or monitoring 

## Secure and Monitored Infrastructure 

Further improvements were made:

- Added firewalls on all servers 
- SSL certificate provisioned for HTTPS
- Monitoring agents installed to send metrics to SumoLogic

**Benefits:**

- Firewalls filter traffic and mitigate threats
- HTTPS encrypts traffic
- Monitoring provides visibility into performance 

## Further Enhancements

- Shift SSL termination from load balancer to web servers
- Implement master-master MySQL replication  
- Separate specialized server roles 
- Add log analysis and synthetic monitoring
- Containerize apps for easier scaling

