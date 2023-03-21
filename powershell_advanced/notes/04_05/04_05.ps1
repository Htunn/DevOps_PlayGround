@"
 [ 
  {
    "FirstName": "Robert",
    "LastName": "Robertson",
    "EmployeeID": 010101,
    "DateOfHire": {
      "Month": "September",
      "Day": 16,
      "Year": 1998
      },
    "SkillSets": [
      "Sales",
      "Social Media Marketing",
      "Public Speaking",
      "Clarinet"
      ],
    "Management": true,
    "LastUpdate": "\/Date(1540112320855)\/"
  },
  {
    "FirstName": "Janice",
    "LastName": "Jansdotter",
    "EmployeeID": 020202,
    "DateOfHire": {
      "Month": "May",
      "Day": 1,
      "Year": 2002
      },
    "SkillSets": [
      "Image Marketing",
      "Social Media Marketing",
      "Advertizing",
      "Trombone"
      ],
    "Management": true,
    "LastUpdate": "\/Date(1539012320855)\/"
  },
  {
    "FirstName": "Elena",
    "LastName": "Warren",
    "EmployeeID": 070707,
    "DateOfHire": {
      "Month": "August",
      "Day": 11,
      "Year": 2011
      },
    "SkillSets": [
      "Customer Service",
      "Training",
      "Party Planning",
      "Bonzai Trees"
      ],
    "Management": false,
    "LastUpdate": "\/Date(1540002320855)\/"
  }
 ]
"@ | ConvertFrom-Json | Format-Table

