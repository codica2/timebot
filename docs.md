

# Group Absences


## Absences [/absences]


### Get absences [GET /api/v1/absences]


+ Request Get absences
**GET**&nbsp;&nbsp;`/api/v1/absences`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE1Mzg3NTAyNjF9.zn07Csy0OJQ9A3aXx9_F4Gs2vA2zKtM-iE0yQyvmgGc
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
                    "date": "2018-10-05",
                    "comment": "The first rule of space travel kids is always check out distress beacons. Nine out of ten times it's a ship full of dead aliens and a bunch of free shit! One out of ten times it's a deadly trap, but... I'm ready to roll those dice!",
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
                    "date": "2018-10-05",
                    "comment": "Hello Jerry, come to rub my face in urine again?",
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
                    "date": "2018-10-05",
                    "comment": "That just sounds like slavery with extra steps.",
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
                    "date": "2018-10-05",
                    "comment": "Oh, I'm sorry Morty, are you the scientist or are you the kid who wanted to get laid?",
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
                    "date": "2018-10-05",
                    "comment": "I don't get it and I don't need to.",
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
    + id: `7` (number, required)

+ Request Show absence by id
**GET**&nbsp;&nbsp;`/api/v1/absences/7`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoyLCJleHAiOjE1Mzg3NTAyNjF9.z-vzxufxC2lDDQ2BAazF-lprIWyKs7pXBVcxWfKJUmQ
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "7",
                "type": "absences",
                "attributes": {
                  "date": "2018-10-05",
                  "comment": "It's a figure of speech, Morty! They're bureaucrats! I don't respect them. Just keep shooting, Morty! You have no idea what prison is like here!",
                  "reason": "other"
                },
                "relationships": {
                  "user": {
                    "data": {
                      "id": "9",
                      "type": "users"
                    }
                  }
                }
              }
            }

### Delete an absence [DELETE /api/v1/absences/{id}]

+ Parameters
    + id: `14` (number, required)

+ Request Delete absence by id
**DELETE**&nbsp;&nbsp;`/api/v1/absences/14`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozLCJleHAiOjE1Mzg3NTAyNjF9.LXi7jDz7Je3XiU-Vdm2-BwIH8x0T2bTH7n-wrEzTDrQ
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

+ Response 204

### Create an absence [POST /api/v1/absences]


+ Request Create absence
**POST**&nbsp;&nbsp;`/api/v1/absences`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo0LCJleHAiOjE1Mzg3NTAyNjF9.ngsFDl7pqv68tpRQHXZ2-xn2PB4WvyFKIIbYxmmMUoM
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            absence[reason]=other&absence[date]=2018-10-05+12%3A37%3A41+UTC&absence[comment]=Oh%2C+I%27m+sorry+Morty%2C+are+you+the+scientist+or+are+you+the+kid+who+wanted+to+get+laid%3F&absence[user_id]=19

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "21",
                "type": "absences",
                "attributes": {
                  "date": "2018-10-05",
                  "comment": "Oh, I'm sorry Morty, are you the scientist or are you the kid who wanted to get laid?",
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

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo1LCJleHAiOjE1Mzg3NTAyNjF9.Hs0Feszt7vXz_shU7xvnVlDbUK6iagBfzaRcTL0iEZU
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
                  "date": "2018-10-05",
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

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo2LCJleHAiOjE1Mzg3NTAyNjF9.ReyX-mV30Y0lXhgXNWIROohq-qZMT1MTDCGu2BJ2YC8
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "start_of_week": "2018-10-05",
              "end_of_week": "2018-10-05",
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
                    "y": 0.0,
                    "z": 0.0
                  },
                  {
                    "name": "Front end",
                    "y": 0.0,
                    "z": 0.0
                  },
                  {
                    "name": "Back end",
                    "y": 0.0,
                    "z": 0.0
                  },
                  {
                    "name": "Qa",
                    "y": 0.0,
                    "z": 0.0
                  },
                  {
                    "name": "Ops",
                    "y": 0.0,
                    "z": 0.0
                  },
                  {
                    "name": "Marketing",
                    "y": 0.0,
                    "z": 0.0
                  },
                  {
                    "name": "Design",
                    "y": 0.0,
                    "z": 0.0
                  }
                ]
              },
              "projects_chart": {
                "title": "Projects",
                "innerSize": "75%",
                "data": [
            
                ]
              },
              "series": [
            
              ],
              "xAxisData": [
            
              ]
            }

