---
title: Authentication settings
description: Authentication settings
tags:
    - portal
---

## Overview
This document provides an overview of the authentication settings for our system. It covers password reset timeouts, VMware Cloud Director (VCD) session durations, and account inactivity policies.

## Password Reset Timeout
In our system, the password reset timeout is configured as follows:

- **Password Expiry**: 182 days
  - Users must change their passwords every 182 days.
  - You will receive reminders to change your password before it expires.
  - To change your password, log in to your account management console and follow the instructions for updating your password.

## VCD Session Durations
Sessions in VMware Cloud Director (VCD) are configured with the following details:

- **Session Duration**: 4 hours
  - Once you log in to VCD, your session will last for 4 hours.
  - After 4 hours, you will need to re-authenticate to continue your session.
  - This ensures that sessions are secure and reduce the risk of unauthorized access.

## Account Inactivity Lockouts
Our system does not automatically lock out user accounts due to inactivity. Here are the specifics:

- **Account Inactivity**: No lockout for inactivity
  - User accounts will not be disabled or locked due to inactivity.
  - You can log in to your account regardless of how long it has been inactive.

## Login Lockout Policies
To protect against unauthorized access, we have implemented login lockout policies. Here are the details:

- **Maximum Login Failures**: 5
  - After 5 unsuccessful login attempts, your account will be temporarily locked.
- **Lockout Duration**: Incremental, up to a maximum of 15 minutes
  - The lockout duration increases incrementally with each failed attempt, up to a maximum of 15 minutes.
- **Failure Reset Time**: 12 hours
  - Failed login attempts are reset after 12 hours.

## Summary
To summarize:

- Passwords must be changed every 182 days.
- VCD sessions last for 4 hours before requiring re-authentication.
- User accounts are not locked out due to inactivity.
- Login lockout policies protect against unauthorized access, with a temporary lockout after 5 failed attempts.

For any questions or assistance, please contact the IT support team.

---

We hope this document helps you understand the authentication settings for our system. Stay secure!
