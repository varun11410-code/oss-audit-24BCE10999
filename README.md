# Open-Source Audit: MySQL (WSL - Ubuntu)

| Field | Details |
| :--- | :--- |
| **Student Name** | Varun Kumar Sinha|
| **Roll Number** | 24BCE10999 |
| **Course** | Open-Source Software (NGMC) |
| **Date** | March 2026 |

## Chosen Software
[cite_start]**MySQL** — A highly reliable, scalable, and free open-source relational database management system that serves as the data foundation for the modern web (LAMP stack)[cite: 24].

## System Details

| Property | Value |
| :--- | :--- |
| **Environment** | WSL (Windows Subsystem for Linux) |
| **Distribution** | Ubuntu (WSL) |
| **Kernel** | Run `uname -r` to verify |
| **MySQL Version** | Run `mysql --version` to verify |

## File Structure
```text
oss-audit-24BCE10999/
├── README.md
├── Open_Source_Audit_Report_Varun_24BCE10999.pdf
├── scripts/
│   ├── script1.sh
│   ├── script2.sh
│   ├── script3.sh
│   ├── script4.sh
│   └── script5.sh
└── screenshots/
    ├── script1_run.png
    ├── script2_run.png
    ├── script3_run.png
    ├── script4_run.png
    └── script5_run.png

```

---

## Script Descriptions

* **script1.sh (System Identity Report):**  
  Dynamically fetches and displays system kernel data, current logged-in user, uptime, and OS details.

* **script2.sh (FOSS Package Inspector):**  
  Checks if the `mysql-server` package is installed using `dpkg`, outputs its version, and prints a short summary.

* **script3.sh (Disk and Permission Auditor):**  
  Iterates through important system directories (including `/etc/mysql`) using a loop to report disk usage and permission details.

* **script4.sh (Log File Analyzer):**  
  Reads a specified log file line-by-line, counts keyword occurrences (e.g., "error"), and displays recent matches.

* **script5.sh (Open Source Manifesto Generator):**  
  Interactive script that collects user input and generates a custom manifesto saved to a `.txt` file.

---

## How to Run the Scripts

### Step 1: Open WSL (Ubuntu) Terminal

### Step 2: Clone and Navigate
```bash
git clone https://github.com/[yourusername]/oss-audit-[Your Roll Number].git
cd oss-audit-[Your Roll Number]
```

### Step 3: Fix Windows Line Endings
```bash
sed -i 's/\r$//' *.sh
```

### Step 4: Grant Execute Permissions
```bash
chmod +x *.sh
```

### Step 5: Execute the Scripts
```bash
./script1.sh
./script2.sh
./script3.sh
./script4.sh /var/log/dpkg.log error
./script5.sh
```

---

## Dependencies

- Core Linux utilities: `bash`, `grep`, `awk`, `cut`, `sed`  
- Package management: `dpkg`  
- Target software: `mysql-server`  

---

## MySQL Installation (Optional)

```bash
sudo apt update
sudo apt install mysql-server
```

---

## Notes & Conclusion

- All scripts were developed and tested within a WSL Ubuntu environment.  
- RPM-based commands were adapted to Debian-based tools (`dpkg`).  
- This project demonstrates practical Linux system administration, bash scripting, and understanding of open-source tools.