# Group EstimationReports


## EstimationReports [/reports/estimation_reports]


### Get report [GET /api/v1/reports/estimation_reports]


+ Request should generate estimation report
**GET**&nbsp;&nbsp;`/api/v1/reports/estimation_reports`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo3LCJleHAiOjE1Mzg3NTAyNjF9.-eoCibNsInox4L_jdbaXwRn0MKw8frPbxs1zPb3tgto
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": [
                {
                  "id": 5,
                  "project": "Project_5",
                  "details": "<https://trello.com/c/hcIRv6W0/1496-google-analytics>",
                  "created_at": "2018-10-05T12:37:41.908Z",
                  "trello_labels": null,
                  "estimate": null,
                  "status": null,
                  "total_time": 3.1,
                  "collaborators": [
                    {
                      "id": 31,
                      "name": "User_31"
                    },
                    {
                      "id": 32,
                      "name": "User_32"
                    },
                    {
                      "id": 33,
                      "name": "User_33"
                    },
                    {
                      "id": 34,
                      "name": "User_34"
                    },
                    {
                      "id": 35,
                      "name": "User_35"
                    }
                  ]
                },
                {
                  "id": 4,
                  "project": "Project_4",
                  "details": "<https://trello.com/c/hcIRv6W0/1496-google-analytics>",
                  "created_at": "2018-10-05T12:37:41.895Z",
                  "trello_labels": null,
                  "estimate": null,
                  "status": null,
                  "total_time": 3.1,
                  "collaborators": [
                    {
                      "id": 31,
                      "name": "User_31"
                    },
                    {
                      "id": 32,
                      "name": "User_32"
                    },
                    {
                      "id": 33,
                      "name": "User_33"
                    },
                    {
                      "id": 34,
                      "name": "User_34"
                    },
                    {
                      "id": 35,
                      "name": "User_35"
                    }
                  ]
                },
                {
                  "id": 3,
                  "project": "Project_3",
                  "details": "<https://trello.com/c/hcIRv6W0/1496-google-analytics>",
                  "created_at": "2018-10-05T12:37:41.881Z",
                  "trello_labels": null,
                  "estimate": null,
                  "status": null,
                  "total_time": 3.1,
                  "collaborators": [
                    {
                      "id": 31,
                      "name": "User_31"
                    },
                    {
                      "id": 32,
                      "name": "User_32"
                    },
                    {
                      "id": 33,
                      "name": "User_33"
                    },
                    {
                      "id": 34,
                      "name": "User_34"
                    },
                    {
                      "id": 35,
                      "name": "User_35"
                    }
                  ]
                },
                {
                  "id": 2,
                  "project": "Project_2",
                  "details": "<https://trello.com/c/hcIRv6W0/1496-google-analytics>",
                  "created_at": "2018-10-05T12:37:41.865Z",
                  "trello_labels": null,
                  "estimate": null,
                  "status": null,
                  "total_time": 3.1,
                  "collaborators": [
                    {
                      "id": 31,
                      "name": "User_31"
                    },
                    {
                      "id": 32,
                      "name": "User_32"
                    },
                    {
                      "id": 33,
                      "name": "User_33"
                    },
                    {
                      "id": 34,
                      "name": "User_34"
                    },
                    {
                      "id": 35,
                      "name": "User_35"
                    }
                  ]
                },
                {
                  "id": 1,
                  "project": "Project_1",
                  "details": "<https://trello.com/c/hcIRv6W0/1496-google-analytics>",
                  "created_at": "2018-10-05T12:37:41.850Z",
                  "trello_labels": null,
                  "estimate": null,
                  "status": null,
                  "total_time": 3.1,
                  "collaborators": [
                    {
                      "id": 31,
                      "name": "User_31"
                    },
                    {
                      "id": 32,
                      "name": "User_32"
                    },
                    {
                      "id": 33,
                      "name": "User_33"
                    },
                    {
                      "id": 34,
                      "name": "User_34"
                    },
                    {
                      "id": 35,
                      "name": "User_35"
                    }
                  ]
                }
              ],
              "meta": {
                "total_count": 5
              }
            }

