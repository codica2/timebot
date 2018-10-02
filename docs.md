

# Group Absences


## Absences [/absences]


### Get absences [GET /api/v1/absences]


+ Request Get absences
**GET**&nbsp;&nbsp;`/api/v1/absences`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": [
                {
                  "id": "5",
                  "type": "absences",
                  "attributes": {
                    "date": "2018-10-03",
                    "comment": "Where are my testicles, Summer?",
                    "reason": "other"
                  },
                  "relationships": {
                    "user": {
                      "data": {
                        "id": "6",
                        "type": "users"
                      }
                    }
                  }
                },
                {
                  "id": "4",
                  "type": "absences",
                  "attributes": {
                    "date": "2018-10-03",
                    "comment": "Pluto's a planet.",
                    "reason": "other"
                  },
                  "relationships": {
                    "user": {
                      "data": {
                        "id": "5",
                        "type": "users"
                      }
                    }
                  }
                },
                {
                  "id": "3",
                  "type": "absences",
                  "attributes": {
                    "date": "2018-10-03",
                    "comment": "Keep Summer safe.",
                    "reason": "other"
                  },
                  "relationships": {
                    "user": {
                      "data": {
                        "id": "4",
                        "type": "users"
                      }
                    }
                  }
                },
                {
                  "id": "2",
                  "type": "absences",
                  "attributes": {
                    "date": "2018-10-03",
                    "comment": "I want that Mulan McNugget sauce, Morty!",
                    "reason": "other"
                  },
                  "relationships": {
                    "user": {
                      "data": {
                        "id": "3",
                        "type": "users"
                      }
                    }
                  }
                },
                {
                  "id": "1",
                  "type": "absences",
                  "attributes": {
                    "date": "2018-10-03",
                    "comment": "Great, now I have to take over an entire planet because of your stupid boobs.",
                    "reason": "other"
                  },
                  "relationships": {
                    "user": {
                      "data": {
                        "id": "2",
                        "type": "users"
                      }
                    }
                  }
                }
              ],
              "meta": {
                "total-count": 5
              }
            }

### Get an absence [GET /api/v1/absences/{id}]

+ Parameters
    + id: `10` (number, required)

+ Request Show absence by id
**GET**&nbsp;&nbsp;`/api/v1/absences/10`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "10",
                "type": "absences",
                "attributes": {
                  "date": "2018-10-03",
                  "comment": "Where are my testicles, Summer?",
                  "reason": "other"
                },
                "relationships": {
                  "user": {
                    "data": {
                      "id": "12",
                      "type": "users"
                    }
                  }
                }
              }
            }

### Delete an absence [DELETE /api/v1/absences/{id}]

+ Parameters
    + id: `15` (number, required)

+ Request Delete absence by id
**DELETE**&nbsp;&nbsp;`/api/v1/absences/15`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

+ Response 204

### Create an absence [POST /api/v1/absences]


+ Request Create absence
**POST**&nbsp;&nbsp;`/api/v1/absences`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            absence[reason]=other&absence[date]=2018-10-03+15%3A55%3A24+UTC&absence[comment]=Little+tip%2C+Morty.+Never+clean+DNA+vials+with+your+spit.&absence[user_id]=19

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "21",
                "type": "absences",
                "attributes": {
                  "date": "2018-10-03",
                  "comment": "Little tip, Morty. Never clean DNA vials with your spit.",
                  "reason": "other"
                },
                "relationships": {
                  "user": {
                    "data": {
                      "id": "19",
                      "type": "users"
                    }
                  }
                }
              }
            }

### Update an absence [PUT /api/v1/absences/{id}]

+ Parameters
    + id: `22` (number, required)

