# Hadoop Setup and Configuration

This project provides a guide and resources for setting up and running **Apache Hadoop 3.4.1** on your system, including basic configurations and testing the environment.

---

## Prerequisites

Ensure you have the following installed on your machine:
- **Java 8** (JDK 1.8)
- **Hadoop 3.4.1**
- A compatible operating system (Linux, WSL, or Windows with Cygwin)

---

## Installation Steps

### 1. Download Hadoop
- Visit the [Apache Hadoop Downloads](https://hadoop.apache.org/releases.html) page.
- Download the Hadoop 3.4.1 binary.

### 2. Set Up Environment Variables
Add the following variables to your `.bashrc` or `.bash_profile` (for Linux/WSL) or `Environment Variables` (for Windows):

```bash
export JAVA_HOME=/path/to/java
export HADOOP_HOME=/path/to/hadoop
export PATH=$PATH:$HADOOP_HOME/bin:$HADOOP_HOME/sbin