# Group Holidays


## Holidays [/holidays]


### Get holidays [GET /api/v1/holidays]


+ Request Get holidays
**GET**&nbsp;&nbsp;`/api/v1/holidays`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo4LCJleHAiOjE1Mzg3NTAyNjF9.6cq2_tNjZRs0S269K5F8LiCQnwt76qlgAoYMeLPTSPs
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
                    "name": "Jerry Smith",
                    "date": "2018-10-06"
                  }
                },
                {
                  "id": "2",
                  "type": "holidays",
                  "attributes": {
                    "name": "Baby Legs",
                    "date": "2018-10-07"
                  }
                },
                {
                  "id": "3",
                  "type": "holidays",
                  "attributes": {
                    "name": "Fart",
                    "date": "2018-10-08"
                  }
                },
                {
                  "id": "4",
                  "type": "holidays",
                  "attributes": {
                    "name": "Jan Michael Vincent",
                    "date": "2018-10-09"
                  }
                },
                {
                  "id": "5",
                  "type": "holidays",
                  "attributes": {
                    "name": "Morty Jr.",
                    "date": "2018-10-10"
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

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo5LCJleHAiOjE1Mzg3NTAyNjF9.LEAnYoSJinBWx7bqibrv9NLPxPIReNdBQ7SrWMES5HM
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
                  "name": "Jessica",
                  "date": "2018-10-14"
                }
              }
            }

### Delete a holiday [DELETE /api/v1/holidays/{id}]

+ Parameters
    + id: `15` (number, required)

+ Request Delete holiday by id
**DELETE**&nbsp;&nbsp;`/api/v1/holidays/15`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxMCwiZXhwIjoxNTM4NzUwMjYyfQ.4kpFRDfPdbZBrwYD0SMpr-RqY5N2X8d4ssW3JinwU_M
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

+ Response 204

### Create a holiday [POST /api/v1/holidays]


+ Request Create holiday
**POST**&nbsp;&nbsp;`/api/v1/holidays`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxMSwiZXhwIjoxNTM4NzUwMjYyfQ.RkFIRw7LRsZohnj8SnCfnUlhozleFDT2iMzXxpDspv4
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            holiday[name]=Fart&holiday[date]=2018-10-26

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "21",
                "type": "holidays",
                "attributes": {
                  "name": "Fart",
                  "date": "2018-10-26"
                }
              }
            }

### Update a holiday [PUT /api/v1/holidays/{id}]

+ Parameters
    + id: `23` (number, required)

+ Request Update holiday
**PUT**&nbsp;&nbsp;`/api/v1/holidays/23`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxMiwiZXhwIjoxNTM4NzUwMjYyfQ.10sjbnTJbWTDw9xaqZB1W0gMdwM0M4R8AqENGsQw9-c
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            holiday[name]=BETA+VII

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "23",
                "type": "holidays",
                "attributes": {
                  "name": "BETA VII",
                  "date": "2018-10-28"
                }
              }
            }

# Group Projects


## Projects [/projects]


### Get projects [GET /api/v1/projects]