+ Request Update absence
**PUT**&nbsp;&nbsp;`/api/v1/absences/22`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            absence[comment]=Comment

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "22",
                "type": "absences",
                "attributes": {
                  "date": "2018-10-03",
                  "comment": "Comment",
                  "reason": "other"
                },
                "relationships": {
                  "user": {
                    "data": {
                      "id": "26",
                      "type": "users"
                    }
                  }
                }
              }
            }

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
              "start_of_week": "2018-10-03",
              "end_of_week": "2018-10-03",
              "hours_to_work": -8,
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
              },
              "series": [
            
              ],
              "xAxisData": [
            
              ]
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
                    "name": "Revolio 'Gearhead' Clockberg, Jr.",
                    "date": "2018-10-04"
                  }
                },
                {
                  "id": "2",
                  "type": "holidays",
                  "attributes": {
                    "name": "Cousin Nicky",
                    "date": "2018-10-05"
                  }
                },
                {
                  "id": "3",
                  "type": "holidays",
                  "attributes": {
                    "name": "King Jellybean",
                    "date": "2018-10-06"
                  }
                },
                {
                  "id": "4",
                  "type": "holidays",
                  "attributes": {
                    "name": "King Jellybean",
                    "date": "2018-10-07"
                  }
                },
                {
                  "id": "5",
                  "type": "holidays",
                  "attributes": {
                    "name": "Jerry Smith",
                    "date": "2018-10-08"
                  }
                }
              ]
            }

### Get a holiday [GET /api/v1/holidays/{id}]

+ Parameters
    + id: `9` (number, required)

+ Request Show holiday by id
**GET**&nbsp;&nbsp;`/api/v1/holidays/9`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "9",
                "type": "holidays",
                "attributes": {
                  "name": "Lighthouse Chief",
                  "date": "2018-10-12"
                }
              }
            }

### Delete a holiday [DELETE /api/v1/holidays/{id}]

+ Parameters
    + id: `11` (number, required)

+ Request Delete holiday by id
**DELETE**&nbsp;&nbsp;`/api/v1/holidays/11`

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

            holiday[name]=Dr.+Glip-Glop&holiday[date]=2018-10-24

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "21",
                "type": "holidays",
                "attributes": {
                  "name": "Dr. Glip-Glop",
                  "date": "2018-10-24"
                }
              }
            }

### Update a holiday [PUT /api/v1/holidays/{id}]

+ Parameters
    + id: `26` (number, required)

