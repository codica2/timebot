

# Group Dashboard


## Dashboard [/dashboard]


### Get dashboard info [GET /api/v1/dashboard]


+ Request Get dashboard info
**GET**&nbsp;&nbsp;`/api/v1/dashboard`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "start_of_week": "2018-10-01",
              "end_of_week": "2018-10-01",
              "hours_to_work": 0,
              "hours_worked": 0,
              "holidays": [
            
              ],
              "absent": [
            
              ],
              "users_chart": {
                "title": "Users",
                "data": [
                  {
                    "name": "Pm",
                    "value": 0.0
                  },
                  {
                    "name": "Front end",
                    "value": 0.0
                  },
                  {
                    "name": "Back end",
                    "value": 0.0
                  },
                  {
                    "name": "Qa",
                    "value": 0.0
                  },
                  {
                    "name": "Ops",
                    "value": 0.0
                  },
                  {
                    "name": "Marketing",
                    "value": 0.0
                  },
                  {
                    "name": "Design",
                    "value": 0.0
                  }
                ]
              },
              "projects_chart": {
                "title": "Projects",
                "data": [
            
                ]
              }
            }

# Group Holidays


## Holidays [/holidays]


### Get holidays [GET /api/v1/holidays]


+ Request Get holidays
**GET**&nbsp;&nbsp;`/api/v1/holidays`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": [
                {
                  "id": "1",
                  "type": "holidays",
                  "attributes": {
                    "name": "Dr. Glip-Glop",
                    "date": "2018-10-02"
                  }
                },
                {
                  "id": "2",
                  "type": "holidays",
                  "attributes": {
                    "name": "Arthricia",
                    "date": "2018-10-03"
                  }
                },
                {
                  "id": "3",
                  "type": "holidays",
                  "attributes": {
                    "name": "Beta VII",
                    "date": "2018-10-04"
                  }
                },
                {
                  "id": "4",
                  "type": "holidays",
                  "attributes": {
                    "name": "Snowball",
                    "date": "2018-10-05"
                  }
                },
                {
                  "id": "5",
                  "type": "holidays",
                  "attributes": {
                    "name": "Tammy Gueterman",
                    "date": "2018-10-06"
                  }
                }
              ]
            }

### Get a holiday [GET /api/v1/holidays/{id}]

+ Parameters
    + id: `8` (number, required)

+ Request Show holiday by id
**GET**&nbsp;&nbsp;`/api/v1/holidays/8`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "8",
                "type": "holidays",
                "attributes": {
                  "name": "Beta VII",
                  "date": "2018-10-09"
                }
              }
            }

### Delete a holiday [DELETE /api/v1/holidays/{id}]

+ Parameters
    + id: `13` (number, required)

+ Request Delete holiday by id
**DELETE**&nbsp;&nbsp;`/api/v1/holidays/13`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

+ Response 204

### Create a holiday [POST /api/v1/holidays]


+ Request Create holiday
**POST**&nbsp;&nbsp;`/api/v1/holidays`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            holiday[name]=Beth+Smith&holiday[date]=2018-10-22

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "21",
                "type": "holidays",
                "attributes": {
                  "name": "Beth Smith",
                  "date": "2018-10-22"
                }
              }
            }

### Update a holiday [PUT /api/v1/holidays/{id}]

+ Parameters
    + id: `25` (number, required)

+ Request Update holiday
**PUT**&nbsp;&nbsp;`/api/v1/holidays/25`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            holiday[name]=BETH%27S+MYTHOLOG

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "25",
                "type": "holidays",
                "attributes": {
                  "name": "BETH'S MYTHOLOG",
                  "date": "2018-10-26"
                }
              }
            }

# Group Projects


## Projects [/projects]


### Get projects [GET /api/v1/projects]


+ Request Get projects
**GET**&nbsp;&nbsp;`/api/v1/projects`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5

