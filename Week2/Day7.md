# Day-7 | Infrastructure as Code 

In this session, we explore the concept of Infrastructure as Code (IaC) and introduce Terraform as a solution to challenges faced in multi-cloud and hybrid cloud environments.

## Problem with Traditional IaC Tools:

Tools like AWS CloudFormation (CFT), Azure Resource Manager (ARM), and OpenStack Heat Templates are cloud-specific.

If an organization (e.g., Flipkart) migrates from AWS to Azure or on-premises, existing scripts become obsolete and must be rewritten.

Hybrid Cloud models (using AWS for storage and Azure for DevOps, for example) require knowledge of multiple tools, increasing complexity.

## Enter Terraform:

Developed by HashiCorp, Terraform is a cloud-agnostic tool that allows managing infrastructure across providers like AWS, Azure, GCP, OpenStack, and others using a single language.

Uses a concept called API as Code: Terraform communicates with cloud provider APIs to provision and manage infrastructure.

Provider configuration (e.g., in provider.tf) lets you switch platforms with minimal changes.

Simplifies DevOps workflows by removing the need to learn multiple provider-specific IaC tools.

## What is API?:

APIs (Application Programming Interfaces) allow programmatic interaction with applications.

Terraform utilizes APIs behind the scenes, converting human-readable configuration files into API calls.

## Benefits of Terraform:

-One tool for all platforms.

-Simplifies cloud migration.

-Supports hybrid and multi-cloud environments.

-Improves productivity and reduces learning overhead.

## Concepts Covered:

**Infrastructure as Code (IaC)**: Automating infrastructure provisioning using code (e.g., CFT, ARM, Heat).

**API as Code**: Using a single tool (Terraform) to interact with various provider APIs for infrastructure automation.

In the next session, we’ll dive into hands-on Terraform use—installing Terraform, writing scripts, and provisioning real resources on AWS.