+ Request Update holiday
**PUT**&nbsp;&nbsp;`/api/v1/holidays/26`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            holiday[name]=TINY+RICK

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "26",
                "type": "holidays",
                "attributes": {
                  "name": "TINY RICK",
                  "date": "2018-10-29"
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

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": [
                {
                  "id": "36",
                  "type": "projects",
                  "attributes": {
                    "name": "Africar",
                    "alias": "alias_36"
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
                  "id": "35",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_35",
                    "alias": "alias_35"
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
                  "id": "34",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_34",
                    "alias": "alias_34"
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
                  "id": "33",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_33",
                    "alias": "alias_33"
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
                  "id": "32",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_32",
                    "alias": "alias_32"
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
                  "id": "31",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_31",
                    "alias": "alias_31"
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
                  "id": "30",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_30",
                    "alias": "alias_30"
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
                  "id": "29",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_29",
                    "alias": "alias_29"
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
                  "id": "28",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_28",
                    "alias": "alias_28"
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
                  "id": "27",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_27",
                    "alias": "alias_27"
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
                  "id": "26",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_26",
                    "alias": "alias_26"
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
                  "id": "25",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_25",
                    "alias": "alias_25"
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
                  "id": "24",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_24",
                    "alias": "alias_24"
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
                  "id": "23",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_23",
                    "alias": "alias_23"
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
                  "id": "22",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_22",
                    "alias": "alias_22"
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
                  "id": "21",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_21",
                    "alias": "alias_21"
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
                  "id": "20",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_20",
                    "alias": "alias_20"
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
                  "id": "19",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_19",
                    "alias": "alias_19"
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
                  "id": "18",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_18",
                    "alias": "alias_18"
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
                  "id": "17",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_17",
                    "alias": "alias_17"
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
                  "id": "16",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_16",
                    "alias": "alias_16"
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
                  "id": "15",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_15",
                    "alias": "alias_15"
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
                  "id": "14",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_14",
                    "alias": "alias_14"
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
                  "id": "13",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_13",
                    "alias": "alias_13"
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
                  "id": "12",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_12",
                    "alias": "alias_12"
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
                  "id": "11",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_11",
                    "alias": "alias_11"
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
                  "id": "10",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_10",
                    "alias": "alias_10"
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
                  "id": "9",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_9",
                    "alias": "alias_9"
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
                  "id": "8",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_8",
                    "alias": "alias_8"
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
                  "id": "7",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_7",
                    "alias": "alias_7"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "37",
                        "type": "teams"
                      }
                    }
                  }
                }
              ],
              "meta": {
                "total-count": 36
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
                  "id": "37",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_36",
                    "alias": "alias_37"
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
                  "id": "38",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_37",
                    "alias": "alias_38"
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
                  "id": "39",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_38",
                    "alias": "alias_39"
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
                  "id": "40",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_39",
                    "alias": "alias_40"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "70",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "41",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_40",
                    "alias": "alias_41"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "71",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "42",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_41",
                    "alias": "alias_42"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "72",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "43",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_42",
                    "alias": "alias_43"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "73",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "44",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_43",
                    "alias": "alias_44"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "74",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "45",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_44",
                    "alias": "alias_45"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "75",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "46",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_45",
                    "alias": "alias_46"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "76",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "47",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_46",
                    "alias": "alias_47"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "77",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "48",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_47",
                    "alias": "alias_48"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "78",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "49",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_48",
                    "alias": "alias_49"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "79",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "50",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_49",
                    "alias": "alias_50"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "80",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "51",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_50",
                    "alias": "alias_51"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "81",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "52",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_51",
                    "alias": "alias_52"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "82",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "53",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_52",
                    "alias": "alias_53"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "83",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "54",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_53",
                    "alias": "alias_54"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "84",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "55",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_54",
                    "alias": "alias_55"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "85",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "56",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_55",
                    "alias": "alias_56"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "86",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "57",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_56",
                    "alias": "alias_57"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "87",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "58",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_57",
                    "alias": "alias_58"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "88",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "59",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_58",
                    "alias": "alias_59"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "89",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "60",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_59",
                    "alias": "alias_60"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "90",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "61",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_60",
                    "alias": "alias_61"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "91",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "62",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_61",
                    "alias": "alias_62"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "92",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "63",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_62",
                    "alias": "alias_63"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "93",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "64",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_63",
                    "alias": "alias_64"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "94",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "65",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_64",
                    "alias": "alias_65"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "95",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "66",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_65",
                    "alias": "alias_66"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "96",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "67",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_66",
                    "alias": "alias_67"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "97",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "68",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_67",
                    "alias": "alias_68"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "98",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "69",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_68",
                    "alias": "alias_69"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "99",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "70",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_69",
                    "alias": "alias_70"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "100",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "71",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_70",
                    "alias": "alias_71"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "101",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "72",
                  "type": "projects",
                  "attributes": {
                    "name": "Africar",
                    "alias": "alias_72"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "102",
                        "type": "teams"
                      }
                    }
                  }
                }
              ]
            }

### Get a project [GET /api/v1/projects/{id}]

+ Parameters
    + id: `103` (number, required)

+ Request Show project by id
**GET**&nbsp;&nbsp;`/api/v1/projects/103`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "103",
                "type": "projects",
                "attributes": {
                  "name": "Project_101",
                  "alias": "alias_103"
                },
                "relationships": {
                  "team": {
                    "data": {
                      "id": "133",
                      "type": "teams"
                    }
                  }
                }
              }
            }

### Delete a project [DELETE /api/v1/projects/{id}]

+ Parameters
    + id: `123` (number, required)

+ Request Delete project by id
**DELETE**&nbsp;&nbsp;`/api/v1/projects/123`

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

            project[name]=King+Jellybean&project[alias]=Parblesnops&project[team_id]=211

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "181",
                "type": "projects",
                "attributes": {
                  "name": "King Jellybean",
                  "alias": "Parblesnops"
                },
                "relationships": {
                  "team": {
                    "data": {
                      "id": "211",
                      "type": "teams"
                    }
                  }
                }
              }
            }

### Update a project [PUT /api/v1/projects/{id}]

+ Parameters
    + id: `184` (number, required)