+ Response 200

    + Headers

            X-Total: 35
            X-Per-Page: 30
            X-Page: 1
            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": [
                {
                  "id": "1",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_1",
                    "alias": "alias_1"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "1",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "2",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_2",
                    "alias": "alias_2"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "2",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "3",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_3",
                    "alias": "alias_3"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "3",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "4",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_4",
                    "alias": "alias_4"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "4",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "5",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_5",
                    "alias": "alias_5"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "5",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "6",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_6",
                    "alias": "alias_6"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "6",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "7",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_7",
                    "alias": "alias_7"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "7",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "8",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_8",
                    "alias": "alias_8"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "8",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "9",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_9",
                    "alias": "alias_9"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "9",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "10",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_10",
                    "alias": "alias_10"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "10",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "11",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_11",
                    "alias": "alias_11"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "11",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "12",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_12",
                    "alias": "alias_12"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "12",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "13",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_13",
                    "alias": "alias_13"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "13",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "14",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_14",
                    "alias": "alias_14"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "14",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "15",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_15",
                    "alias": "alias_15"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "15",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "16",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_16",
                    "alias": "alias_16"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "16",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "17",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_17",
                    "alias": "alias_17"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "17",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "18",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_18",
                    "alias": "alias_18"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "18",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "19",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_19",
                    "alias": "alias_19"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "19",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "20",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_20",
                    "alias": "alias_20"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "20",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "21",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_21",
                    "alias": "alias_21"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "21",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "22",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_22",
                    "alias": "alias_22"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "22",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "23",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_23",
                    "alias": "alias_23"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "23",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "24",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_24",
                    "alias": "alias_24"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "24",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "25",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_25",
                    "alias": "alias_25"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "25",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "26",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_26",
                    "alias": "alias_26"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "26",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "27",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_27",
                    "alias": "alias_27"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "27",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "28",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_28",
                    "alias": "alias_28"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "28",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "29",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_29",
                    "alias": "alias_29"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "29",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "30",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_30",
                    "alias": "alias_30"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "30",
                        "type": "teams"
                      }
                    }
                  }
                }
              ],
              "links": {
                "self": "http://www.example.com/api/v1/projects?page%5Bnumber%5D=1&page%5Bsize%5D=30",
                "first": "http://www.example.com/api/v1/projects?page%5Bnumber%5D=1&page%5Bsize%5D=30",
                "prev": null,
                "next": "http://www.example.com/api/v1/projects?page%5Bnumber%5D=2&page%5Bsize%5D=30",
                "last": "http://www.example.com/api/v1/projects?page%5Bnumber%5D=2&page%5Bsize%5D=30"
              }
            }

### Get all projects [GET /api/v1/projects/all]


+ Request Get all projects
**GET**&nbsp;&nbsp;`/api/v1/projects/all`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": [
                {
                  "id": "36",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_36",
                    "alias": "alias_36"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "36",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "37",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_37",
                    "alias": "alias_37"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "37",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "38",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_38",
                    "alias": "alias_38"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "38",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "39",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_39",
                    "alias": "alias_39"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "39",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "40",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_40",
                    "alias": "alias_40"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "40",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "41",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_41",
                    "alias": "alias_41"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "41",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "42",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_42",
                    "alias": "alias_42"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "42",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "43",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_43",
                    "alias": "alias_43"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "43",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "44",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_44",
                    "alias": "alias_44"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "44",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "45",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_45",
                    "alias": "alias_45"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "45",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "46",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_46",
                    "alias": "alias_46"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "46",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "47",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_47",
                    "alias": "alias_47"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "47",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "48",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_48",
                    "alias": "alias_48"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "48",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "49",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_49",
                    "alias": "alias_49"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "49",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "50",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_50",
                    "alias": "alias_50"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "50",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "51",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_51",
                    "alias": "alias_51"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "51",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "52",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_52",
                    "alias": "alias_52"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "52",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "53",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_53",
                    "alias": "alias_53"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "53",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "54",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_54",
                    "alias": "alias_54"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "54",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "55",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_55",
                    "alias": "alias_55"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "55",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "56",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_56",
                    "alias": "alias_56"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "56",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "57",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_57",
                    "alias": "alias_57"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "57",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "58",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_58",
                    "alias": "alias_58"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "58",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "59",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_59",
                    "alias": "alias_59"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "59",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "60",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_60",
                    "alias": "alias_60"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "60",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "61",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_61",
                    "alias": "alias_61"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "61",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "62",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_62",
                    "alias": "alias_62"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "62",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "63",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_63",
                    "alias": "alias_63"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "63",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "64",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_64",
                    "alias": "alias_64"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "64",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "65",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_65",
                    "alias": "alias_65"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "65",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "66",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_66",
                    "alias": "alias_66"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "66",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "67",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_67",
                    "alias": "alias_67"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "67",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "68",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_68",
                    "alias": "alias_68"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "68",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "69",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_69",
                    "alias": "alias_69"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "69",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "70",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_70",
                    "alias": "alias_70"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "70",
                        "type": "teams"
                      }
                    }
                  }
                }
              ]
            }