+ Request Get projects
**GET**&nbsp;&nbsp;`/api/v1/projects`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxMywiZXhwIjoxNTM4NzUwMjYyfQ.t37JDYCKmk2eqPg1nC9m4IvD0Gy6tQkmcTs8atnb2CQ
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": [
                {
                  "id": "41",
                  "type": "projects",
                  "attributes": {
                    "name": "Africar",
                    "alias": "alias_41"
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
                  "id": "40",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_40",
                    "alias": "alias_40"
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
                  "id": "39",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_39",
                    "alias": "alias_39"
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
                  "id": "38",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_38",
                    "alias": "alias_38"
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
                  "id": "37",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_37",
                    "alias": "alias_37"
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
                  "id": "36",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_36",
                    "alias": "alias_36"
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
                  "id": "35",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_35",
                    "alias": "alias_35"
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
                  "id": "34",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_34",
                    "alias": "alias_34"
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
                  "id": "33",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_33",
                    "alias": "alias_33"
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
                  "id": "32",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_32",
                    "alias": "alias_32"
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
                  "id": "31",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_31",
                    "alias": "alias_31"
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
                  "id": "30",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_30",
                    "alias": "alias_30"
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
                  "id": "29",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_29",
                    "alias": "alias_29"
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
                  "id": "28",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_28",
                    "alias": "alias_28"
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
                  "id": "27",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_27",
                    "alias": "alias_27"
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
                  "id": "26",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_26",
                    "alias": "alias_26"
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
                  "id": "25",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_25",
                    "alias": "alias_25"
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
                  "id": "24",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_24",
                    "alias": "alias_24"
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
                  "id": "23",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_23",
                    "alias": "alias_23"
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
                  "id": "22",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_22",
                    "alias": "alias_22"
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
                  "id": "21",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_21",
                    "alias": "alias_21"
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
                  "id": "20",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_20",
                    "alias": "alias_20"
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
                  "id": "19",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_19",
                    "alias": "alias_19"
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
                  "id": "18",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_18",
                    "alias": "alias_18"
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
                  "id": "17",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_17",
                    "alias": "alias_17"
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
                  "id": "16",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_16",
                    "alias": "alias_16"
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
                  "id": "15",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_15",
                    "alias": "alias_15"
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
                  "id": "14",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_14",
                    "alias": "alias_14"
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
                  "id": "13",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_13",
                    "alias": "alias_13"
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
                  "id": "12",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_12",
                    "alias": "alias_12"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "47",
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

### Get a project [GET /api/v1/projects/{id}]

+ Parameters
    + id: `70` (number, required)

+ Request Show project by id
**GET**&nbsp;&nbsp;`/api/v1/projects/70`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxNCwiZXhwIjoxNTM4NzUwMjYyfQ.jNdGseNkc2j1vShoL9-rkBQThHWS_RApE3dRgpIEovA
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "70",
                "type": "projects",
                "attributes": {
                  "name": "Project_69",
                  "alias": "alias_70"
                },
                "relationships": {
                  "team": {
                    "data": {
                      "id": "105",
                      "type": "teams"
                    }
                  }
                }
              }
            }

### Delete a project [DELETE /api/v1/projects/{id}]

+ Parameters
    + id: `96` (number, required)

+ Request Delete project by id
**DELETE**&nbsp;&nbsp;`/api/v1/projects/96`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxNSwiZXhwIjoxNTM4NzUwMjYyfQ.G9mUVgRV2rmTREWNPDpQqXVILODLd8OI2r1avEdgzeU
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

+ Response 200

    + Headers

            Content-Type: text/html

### Create a project [POST /api/v1/projects]


+ Request Create project
**POST**&nbsp;&nbsp;`/api/v1/projects`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxNiwiZXhwIjoxNTM4NzUwMjYzfQ._BFqhBaGb-kM-dqQxWjVrPH77pJNghtsDK0TWFc0yNA
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            project[name]=Snowball&project[alias]=Dimension+C-132&project[team_id]=185

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "150",
                "type": "projects",
                "attributes": {
                  "name": "Snowball",
                  "alias": "Dimension C-132"
                },
                "relationships": {
                  "team": {
                    "data": {
                      "id": "185",
                      "type": "teams"
                    }
                  }
                }
              }
            }

### Update a project [PUT /api/v1/projects/{id}]

+ Parameters
    + id: `170` (number, required)