+ Request Update project
**PUT**&nbsp;&nbsp;`/api/v1/projects/184`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            project[name]=PROJECT_178

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "184",
                "type": "projects",
                "attributes": {
                  "name": "PROJECT_178",
                  "alias": "alias_183"
                },
                "relationships": {
                  "team": {
                    "data": {
                      "id": "214",
                      "type": "teams"
                    }
                  }
                }
              }
            }

### Search by name [GET /api/v1/projects/search]


+ Request should search projects by name
**GET**&nbsp;&nbsp;`/api/v1/projects/search?by_name=aFric`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": [
                {
                  "id": 253,
                  "name": "Africar"
                }
              ]
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
                  "id": "284",
                  "type": "teams",
                  "attributes": {
                    "name": "Scary Terry",
                    "description": "Traditionally, science fairs are a father/son thing. Well, scientifically, traditions are an idiot thing."
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
                  "id": "285",
                  "type": "teams",
                  "attributes": {
                    "name": "Rick Sanchez",
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
                },
                {
                  "id": "286",
                  "type": "teams",
                  "attributes": {
                    "name": "Revolio 'Gearhead' Clockberg, Jr.",
                    "description": "I like what you got."
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
                  "id": "287",
                  "type": "teams",
                  "attributes": {
                    "name": "Abradolf Lincler",
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
                },
                {
                  "id": "288",
                  "type": "teams",
                  "attributes": {
                    "name": "Krombopulos Michael",
                    "description": "Listen, I'm not the nicest guy in the universe, because I'm the smartest, and being nice is something stupid people do to hedge their bets."
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
    + id: `292` (number, required)

+ Request Show team by id
**GET**&nbsp;&nbsp;`/api/v1/teams/292`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "292",
                "type": "teams",
                "attributes": {
                  "name": "Mr. Needful",
                  "description": "Well then get your shit together. Get it all together and put it in a backpack, all your shit, so it's together. ...and if you gotta take it somewhere, take it somewhere ya know? Take it to the shit store and sell it, or put it in a shit museum. I don't care what you do, you just gotta get it together... Get your shit together."
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
    + id: `298` (number, required)

+ Request Delete team by id
**DELETE**&nbsp;&nbsp;`/api/v1/teams/298`

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

            team[name]=King+Jellybean&team[description]=It%27s+fine%2C+everything+is+fine.+Theres+an+infinite+number+of+realities+Morty+and+in+a+few+dozen+of+those+I+got+lucky+and+turned+everything+back+to+normal.

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "304",
                "type": "teams",
                "attributes": {
                  "name": "King Jellybean",
                  "description": "It's fine, everything is fine. Theres an infinite number of realities Morty and in a few dozen of those I got lucky and turned everything back to normal."
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
    + id: `305` (number, required)

+ Request Update team
**PUT**&nbsp;&nbsp;`/api/v1/teams/305`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            team[name]=JERRY+SMITH

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "305",
                "type": "teams",
                "attributes": {
                  "name": "JERRY SMITH",
                  "description": "The first rule of space travel kids is always check out distress beacons. Nine out of ten times it's a ship full of dead aliens and a bunch of free shit! One out of ten times it's a deadly trap, but... I'm ready to roll those dice!"
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

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": [
                {
                  "id": "35",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-03",
                    "time": "18:55",
                    "details": "<https://trello.com/c/hcIRv6W0/1496-google-analytics>",
                    "trello-labels": null,
                    "estimated-time": null
                  },
                  "relationships": {
                    "user": {
                      "data": {
                        "id": "65",
                        "type": "users"
                      }
                    },
                    "project": {
                      "data": {
                        "id": "288",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "34",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-03",
                    "time": "18:55",
                    "details": "<https://trello.com/c/hcIRv6W0/1496-google-analytics>",
                    "trello-labels": null,
                    "estimated-time": null
                  },
                  "relationships": {
                    "user": {
                      "data": {
                        "id": "64",
                        "type": "users"
                      }
                    },
                    "project": {
                      "data": {
                        "id": "287",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "33",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-03",
                    "time": "18:55",
                    "details": "<https://trello.com/c/hcIRv6W0/1496-google-analytics>",
                    "trello-labels": null,
                    "estimated-time": null
                  },
                  "relationships": {
                    "user": {
                      "data": {
                        "id": "63",
                        "type": "users"
                      }
                    },
                    "project": {
                      "data": {
                        "id": "286",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "32",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-03",
                    "time": "18:55",
                    "details": "<https://trello.com/c/hcIRv6W0/1496-google-analytics>",
                    "trello-labels": null,
                    "estimated-time": null
                  },
                  "relationships": {
                    "user": {
                      "data": {
                        "id": "62",
                        "type": "users"
                      }
                    },
                    "project": {
                      "data": {
                        "id": "285",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "31",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-03",
                    "time": "18:55",
                    "details": "<https://trello.com/c/hcIRv6W0/1496-google-analytics>",
                    "trello-labels": null,
                    "estimated-time": null
                  },
                  "relationships": {
                    "user": {
                      "data": {
                        "id": "61",
                        "type": "users"
                      }
                    },
                    "project": {
                      "data": {
                        "id": "284",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "30",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-03",
                    "time": "18:55",
                    "details": "<https://trello.com/c/hcIRv6W0/1496-google-analytics>",
                    "trello-labels": null,
                    "estimated-time": null
                  },
                  "relationships": {
                    "user": {
                      "data": {
                        "id": "60",
                        "type": "users"
                      }
                    },
                    "project": {
                      "data": {
                        "id": "283",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "29",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-03",
                    "time": "18:55",
                    "details": "<https://trello.com/c/hcIRv6W0/1496-google-analytics>",
                    "trello-labels": null,
                    "estimated-time": null
                  },
                  "relationships": {
                    "user": {
                      "data": {
                        "id": "59",
                        "type": "users"
                      }
                    },
                    "project": {
                      "data": {
                        "id": "282",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "28",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-03",
                    "time": "18:55",
                    "details": "<https://trello.com/c/hcIRv6W0/1496-google-analytics>",
                    "trello-labels": null,
                    "estimated-time": null
                  },
                  "relationships": {
                    "user": {
                      "data": {
                        "id": "58",
                        "type": "users"
                      }
                    },
                    "project": {
                      "data": {
                        "id": "281",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "27",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-03",
                    "time": "18:55",
                    "details": "<https://trello.com/c/hcIRv6W0/1496-google-analytics>",
                    "trello-labels": null,
                    "estimated-time": null
                  },
                  "relationships": {
                    "user": {
                      "data": {
                        "id": "57",
                        "type": "users"
                      }
                    },
                    "project": {
                      "data": {
                        "id": "280",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "26",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-03",
                    "time": "18:55",
                    "details": "<https://trello.com/c/hcIRv6W0/1496-google-analytics>",
                    "trello-labels": null,
                    "estimated-time": null
                  },
                  "relationships": {
                    "user": {
                      "data": {
                        "id": "56",
                        "type": "users"
                      }
                    },
                    "project": {
                      "data": {
                        "id": "279",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "25",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-03",
                    "time": "18:55",
                    "details": "<https://trello.com/c/hcIRv6W0/1496-google-analytics>",
                    "trello-labels": null,
                    "estimated-time": null
                  },
                  "relationships": {
                    "user": {
                      "data": {
                        "id": "55",
                        "type": "users"
                      }
                    },
                    "project": {
                      "data": {
                        "id": "278",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "24",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-03",
                    "time": "18:55",
                    "details": "<https://trello.com/c/hcIRv6W0/1496-google-analytics>",
                    "trello-labels": null,
                    "estimated-time": null
                  },
                  "relationships": {
                    "user": {
                      "data": {
                        "id": "54",
                        "type": "users"
                      }
                    },
                    "project": {
                      "data": {
                        "id": "277",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "23",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-03",
                    "time": "18:55",
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
                        "id": "276",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "22",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-03",
                    "time": "18:55",
                    "details": "<https://trello.com/c/hcIRv6W0/1496-google-analytics>",
                    "trello-labels": null,
                    "estimated-time": null
                  },
                  "relationships": {
                    "user": {
                      "data": {
                        "id": "52",
                        "type": "users"
                      }
                    },
                    "project": {
                      "data": {
                        "id": "275",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "21",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-03",
                    "time": "18:55",
                    "details": "<https://trello.com/c/hcIRv6W0/1496-google-analytics>",
                    "trello-labels": null,
                    "estimated-time": null
                  },
                  "relationships": {
                    "user": {
                      "data": {
                        "id": "51",
                        "type": "users"
                      }
                    },
                    "project": {
                      "data": {
                        "id": "274",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "20",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-03",
                    "time": "18:55",
                    "details": "<https://trello.com/c/hcIRv6W0/1496-google-analytics>",
                    "trello-labels": null,
                    "estimated-time": null
                  },
                  "relationships": {
                    "user": {
                      "data": {
                        "id": "50",
                        "type": "users"
                      }
                    },
                    "project": {
                      "data": {
                        "id": "273",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "19",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-03",
                    "time": "18:55",
                    "details": "<https://trello.com/c/hcIRv6W0/1496-google-analytics>",
                    "trello-labels": null,
                    "estimated-time": null
                  },
                  "relationships": {
                    "user": {
                      "data": {
                        "id": "49",
                        "type": "users"
                      }
                    },
                    "project": {
                      "data": {
                        "id": "272",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "18",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-03",
                    "time": "18:55",
                    "details": "<https://trello.com/c/hcIRv6W0/1496-google-analytics>",
                    "trello-labels": null,
                    "estimated-time": null
                  },
                  "relationships": {
                    "user": {
                      "data": {
                        "id": "48",
                        "type": "users"
                      }
                    },
                    "project": {
                      "data": {
                        "id": "271",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "17",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-03",
                    "time": "18:55",
                    "details": "<https://trello.com/c/hcIRv6W0/1496-google-analytics>",
                    "trello-labels": null,
                    "estimated-time": null
                  },
                  "relationships": {
                    "user": {
                      "data": {
                        "id": "47",
                        "type": "users"
                      }
                    },
                    "project": {
                      "data": {
                        "id": "270",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "16",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-03",
                    "time": "18:55",
                    "details": "<https://trello.com/c/hcIRv6W0/1496-google-analytics>",
                    "trello-labels": null,
                    "estimated-time": null
                  },
                  "relationships": {
                    "user": {
                      "data": {
                        "id": "46",
                        "type": "users"
                      }
                    },
                    "project": {
                      "data": {
                        "id": "269",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "15",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-03",
                    "time": "18:55",
                    "details": "<https://trello.com/c/hcIRv6W0/1496-google-analytics>",
                    "trello-labels": null,
                    "estimated-time": null
                  },
                  "relationships": {
                    "user": {
                      "data": {
                        "id": "45",
                        "type": "users"
                      }
                    },
                    "project": {
                      "data": {
                        "id": "268",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "14",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-03",
                    "time": "18:55",
                    "details": "<https://trello.com/c/hcIRv6W0/1496-google-analytics>",
                    "trello-labels": null,
                    "estimated-time": null
                  },
                  "relationships": {
                    "user": {
                      "data": {
                        "id": "44",
                        "type": "users"
                      }
                    },
                    "project": {
                      "data": {
                        "id": "267",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "13",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-03",
                    "time": "18:55",
                    "details": "<https://trello.com/c/hcIRv6W0/1496-google-analytics>",
                    "trello-labels": null,
                    "estimated-time": null
                  },
                  "relationships": {
                    "user": {
                      "data": {
                        "id": "43",
                        "type": "users"
                      }
                    },
                    "project": {
                      "data": {
                        "id": "266",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "12",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-03",
                    "time": "18:55",
                    "details": "<https://trello.com/c/hcIRv6W0/1496-google-analytics>",
                    "trello-labels": null,
                    "estimated-time": null
                  },
                  "relationships": {
                    "user": {
                      "data": {
                        "id": "42",
                        "type": "users"
                      }
                    },
                    "project": {
                      "data": {
                        "id": "265",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "11",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-03",
                    "time": "18:55",
                    "details": "<https://trello.com/c/hcIRv6W0/1496-google-analytics>",
                    "trello-labels": null,
                    "estimated-time": null
                  },
                  "relationships": {
                    "user": {
                      "data": {
                        "id": "41",
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
                },
                {
                  "id": "10",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-03",
                    "time": "18:55",
                    "details": "<https://trello.com/c/hcIRv6W0/1496-google-analytics>",
                    "trello-labels": null,
                    "estimated-time": null
                  },
                  "relationships": {
                    "user": {
                      "data": {
                        "id": "40",
                        "type": "users"
                      }
                    },
                    "project": {
                      "data": {
                        "id": "263",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "9",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-03",
                    "time": "18:55",
                    "details": "<https://trello.com/c/hcIRv6W0/1496-google-analytics>",
                    "trello-labels": null,
                    "estimated-time": null
                  },
                  "relationships": {
                    "user": {
                      "data": {
                        "id": "39",
                        "type": "users"
                      }
                    },
                    "project": {
                      "data": {
                        "id": "262",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "8",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-03",
                    "time": "18:55",
                    "details": "<https://trello.com/c/hcIRv6W0/1496-google-analytics>",
                    "trello-labels": null,
                    "estimated-time": null
                  },
                  "relationships": {
                    "user": {
                      "data": {
                        "id": "38",
                        "type": "users"
                      }
                    },
                    "project": {
                      "data": {
                        "id": "261",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "7",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-03",
                    "time": "18:55",
                    "details": "<https://trello.com/c/hcIRv6W0/1496-google-analytics>",
                    "trello-labels": null,
                    "estimated-time": null
                  },
                  "relationships": {
                    "user": {
                      "data": {
                        "id": "37",
                        "type": "users"
                      }
                    },
                    "project": {
                      "data": {
                        "id": "260",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "6",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-03",
                    "time": "18:55",
                    "details": "<https://trello.com/c/hcIRv6W0/1496-google-analytics>",
                    "trello-labels": null,
                    "estimated-time": null
                  },
                  "relationships": {
                    "user": {
                      "data": {
                        "id": "36",
                        "type": "users"
                      }
                    },
                    "project": {
                      "data": {
                        "id": "259",
                        "type": "projects"
                      }
                    }
                  }
                }
              ],
              "meta": {
                "total-count": 35
              }
            }

### Get a time entry [GET /api/v1/time_entries/{id}]

+ Parameters
    + id: `58` (number, required)

+ Request Show time entry by id
**GET**&nbsp;&nbsp;`/api/v1/time_entries/58`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "58",
                "type": "time-entries",
                "attributes": {
                  "date": "2018-10-03",
                  "time": "18:55",
                  "details": "<https://trello.com/c/hcIRv6W0/1496-google-analytics>",
                  "trello-labels": null,
                  "estimated-time": null
                },
                "relationships": {
                  "user": {
                    "data": {
                      "id": "88",
                      "type": "users"
                    }
                  },
                  "project": {
                    "data": {
                      "id": "311",
                      "type": "projects"
                    }
                  }
                }
              }
            }

### Delete a time entry [DELETE /api/v1/time_entries/{id}]

+ Parameters
    + id: `87` (number, required)

+ Request Delete time entry by id
**DELETE**&nbsp;&nbsp;`/api/v1/time_entries/87`

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

            time_entry[date]=2018-10-03&time_entry[time]=18%3A55&time_entry[minutes]=55&time_entry[details]=%3Chttps%3A%2F%2Ftrello.com%2Fc%2FhcIRv6W0%2F1496-google-analytics%3E&time_entry[trello_labels][]=Feature&time_entry[trello_labels][]=High+Priority&time_entry[trello_labels][]=5&time_entry[user_id]=171&time_entry[project_id]=394

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "141",
                "type": "time-entries",
                "attributes": {
                  "date": "2018-10-03",
                  "time": "18:55",
                  "details": "<https://trello.com/c/hcIRv6W0/1496-google-analytics>",
                  "trello-labels": null,
                  "estimated-time": null
                },
                "relationships": {
                  "user": {
                    "data": {
                      "id": "171",
                      "type": "users"
                    }
                  },
                  "project": {
                    "data": {
                      "id": "394",
                      "type": "projects"
                    }
                  }
                }
              }
            }

### Update a time entry [PUT /api/v1/time_entries/{id}]

+ Parameters
    + id: `163` (number, required)

+ Request Update time entry
**PUT**&nbsp;&nbsp;`/api/v1/time_entries/163`

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
                "id": "163",
                "type": "time-entries",
                "attributes": {
                  "date": "2018-10-03",
                  "time": "18:55",
                  "details": "<HTTPS://TRELLO.COM/C/HCIRV6W0/1496-GOOGLE-ANALYTICS>",
                  "trello-labels": null,
                  "estimated-time": null
                },
                "relationships": {
                  "user": {
                    "data": {
                      "id": "193",
                      "type": "users"
                    }
                  },
                  "project": {
                    "data": {
                      "id": "416",
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
                  "id": "212",
                  "type": "users",
                  "attributes": {
                    "name": "Valentin",
                    "uid": "Ln9gQy6dGe",
                    "created-at": "2018-10-03T15:55:29.058Z",
                    "is-active": false,
                    "role": null
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "667",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "211",
                  "type": "users",
                  "attributes": {
                    "name": "User_211",
                    "uid": "QfNeBtVhKaEzMq",
                    "created-at": "2018-10-03T15:55:29.054Z",
                    "is-active": false,
                    "role": null
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "666",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "210",
                  "type": "users",
                  "attributes": {
                    "name": "User_210",
                    "uid": "PtM4N9NeT",
                    "created-at": "2018-10-03T15:55:29.049Z",
                    "is-active": false,
                    "role": null
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "665",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "209",
                  "type": "users",
                  "attributes": {
                    "name": "User_209",
                    "uid": "N688JvWlW9O0D0",
                    "created-at": "2018-10-03T15:55:29.046Z",
                    "is-active": false,
                    "role": null
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "664",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "208",
                  "type": "users",
                  "attributes": {
                    "name": "User_208",
                    "uid": "WoP7PwF7H9BwAy",
                    "created-at": "2018-10-03T15:55:29.041Z",
                    "is-active": false,
                    "role": null
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "663",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "207",
                  "type": "users",
                  "attributes": {
                    "name": "User_207",
                    "uid": "O6XuXm43Xh3yZm",
                    "created-at": "2018-10-03T15:55:29.037Z",
                    "is-active": false,
                    "role": null
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "662",
                        "type": "teams"
                      }
                    }
                  }
                }
              ],
              "meta": {
                "total-count": 6
              }
            }

### Get a user [GET /api/v1/users/{id}]

+ Parameters
    + id: `213` (number, required)

+ Request Show user by id
**GET**&nbsp;&nbsp;`/api/v1/users/213`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "213",
                "type": "users",
                "attributes": {
                  "name": "User_212",
                  "uid": "Ug3a7sQ6W0B1Uo",
                  "created-at": "2018-10-03T15:55:29.087Z",
                  "is-active": false,
                  "role": null
                },
                "relationships": {
                  "team": {
                    "data": {
                      "id": "668",
                      "type": "teams"
                    }
                  }
                }
              }
            }

### Search by name [GET /api/v1/users/search]


+ Request should search users by name
**GET**&nbsp;&nbsp;`/api/v1/users/search?by_name=Alen`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": [
                {
                  "id": 224,
                  "name": "Valentin"
                }
              ]
            }

### Delete a user [DELETE /api/v1/users/{id}]

+ Parameters
    + id: `227` (number, required)

+ Request Delete user by id
**DELETE**&nbsp;&nbsp;`/api/v1/users/227`

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

            user[name]=User_232&user[is_active]=false&user[uid]=AoG0VgImWv7m2uZj

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "237",
                "type": "users",
                "attributes": {
                  "name": "User_232",
                  "uid": "AoG0VgImWv7m2uZj",
                  "created-at": "2018-10-03T15:55:29.302Z",
                  "is-active": false,
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
    + id: `238` (number, required)

+ Request Update user
**PUT**&nbsp;&nbsp;`/api/v1/users/238`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            user[name]=USER_233

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "238",
                "type": "users",
                "attributes": {
                  "name": "USER_233",
                  "uid": "IgWy37Uu3",
                  "created-at": "2018-10-03T15:55:29.323Z",
                  "is-active": false,
                  "role": null
                },
                "relationships": {
                  "team": {
                    "data": {
                      "id": "692",
                      "type": "teams"
                    }
                  }
                }
              }
            }