### Get a project [GET /api/v1/projects/{id}]

+ Parameters
    + id: `75` (number, required)

+ Request Show project by id
**GET**&nbsp;&nbsp;`/api/v1/projects/75`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "75",
                "type": "projects",
                "attributes": {
                  "name": "Project_75",
                  "alias": "alias_75"
                },
                "relationships": {
                  "team": {
                    "data": {
                      "id": "75",
                      "type": "teams"
                    }
                  }
                }
              }
            }

### Delete a project [DELETE /api/v1/projects/{id}]

+ Parameters
    + id: `106` (number, required)

+ Request Delete project by id
**DELETE**&nbsp;&nbsp;`/api/v1/projects/106`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

+ Response 200

    + Headers

            Content-Type: text/html

### Create a project [POST /api/v1/projects]


+ Request Create project
**POST**&nbsp;&nbsp;`/api/v1/projects`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            project[name]=Jessica&project[alias]=Planet+Squanch&project[team_id]=176

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "176",
                "type": "projects",
                "attributes": {
                  "name": "Jessica",
                  "alias": "Planet Squanch"
                },
                "relationships": {
                  "team": {
                    "data": {
                      "id": "176",
                      "type": "teams"
                    }
                  }
                }
              }
            }

### Update a project [PUT /api/v1/projects/{id}]

+ Parameters
    + id: `202` (number, required)

+ Request Update project
**PUT**&nbsp;&nbsp;`/api/v1/projects/202`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            project[name]=PROJECT_201

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "202",
                "type": "projects",
                "attributes": {
                  "name": "PROJECT_201",
                  "alias": "alias_201"
                },
                "relationships": {
                  "team": {
                    "data": {
                      "id": "202",
                      "type": "teams"
                    }
                  }
                }
              }
            }

# Group Teams


## Teams [/teams]


### Get teams [GET /api/v1/teams]


+ Request Get teams
**GET**&nbsp;&nbsp;`/api/v1/teams`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": [
                {
                  "id": "212",
                  "type": "teams",
                  "attributes": {
                    "name": "Mr. Needful",
                    "description": "I hate to break it to you, but what people call 'love' is just a chemical reaction that compels animals to breed. It hits hard Morty then it slowly fades leaving you stranded in a failing marriage. I did it. Your parents are going to do it. Break the cycle Morty, rise above, focus on science."
                  },
                  "relationships": {
                    "projects": {
                      "data": [
            
                      ]
                    },
                    "users": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "213",
                  "type": "teams",
                  "attributes": {
                    "name": "Jerry's Mytholog",
                    "description": "I don't get it and I don't need to."
                  },
                  "relationships": {
                    "projects": {
                      "data": [
            
                      ]
                    },
                    "users": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "214",
                  "type": "teams",
                  "attributes": {
                    "name": "Baby Legs",
                    "description": "No no, If I wanted to be sober, I wouldn’t have gotten drunk."
                  },
                  "relationships": {
                    "projects": {
                      "data": [
            
                      ]
                    },
                    "users": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "215",
                  "type": "teams",
                  "attributes": {
                    "name": "Squanchy",
                    "description": "I don't get it and I don't need to."
                  },
                  "relationships": {
                    "projects": {
                      "data": [
            
                      ]
                    },
                    "users": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "216",
                  "type": "teams",
                  "attributes": {
                    "name": "Jerry's Mytholog",
                    "description": "Pluto's a planet."
                  },
                  "relationships": {
                    "projects": {
                      "data": [
            
                      ]
                    },
                    "users": {
                      "data": [
            
                      ]
                    }
                  }
                }
              ]
            }

### Get a teams [GET /api/v1/teams/{id}]

+ Parameters
    + id: `219` (number, required)

+ Request Show team by id
**GET**&nbsp;&nbsp;`/api/v1/teams/219`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "219",
                "type": "teams",
                "attributes": {
                  "name": "King Jellybean",
                  "description": "Having a family doesn't mean that you stop being an individual."
                },
                "relationships": {
                  "projects": {
                    "data": [
            
                    ]
                  },
                  "users": {
                    "data": [
            
                    ]
                  }
                }
              }
            }