+ Request Update project
**PUT**&nbsp;&nbsp;`/api/v1/projects/170`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxNywiZXhwIjoxNTM4NzUwMjYzfQ.C7Xym_JevIKEs9yHAsaxW2NOo3lnpGZRxK8IaYDINoU
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            project[name]=PROJECT_165

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "170",
                "type": "projects",
                "attributes": {
                  "name": "PROJECT_165",
                  "alias": "alias_169"
                },
                "relationships": {
                  "team": {
                    "data": {
                      "id": "205",
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

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxOCwiZXhwIjoxNTM4NzUwMjYzfQ.4yJNQNo5HP1Ax3uHwnMYVog6yuwfVt1YlztDscGAYFw
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": [
                {
                  "id": 222,
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

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxOSwiZXhwIjoxNTM4NzUwMjYzfQ.z2yn8KVaza46t-angSvHMKEWcoSw9r_Uis_ufA89KYQ
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": [
                {
                  "id": "258",
                  "type": "teams",
                  "attributes": {
                    "name": "Jerry's Mytholog",
                    "description": "WUBBA LUBBA DUB DUBS!!!"
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
                  "id": "259",
                  "type": "teams",
                  "attributes": {
                    "name": "Baby Legs",
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
                },
                {
                  "id": "260",
                  "type": "teams",
                  "attributes": {
                    "name": "Eyeholes Man",
                    "description": "Keep Summer safe."
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
                  "id": "261",
                  "type": "teams",
                  "attributes": {
                    "name": "Revolio 'Gearhead' Clockberg, Jr.",
                    "description": "This sounds like something The One True Morty might say."
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
                  "id": "262",
                  "type": "teams",
                  "attributes": {
                    "name": "Dr. Glip-Glop",
                    "description": "What is my purpose. You pass butter. Oh My God. Yeah, Welcome to the club pal."
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
    + id: `267` (number, required)

+ Request Show team by id
**GET**&nbsp;&nbsp;`/api/v1/teams/267`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoyMCwiZXhwIjoxNTM4NzUwMjYzfQ.TrAt62iL2-lkVGFPVGtKMoqsOLe4u37PYO1yhnaPglE
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "267",
                "type": "teams",
                "attributes": {
                  "name": "Mr. Meeseeks",
                  "description": "Oh yeah, If you think my Rick is Dead, then he is alive. If you think you're safe, then he's coming for you."
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
    + id: `270` (number, required)

+ Request Delete team by id
**DELETE**&nbsp;&nbsp;`/api/v1/teams/270`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoyMSwiZXhwIjoxNTM4NzUwMjYzfQ.6XybhwtMeAX5aUHmIi3JQdb55lSuJTFNEC4veq_8HF8
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

+ Response 204

### Create a teams [POST /api/v1/teams]


+ Request Create team
**POST**&nbsp;&nbsp;`/api/v1/teams`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoyMiwiZXhwIjoxNTM4NzUwMjYzfQ.sudY1DrdNbWGKWR7HwmGz5sKyqN1u_mkIQbiOIAtWkM
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            team[name]=Birdperson&team[description]=No+no%2C+If+I+wanted+to+be+sober%2C+I+wouldn%E2%80%99t+have+gotten+drunk.

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "278",
                "type": "teams",
                "attributes": {
                  "name": "Birdperson",
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
              }
            }

### Update a teams [PUT /api/v1/teams/{id}]

+ Parameters
    + id: `280` (number, required)

+ Request Update team
**PUT**&nbsp;&nbsp;`/api/v1/teams/280`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoyMywiZXhwIjoxNTM4NzUwMjYzfQ.PCExFSVwXZw8-R9Q7yOzHNcqAQma-OqhXtC6PXhKctQ
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            team[name]=MORTY+SMITH

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "280",
                "type": "teams",
                "attributes": {
                  "name": "MORTY SMITH",
                  "description": "Meeseeks are not born into this world fumbling for meaning, Jerry! We are created to serve a single purpose, for which we go to any lengths to fulfill."
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

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoyNCwiZXhwIjoxNTM4NzUwMjY0fQ.qWhjruBR8A02oq2RxhkaDS4m-1_piHVI2QC1S95QWkY
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": [
                {
                  "id": "40",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-05",
                    "time": "15:37",
                    "details": "<https://trello.com/c/hcIRv6W0/1496-google-analytics>",
                    "trello-labels": null,
                    "estimated-time": null
                  },
                  "relationships": {
                    "user": {
                      "data": {
                        "id": "70",
                        "type": "users"
                      }
                    },
                    "project": {
                      "data": {
                        "id": "257",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "39",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-05",
                    "time": "15:37",
                    "details": "<https://trello.com/c/hcIRv6W0/1496-google-analytics>",
                    "trello-labels": null,
                    "estimated-time": null
                  },
                  "relationships": {
                    "user": {
                      "data": {
                        "id": "69",
                        "type": "users"
                      }
                    },
                    "project": {
                      "data": {
                        "id": "256",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "38",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-05",
                    "time": "15:37",
                    "details": "<https://trello.com/c/hcIRv6W0/1496-google-analytics>",
                    "trello-labels": null,
                    "estimated-time": null
                  },
                  "relationships": {
                    "user": {
                      "data": {
                        "id": "68",
                        "type": "users"
                      }
                    },
                    "project": {
                      "data": {
                        "id": "255",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "37",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-05",
                    "time": "15:37",
                    "details": "<https://trello.com/c/hcIRv6W0/1496-google-analytics>",
                    "trello-labels": null,
                    "estimated-time": null
                  },
                  "relationships": {
                    "user": {
                      "data": {
                        "id": "67",
                        "type": "users"
                      }
                    },
                    "project": {
                      "data": {
                        "id": "254",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "36",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-05",
                    "time": "15:37",
                    "details": "<https://trello.com/c/hcIRv6W0/1496-google-analytics>",
                    "trello-labels": null,
                    "estimated-time": null
                  },
                  "relationships": {
                    "user": {
                      "data": {
                        "id": "66",
                        "type": "users"
                      }
                    },
                    "project": {
                      "data": {
                        "id": "253",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "35",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-05",
                    "time": "15:37",
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
                        "id": "252",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "34",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-05",
                    "time": "15:37",
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
                        "id": "251",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "33",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-05",
                    "time": "15:37",
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
                        "id": "250",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "32",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-05",
                    "time": "15:37",
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
                        "id": "249",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "31",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-05",
                    "time": "15:37",
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
                        "id": "248",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "30",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-05",
                    "time": "15:37",
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
                        "id": "247",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "29",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-05",
                    "time": "15:37",
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
                        "id": "246",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "28",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-05",
                    "time": "15:37",
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
                        "id": "245",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "27",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-05",
                    "time": "15:37",
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
                        "id": "244",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "26",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-05",
                    "time": "15:37",
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
                        "id": "243",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "25",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-05",
                    "time": "15:37",
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
                        "id": "242",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "24",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-05",
                    "time": "15:37",
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
                        "id": "241",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "23",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-05",
                    "time": "15:37",
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
                        "id": "240",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "22",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-05",
                    "time": "15:37",
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
                        "id": "239",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "21",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-05",
                    "time": "15:37",
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
                        "id": "238",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "20",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-05",
                    "time": "15:37",
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
                        "id": "237",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "19",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-05",
                    "time": "15:37",
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
                        "id": "236",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "18",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-05",
                    "time": "15:37",
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
                        "id": "235",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "17",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-05",
                    "time": "15:37",
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
                        "id": "234",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "16",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-05",
                    "time": "15:37",
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
                        "id": "233",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "15",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-05",
                    "time": "15:37",
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
                        "id": "232",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "14",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-05",
                    "time": "15:37",
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
                        "id": "231",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "13",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-05",
                    "time": "15:37",
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
                        "id": "230",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "12",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-05",
                    "time": "15:37",
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
                        "id": "229",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "11",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-10-05",
                    "time": "15:37",
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
                        "id": "228",
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
    + id: `67` (number, required)

+ Request Show time entry by id
**GET**&nbsp;&nbsp;`/api/v1/time_entries/67`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoyNSwiZXhwIjoxNTM4NzUwMjY0fQ.I8sZD0zB7BB9XefWdDDhboh-jNU6BZC86KjbR9fPTp0
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "67",
                "type": "time-entries",
                "attributes": {
                  "date": "2018-10-05",
                  "time": "15:37",
                  "details": "<https://trello.com/c/hcIRv6W0/1496-google-analytics>",
                  "trello-labels": null,
                  "estimated-time": null
                },
                "relationships": {
                  "user": {
                    "data": {
                      "id": "97",
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
              }
            }

### Delete a time entry [DELETE /api/v1/time_entries/{id}]

+ Parameters
    + id: `89` (number, required)

+ Request Delete time entry by id
**DELETE**&nbsp;&nbsp;`/api/v1/time_entries/89`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoyNiwiZXhwIjoxNTM4NzUwMjY0fQ.tSNfdtEXHY8Ji8gxZR9kSV4EOnzt4d2GBrZwXMEeVvE
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

+ Response 200

    + Headers

            Content-Type: text/html

### Create a time entry [POST /api/v1/time_entries]


+ Request Create time entry
**POST**&nbsp;&nbsp;`/api/v1/time_entries`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoyNywiZXhwIjoxNTM4NzUwMjY1fQ.DMONgn5rvOjqCKmzKcKP92nXWQAIK6puUKBP5vgpb4A
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            time_entry[date]=2018-10-05&time_entry[time]=15%3A37&time_entry[minutes]=37&time_entry[details]=%3Chttps%3A%2F%2Ftrello.com%2Fc%2FhcIRv6W0%2F1496-google-analytics%3E&time_entry[trello_labels][]=Feature&time_entry[trello_labels][]=High+Priority&time_entry[trello_labels][]=5&time_entry[user_id]=176&time_entry[project_id]=363

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "146",
                "type": "time-entries",
                "attributes": {
                  "date": "2018-10-05",
                  "time": "15:37",
                  "details": "<https://trello.com/c/hcIRv6W0/1496-google-analytics>",
                  "trello-labels": null,
                  "estimated-time": null
                },
                "relationships": {
                  "user": {
                    "data": {
                      "id": "176",
                      "type": "users"
                    }
                  },
                  "project": {
                    "data": {
                      "id": "363",
                      "type": "projects"
                    }
                  }
                }
              }
            }

### Update a time entry [PUT /api/v1/time_entries/{id}]

+ Parameters
    + id: `178` (number, required)

+ Request Update time entry
**PUT**&nbsp;&nbsp;`/api/v1/time_entries/178`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoyOCwiZXhwIjoxNTM4NzUwMjY1fQ.IkEkOip7v3GhihYQf5qyadlZGq7j1c9NfPKj_maQNcQ
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
                "id": "178",
                "type": "time-entries",
                "attributes": {
                  "date": "2018-10-05",
                  "time": "15:37",
                  "details": "<HTTPS://TRELLO.COM/C/HCIRV6W0/1496-GOOGLE-ANALYTICS>",
                  "trello-labels": null,
                  "estimated-time": null
                },
                "relationships": {
                  "user": {
                    "data": {
                      "id": "208",
                      "type": "users"
                    }
                  },
                  "project": {
                    "data": {
                      "id": "395",
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

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoyOSwiZXhwIjoxNTM4NzUwMjY1fQ.2wt3YopZjF6Rz7360DC3Ut_IJVP8dVAgLarDLai-vBA
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": [
                {
                  "id": "217",
                  "type": "users",
                  "attributes": {
                    "name": "Valentin",
                    "uid": "NfCzL7UiWv6y1c3e",
                    "created-at": "2018-10-05T12:37:45.791Z",
                    "is-active": false,
                    "role": "back_end"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "641",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "216",
                  "type": "users",
                  "attributes": {
                    "name": "User_216",
                    "uid": "YmR9Gv1m",
                    "created-at": "2018-10-05T12:37:45.786Z",
                    "is-active": false,
                    "role": "back_end"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "640",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "215",
                  "type": "users",
                  "attributes": {
                    "name": "User_215",
                    "uid": "T0LpY9B3BhM9IiY",
                    "created-at": "2018-10-05T12:37:45.782Z",
                    "is-active": false,
                    "role": "back_end"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "639",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "214",
                  "type": "users",
                  "attributes": {
                    "name": "User_214",
                    "uid": "F5MdI45e",
                    "created-at": "2018-10-05T12:37:45.777Z",
                    "is-active": false,
                    "role": "back_end"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "638",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "213",
                  "type": "users",
                  "attributes": {
                    "name": "User_213",
                    "uid": "O1H9XkOoTy0h2d",
                    "created-at": "2018-10-05T12:37:45.773Z",
                    "is-active": false,
                    "role": "back_end"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "637",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "212",
                  "type": "users",
                  "attributes": {
                    "name": "User_212",
                    "uid": "A3RmHqUo",
                    "created-at": "2018-10-05T12:37:45.768Z",
                    "is-active": false,
                    "role": "back_end"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "636",
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
    + id: `219` (number, required)

+ Request Show user by id
**GET**&nbsp;&nbsp;`/api/v1/users/219`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozMCwiZXhwIjoxNTM4NzUwMjY1fQ.JLLN4KNDMgp2fOVBtI6uHuA2WhuwyMHlAwXdIWlM-hI
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "219",
                "type": "users",
                "attributes": {
                  "name": "User_218",
                  "uid": "MtU6QtF2",
                  "created-at": "2018-10-05T12:37:45.829Z",
                  "is-active": false,
                  "role": "back_end"
                },
                "relationships": {
                  "team": {
                    "data": {
                      "id": "643",
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

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozMSwiZXhwIjoxNTM4NzUwMjY1fQ.dRTzFiG-DPE_zXDWAdi0jdmafwcE7nwVW2sVzqet1QM
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": [
                {
                  "id": 229,
                  "name": "Valentin"
                }
              ]
            }

### Delete a user [DELETE /api/v1/users/{id}]

+ Parameters
    + id: `230` (number, required)

+ Request Delete user by id
**DELETE**&nbsp;&nbsp;`/api/v1/users/230`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozMiwiZXhwIjoxNTM4NzUwMjY1fQ.RZPn8w32D1fHe4jGpxo69L_YyNcvm7MzxB5YMllfOho
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

+ Response 204

### Create a user [POST /api/v1/users]


+ Request Create user
**POST**&nbsp;&nbsp;`/api/v1/users`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozMywiZXhwIjoxNTM4NzUwMjY2fQ.WvK6vYKju_ap2um2ZRqz2Lgv1xCRIQuUU-4rH1EpGlE
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            user[name]=User_237&user[is_active]=false&user[uid]=Au0aK9SqQjOh3&user[role]=back_end

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "242",
                "type": "users",
                "attributes": {
                  "name": "User_237",
                  "uid": "Au0aK9SqQjOh3",
                  "created-at": "2018-10-05T12:37:46.017Z",
                  "is-active": false,
                  "role": "back_end"
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
    + id: `247` (number, required)

+ Request Update user
**PUT**&nbsp;&nbsp;`/api/v1/users/247`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozNCwiZXhwIjoxNTM4NzUwMjY2fQ.A_2TphUNL5CU9AoJAXiBePF4p_eHb2_hCpgSA-IyPS8
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            user[name]=USER_242

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "247",
                "type": "users",
                "attributes": {
                  "name": "USER_242",
                  "uid": "Wo6vKnEu",
                  "created-at": "2018-10-05T12:37:46.045Z",
                  "is-active": false,
                  "role": "back_end"
                },
                "relationships": {
                  "team": {
                    "data": {
                      "id": "670",
                      "type": "teams"
                    }
                  }
                }
              }
            }
