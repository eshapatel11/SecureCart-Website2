# SecureCart – Secure E-Commerce Platform

![CI/CD](https://img.shields.io/github/workflow/status/eshapatel11/SecureCart-Website2/CI%20Pipeline%20with%20Snyk%20and%20ZAP%20for%20Render)

## Overview

SecureCart is a Django-based e-commerce web application developed as part of the WM240 "Cyber Context of Software Engineering" coursework at the University of Warwick. This project demonstrates secure software engineering practices, vulnerability analysis, and the implementation of a secure DevSecOps CI/CD pipeline.

## Features

- User registration, login, and product browsing
- Admin product management
- Secure session and cookie handling
- Password validation and account protection
- Integrated security scanning and automated deployment

## CI/CD Pipeline

This project includes a complete CI/CD pipeline powered by:

- **GitHub Actions** – Automates testing, security scanning, and deployment
- **Docker & Docker Hub** – Containerises the application and stores images
- **Render** – Hosts the live deployment, updated automatically via webhook
- **Snyk** – Performs Static Application Security Testing (SAST)
- **OWASP ZAP** – Performs Dynamic Application Security Testing (DAST)

## Security Testing Tools

| Tool       | Type   | Purpose                                      |
|------------|--------|----------------------------------------------|
| Snyk       | SAST   | Detect vulnerabilities in dependencies       |
| OWASP ZAP  | DAST   | Test live site for runtime security flaws    |


## Repository Structure

.
├── ecommerce-master/ # Main project folder
│ ├── .github/workflows/ci-cd.yml # GitHub Actions workflow
│ ├── Dockerfile # Application container definition
│ ├── entrypoint.sh # Docker entry script
│ ├── ecom/ # Django app
│ ├── templates/ # HTML templates
│ └── manage.py


## Getting Started

1. Clone the repository:
   ```bash
   git clone https://github.com/eshapatel11/SecureCart-Website2.git
   cd SecureCart-Website2/ecommerce-master

This project is deployed automatically using GitHub Actions and Render.

To trigger a new build and deployment:

1. Make your changes locally.
2. Commit and push to the `main` branch:
   ```bash
   git add .
   git commit -m "Describe your changes"
   git push origin main

## Deployment

The application is automatically deployed to Render after each push to the `main` branch via a secure deploy hook.

**Live Site:** [https://securecart-website2.onrender.com](https://securecart-website2.onrender.com)