### Delete a teams [DELETE /api/v1/teams/{id}]

+ Parameters
    + id: `224` (number, required)

+ Request Delete team by id
**DELETE**&nbsp;&nbsp;`/api/v1/teams/224`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

+ Response 204

### Create a teams [POST /api/v1/teams]


+ Request Create team
**POST**&nbsp;&nbsp;`/api/v1/teams`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            team[name]=Baby+Legs&team[description]=Having+a+family+doesn%27t+mean+that+you+stop+being+an+individual.

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "232",
                "type": "teams",
                "attributes": {
                  "name": "Baby Legs",
                  "description": "Having a family doesn't mean that you stop being an individual."
                },
                "relationships": {
                  "projects": {
                    "data": [
            
                    ]
                  },
                  "users": {
                    "data": [
            
                    ]
                  }
                }
              }
            }

### Update a teams [PUT /api/v1/teams/{id}]

+ Parameters
    + id: `237` (number, required)

+ Request Update team
**PUT**&nbsp;&nbsp;`/api/v1/teams/237`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            team[name]=SNOWBALL

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "237",
                "type": "teams",
                "attributes": {
                  "name": "SNOWBALL",
                  "description": "Get off the high road Summer. We all got pink eye because you wouldn't stop texting on the toilet."
                },
                "relationships": {
                  "projects": {
                    "data": [
            
                    ]
                  },
                  "users": {
                    "data": [
            
                    ]
                  }
                }
              }
            }

# Group Time Entries


## Time Entries [/time_entries]


### Get time entries [GET /api/v1/time_entries]


+ Request Get time entries
**GET**&nbsp;&nbsp;`/api/v1/time_entries`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5

+ Response 200

    + Headers

            X-Total: 35
            X-Per-Page: 30
            X-Page: 1
            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": [
                {
                  "id": "1",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-01",
                    "time": "13:44",
                    "details": "<https://trello.com/c/hcIRv6W0/1496-google-analytics>",
                    "trello-labels": null,
                    "estimated-time": null
                  },
                  "relationships": {
                    "user": {
                      "data": {
                        "id": "1",
                        "type": "users"
                      }
                    },
                    "project": {
                      "data": {
                        "id": "212",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "2",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-01",
                    "time": "13:44",
                    "details": "<https://trello.com/c/hcIRv6W0/1496-google-analytics>",
                    "trello-labels": null,
                    "estimated-time": null
                  },
                  "relationships": {
                    "user": {
                      "data": {
                        "id": "2",
                        "type": "users"
                      }
                    },
                    "project": {
                      "data": {
                        "id": "213",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "3",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-01",
                    "time": "13:44",
                    "details": "<https://trello.com/c/hcIRv6W0/1496-google-analytics>",
                    "trello-labels": null,
                    "estimated-time": null
                  },
                  "relationships": {
                    "user": {
                      "data": {
                        "id": "3",
                        "type": "users"
                      }
                    },
                    "project": {
                      "data": {
                        "id": "214",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "4",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-01",
                    "time": "13:44",
                    "details": "<https://trello.com/c/hcIRv6W0/1496-google-analytics>",
                    "trello-labels": null,
                    "estimated-time": null
                  },
                  "relationships": {
                    "user": {
                      "data": {
                        "id": "4",
                        "type": "users"
                      }
                    },
                    "project": {
                      "data": {
                        "id": "215",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "5",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-01",
                    "time": "13:44",
                    "details": "<https://trello.com/c/hcIRv6W0/1496-google-analytics>",
                    "trello-labels": null,
                    "estimated-time": null
                  },
                  "relationships": {
                    "user": {
                      "data": {
                        "id": "5",
                        "type": "users"
                      }
                    },
                    "project": {
                      "data": {
                        "id": "216",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "6",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-01",
                    "time": "13:44",
                    "details": "<https://trello.com/c/hcIRv6W0/1496-google-analytics>",
                    "trello-labels": null,
                    "estimated-time": null
                  },
                  "relationships": {
                    "user": {
                      "data": {
                        "id": "6",
                        "type": "users"
                      }
                    },
                    "project": {
                      "data": {
                        "id": "217",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "7",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-01",
                    "time": "13:44",
                    "details": "<https://trello.com/c/hcIRv6W0/1496-google-analytics>",
                    "trello-labels": null,
                    "estimated-time": null
                  },
                  "relationships": {
                    "user": {
                      "data": {
                        "id": "7",
                        "type": "users"
                      }
                    },
                    "project": {
                      "data": {
                        "id": "218",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "8",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-01",
                    "time": "13:44",
                    "details": "<https://trello.com/c/hcIRv6W0/1496-google-analytics>",
                    "trello-labels": null,
                    "estimated-time": null
                  },
                  "relationships": {
                    "user": {
                      "data": {
                        "id": "8",
                        "type": "users"
                      }
                    },
                    "project": {
                      "data": {
                        "id": "219",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "9",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-01",
                    "time": "13:44",
                    "details": "<https://trello.com/c/hcIRv6W0/1496-google-analytics>",
                    "trello-labels": null,
                    "estimated-time": null
                  },
                  "relationships": {
                    "user": {
                      "data": {
                        "id": "9",
                        "type": "users"
                      }
                    },
                    "project": {
                      "data": {
                        "id": "220",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "10",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-01",
                    "time": "13:44",
                    "details": "<https://trello.com/c/hcIRv6W0/1496-google-analytics>",
                    "trello-labels": null,
                    "estimated-time": null
                  },
                  "relationships": {
                    "user": {
                      "data": {
                        "id": "10",
                        "type": "users"
                      }
                    },
                    "project": {
                      "data": {
                        "id": "221",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "11",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-01",
                    "time": "13:44",
                    "details": "<https://trello.com/c/hcIRv6W0/1496-google-analytics>",
                    "trello-labels": null,
                    "estimated-time": null
                  },
                  "relationships": {
                    "user": {
                      "data": {
                        "id": "11",
                        "type": "users"
                      }
                    },
                    "project": {
                      "data": {
                        "id": "222",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "12",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-01",
                    "time": "13:44",
                    "details": "<https://trello.com/c/hcIRv6W0/1496-google-analytics>",
                    "trello-labels": null,
                    "estimated-time": null
                  },
                  "relationships": {
                    "user": {
                      "data": {
                        "id": "12",
                        "type": "users"
                      }
                    },
                    "project": {
                      "data": {
                        "id": "223",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "13",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-01",
                    "time": "13:44",
                    "details": "<https://trello.com/c/hcIRv6W0/1496-google-analytics>",
                    "trello-labels": null,
                    "estimated-time": null
                  },
                  "relationships": {
                    "user": {
                      "data": {
                        "id": "13",
                        "type": "users"
                      }
                    },
                    "project": {
                      "data": {
                        "id": "224",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "14",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-01",
                    "time": "13:44",
                    "details": "<https://trello.com/c/hcIRv6W0/1496-google-analytics>",
                    "trello-labels": null,
                    "estimated-time": null
                  },
                  "relationships": {
                    "user": {
                      "data": {
                        "id": "14",
                        "type": "users"
                      }
                    },
                    "project": {
                      "data": {
                        "id": "225",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "15",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-01",
                    "time": "13:44",
                    "details": "<https://trello.com/c/hcIRv6W0/1496-google-analytics>",
                    "trello-labels": null,
                    "estimated-time": null
                  },
                  "relationships": {
                    "user": {
                      "data": {
                        "id": "15",
                        "type": "users"
                      }
                    },
                    "project": {
                      "data": {
                        "id": "226",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "16",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-01",
                    "time": "13:44",
                    "details": "<https://trello.com/c/hcIRv6W0/1496-google-analytics>",
                    "trello-labels": null,
                    "estimated-time": null
                  },
                  "relationships": {
                    "user": {
                      "data": {
                        "id": "16",
                        "type": "users"
                      }
                    },
                    "project": {
                      "data": {
                        "id": "227",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "17",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-01",
                    "time": "13:44",
                    "details": "<https://trello.com/c/hcIRv6W0/1496-google-analytics>",
                    "trello-labels": null,
                    "estimated-time": null
                  },
                  "relationships": {
                    "user": {
                      "data": {
                        "id": "17",
                        "type": "users"
                      }
                    },
                    "project": {
                      "data": {
                        "id": "228",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "18",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-01",
                    "time": "13:44",
                    "details": "<https://trello.com/c/hcIRv6W0/1496-google-analytics>",
                    "trello-labels": null,
                    "estimated-time": null
                  },
                  "relationships": {
                    "user": {
                      "data": {
                        "id": "18",
                        "type": "users"
                      }
                    },
                    "project": {
                      "data": {
                        "id": "229",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "19",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-01",
                    "time": "13:44",
                    "details": "<https://trello.com/c/hcIRv6W0/1496-google-analytics>",
                    "trello-labels": null,
                    "estimated-time": null
                  },
                  "relationships": {
                    "user": {
                      "data": {
                        "id": "19",
                        "type": "users"
                      }
                    },
                    "project": {
                      "data": {
                        "id": "230",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "20",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-01",
                    "time": "13:44",
                    "details": "<https://trello.com/c/hcIRv6W0/1496-google-analytics>",
                    "trello-labels": null,
                    "estimated-time": null
                  },
                  "relationships": {
                    "user": {
                      "data": {
                        "id": "20",
                        "type": "users"
                      }
                    },
                    "project": {
                      "data": {
                        "id": "231",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "21",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-01",
                    "time": "13:44",
                    "details": "<https://trello.com/c/hcIRv6W0/1496-google-analytics>",
                    "trello-labels": null,
                    "estimated-time": null
                  },
                  "relationships": {
                    "user": {
                      "data": {
                        "id": "21",
                        "type": "users"
                      }
                    },
                    "project": {
                      "data": {
                        "id": "232",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "22",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-01",
                    "time": "13:44",
                    "details": "<https://trello.com/c/hcIRv6W0/1496-google-analytics>",
                    "trello-labels": null,
                    "estimated-time": null
                  },
                  "relationships": {
                    "user": {
                      "data": {
                        "id": "22",
                        "type": "users"
                      }
                    },
                    "project": {
                      "data": {
                        "id": "233",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "23",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-01",
                    "time": "13:44",
                    "details": "<https://trello.com/c/hcIRv6W0/1496-google-analytics>",
                    "trello-labels": null,
                    "estimated-time": null
                  },
                  "relationships": {
                    "user": {
                      "data": {
                        "id": "23",
                        "type": "users"
                      }
                    },
                    "project": {
                      "data": {
                        "id": "234",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "24",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-01",
                    "time": "13:44",
                    "details": "<https://trello.com/c/hcIRv6W0/1496-google-analytics>",
                    "trello-labels": null,
                    "estimated-time": null
                  },
                  "relationships": {
                    "user": {
                      "data": {
                        "id": "24",
                        "type": "users"
                      }
                    },
                    "project": {
                      "data": {
                        "id": "235",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "25",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-01",
                    "time": "13:44",
                    "details": "<https://trello.com/c/hcIRv6W0/1496-google-analytics>",
                    "trello-labels": null,
                    "estimated-time": null
                  },
                  "relationships": {
                    "user": {
                      "data": {
                        "id": "25",
                        "type": "users"
                      }
                    },
                    "project": {
                      "data": {
                        "id": "236",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "26",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-01",
                    "time": "13:44",
                    "details": "<https://trello.com/c/hcIRv6W0/1496-google-analytics>",
                    "trello-labels": null,
                    "estimated-time": null
                  },
                  "relationships": {
                    "user": {
                      "data": {
                        "id": "26",
                        "type": "users"
                      }
                    },
                    "project": {
                      "data": {
                        "id": "237",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "27",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-01",
                    "time": "13:44",
                    "details": "<https://trello.com/c/hcIRv6W0/1496-google-analytics>",
                    "trello-labels": null,
                    "estimated-time": null
                  },
                  "relationships": {
                    "user": {
                      "data": {
                        "id": "27",
                        "type": "users"
                      }
                    },
                    "project": {
                      "data": {
                        "id": "238",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "28",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-01",
                    "time": "13:44",
                    "details": "<https://trello.com/c/hcIRv6W0/1496-google-analytics>",
                    "trello-labels": null,
                    "estimated-time": null
                  },
                  "relationships": {
                    "user": {
                      "data": {
                        "id": "28",
                        "type": "users"
                      }
                    },
                    "project": {
                      "data": {
                        "id": "239",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "29",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-01",
                    "time": "13:44",
                    "details": "<https://trello.com/c/hcIRv6W0/1496-google-analytics>",
                    "trello-labels": null,
                    "estimated-time": null
                  },
                  "relationships": {
                    "user": {
                      "data": {
                        "id": "29",
                        "type": "users"
                      }
                    },
                    "project": {
                      "data": {
                        "id": "240",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "30",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-01",
                    "time": "13:44",
                    "details": "<https://trello.com/c/hcIRv6W0/1496-google-analytics>",
                    "trello-labels": null,
                    "estimated-time": null
                  },
                  "relationships": {
                    "user": {
                      "data": {
                        "id": "30",
                        "type": "users"
                      }
                    },
                    "project": {
                      "data": {
                        "id": "241",
                        "type": "projects"
                      }
                    }
                  }
                }
              ],
              "links": {
                "self": "http://www.example.com/api/v1/time_entries?page%5Bnumber%5D=1&page%5Bsize%5D=30",
                "first": "http://www.example.com/api/v1/time_entries?page%5Bnumber%5D=1&page%5Bsize%5D=30",
                "prev": null,
                "next": "http://www.example.com/api/v1/time_entries?page%5Bnumber%5D=2&page%5Bsize%5D=30",
                "last": "http://www.example.com/api/v1/time_entries?page%5Bnumber%5D=2&page%5Bsize%5D=30"
              }
            }

### Get a time entry [GET /api/v1/time_entries/{id}]

+ Parameters
    + id: `53` (number, required)

+ Request Show time entry by id
**GET**&nbsp;&nbsp;`/api/v1/time_entries/53`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "53",
                "type": "time-entries",
                "attributes": {
                  "date": "2018-10-01",
                  "time": "13:44",
                  "details": "<https://trello.com/c/hcIRv6W0/1496-google-analytics>",
                  "trello-labels": null,
                  "estimated-time": null
                },
                "relationships": {
                  "user": {
                    "data": {
                      "id": "53",
                      "type": "users"
                    }
                  },
                  "project": {
                    "data": {
                      "id": "264",
                      "type": "projects"
                    }
                  }
                }
              }
            }

### Delete a time entry [DELETE /api/v1/time_entries/{id}]

+ Parameters
    + id: `101` (number, required)

+ Request Delete time entry by id
**DELETE**&nbsp;&nbsp;`/api/v1/time_entries/101`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

+ Response 200

    + Headers

            Content-Type: text/html

### Create a time entry [POST /api/v1/time_entries]


+ Request Create time entry
**POST**&nbsp;&nbsp;`/api/v1/time_entries`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            time_entry[date]=2018-10-01&time_entry[time]=13%3A44&time_entry[minutes]=44&time_entry[details]=%3Chttps%3A%2F%2Ftrello.com%2Fc%2FhcIRv6W0%2F1496-google-analytics%3E&time_entry[trello_labels][]=Feature&time_entry[trello_labels][]=High+Priority&time_entry[trello_labels][]=5&time_entry[user_id]=141&time_entry[project_id]=352

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "141",
                "type": "time-entries",
                "attributes": {
                  "date": "2018-10-01",
                  "time": "13:44",
                  "details": "<https://trello.com/c/hcIRv6W0/1496-google-analytics>",
                  "trello-labels": null,
                  "estimated-time": null
                },
                "relationships": {
                  "user": {
                    "data": {
                      "id": "141",
                      "type": "users"
                    }
                  },
                  "project": {
                    "data": {
                      "id": "352",
                      "type": "projects"
                    }
                  }
                }
              }
            }

### Update a time entry [PUT /api/v1/time_entries/{id}]

+ Parameters
    + id: `144` (number, required)

+ Request Update time entry
**PUT**&nbsp;&nbsp;`/api/v1/time_entries/144`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            time_entry[details]=%3CHTTPS%3A%2F%2FTRELLO.COM%2FC%2FHCIRV6W0%2F1496-GOOGLE-ANALYTICS%3E

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "144",
                "type": "time-entries",
                "attributes": {
                  "date": "2018-10-01",
                  "time": "13:44",
                  "details": "<HTTPS://TRELLO.COM/C/HCIRV6W0/1496-GOOGLE-ANALYTICS>",
                  "trello-labels": null,
                  "estimated-time": null
                },
                "relationships": {
                  "user": {
                    "data": {
                      "id": "144",
                      "type": "users"
                    }
                  },
                  "project": {
                    "data": {
                      "id": "355",
                      "type": "projects"
                    }
                  }
                }
              }
            }

# Group Users


## Users [/users]


### Get users [GET /api/v1/users]


+ Request Get users
**GET**&nbsp;&nbsp;`/api/v1/users`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": [
                {
                  "id": "177",
                  "type": "users",
                  "attributes": {
                    "name": "User_177",
                    "uid": "Fy6eNfF3C",
                    "created-at": "2018-10-01T10:44:29.968Z",
                    "is-active": true,
                    "role": null
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "590",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "178",
                  "type": "users",
                  "attributes": {
                    "name": "User_178",
                    "uid": "3lYjW81y3m976p",
                    "created-at": "2018-10-01T10:44:29.972Z",
                    "is-active": true,
                    "role": null
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "591",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "179",
                  "type": "users",
                  "attributes": {
                    "name": "User_179",
                    "uid": "IuKg87F0HwVt",
                    "created-at": "2018-10-01T10:44:29.976Z",
                    "is-active": true,
                    "role": null
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "592",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "180",
                  "type": "users",
                  "attributes": {
                    "name": "User_180",
                    "uid": "3c7lT6NeOa6t0kE2",
                    "created-at": "2018-10-01T10:44:29.981Z",
                    "is-active": true,
                    "role": null
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "593",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "181",
                  "type": "users",
                  "attributes": {
                    "name": "User_181",
                    "uid": "BiS2Jb5aO",
                    "created-at": "2018-10-01T10:44:29.985Z",
                    "is-active": true,
                    "role": null
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "594",
                        "type": "teams"
                      }
                    }
                  }
                }
              ]
            }

### Get a user [GET /api/v1/users/{id}]

+ Parameters
    + id: `186` (number, required)

+ Request Show user by id
**GET**&nbsp;&nbsp;`/api/v1/users/186`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "186",
                "type": "users",
                "attributes": {
                  "name": "User_186",
                  "uid": "I1ZsUcE6E5OlHwQ9",
                  "created-at": "2018-10-01T10:44:30.030Z",
                  "is-active": true,
                  "role": null
                },
                "relationships": {
                  "team": {
                    "data": {
                      "id": "599",
                      "type": "teams"
                    }
                  }
                }
              }
            }

### Delete a user [DELETE /api/v1/users/{id}]

+ Parameters
    + id: `189` (number, required)

+ Request Delete user by id
**DELETE**&nbsp;&nbsp;`/api/v1/users/189`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

+ Response 204

### Create a user [POST /api/v1/users]


+ Request Create user
**POST**&nbsp;&nbsp;`/api/v1/users`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            user[name]=User_197&user[is_active]=true&user[uid]=VqUoAsGbCz9pM3

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "197",
                "type": "users",
                "attributes": {
                  "name": "User_197",
                  "uid": "VqUoAsGbCz9pM3",
                  "created-at": "2018-10-01T10:44:30.138Z",
                  "is-active": true,
                  "role": null
                },
                "relationships": {
                  "team": {
                    "data": null
                  }
                }
              }
            }

### Update a user [PUT /api/v1/users/{id}]

+ Parameters
    + id: `200` (number, required)

+ Request Update user
**PUT**&nbsp;&nbsp;`/api/v1/users/200`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            user[name]=USER_200

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "200",
                "type": "users",
                "attributes": {
                  "name": "USER_200",
                  "uid": "530vH8941p7eQ",
                  "created-at": "2018-10-01T10:44:30.169Z",
                  "is-active": true,
                  "role": null
                },
                "relationships": {
                  "team": {
                    "data": {
                      "id": "612",
                      "type": "teams"
                    }
                  }
                }
              }
            }
