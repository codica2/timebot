

# Group Absences


## Absences [/absences]


### Get absences [GET /api/v1/absences]


+ Request Get absences
**GET**&nbsp;&nbsp;`/api/v1/absences`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE1MzkxNzU4NjF9.eGGvF0bYjWS2HdezEn3yzekbV_P1CPwvDHA4FeHGjPw
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
                    "date": "2018-10-10",
                    "comment": "You're like Hitler, except...Hitler cared about Germany, or something.",
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
                    "date": "2018-10-10",
                    "comment": "Where are my testicles, Summer?",
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
                    "date": "2018-10-10",
                    "comment": "Sometimes science is a lot more art, than science. A lot of people don't get that.",
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
                    "date": "2018-10-10",
                    "comment": "So what if the most meaningful day in your life was a simulation operating at minimum complexity.",
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
                    "date": "2018-10-10",
                    "comment": "That just sounds like slavery with extra steps.",
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
              "included": [
                {
                  "id": "6",
                  "type": "users",
                  "attributes": {
                    "name": "User_6",
                    "uid": "DeVqKpZ9R",
                    "created-at": "2018-10-10T10:51:01.027Z",
                    "is-active": false,
                    "role": "back_end"
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
                  "id": "5",
                  "type": "users",
                  "attributes": {
                    "name": "User_5",
                    "uid": "I3Cs5zUaMz7fG",
                    "created-at": "2018-10-10T10:51:01.020Z",
                    "is-active": false,
                    "role": "back_end"
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
                  "id": "4",
                  "type": "users",
                  "attributes": {
                    "name": "User_4",
                    "uid": "4hIv1dKjMc0z",
                    "created-at": "2018-10-10T10:51:01.013Z",
                    "is-active": false,
                    "role": "back_end"
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
                  "id": "3",
                  "type": "users",
                  "attributes": {
                    "name": "User_3",
                    "uid": "1n9hCzKg3j",
                    "created-at": "2018-10-10T10:51:01.007Z",
                    "is-active": false,
                    "role": "back_end"
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
                  "id": "2",
                  "type": "users",
                  "attributes": {
                    "name": "User_2",
                    "uid": "71P8VuO1A",
                    "created-at": "2018-10-10T10:51:00.999Z",
                    "is-active": false,
                    "role": "back_end"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "2",
                        "type": "teams"
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

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoyLCJleHAiOjE1MzkxNzU4NjF9.C2GLGimMDybcNdVwxo5T_CmBGRHbtbJBxVI_z6_Hxb0
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
                  "date": "2018-10-10",
                  "comment": "Snuffles was my slave name, you can call me snowball because my fur is pretty and white.",
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
    + id: `13` (number, required)

+ Request Delete absence by id
**DELETE**&nbsp;&nbsp;`/api/v1/absences/13`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozLCJleHAiOjE1MzkxNzU4NjF9.mAyY_cazf0Wb0SkP-27v7ivfqB1ccZ-6YVFyr7caOAc
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

+ Response 204

### Create an absence [POST /api/v1/absences]


+ Request Create absence
**POST**&nbsp;&nbsp;`/api/v1/absences`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo0LCJleHAiOjE1MzkxNzU4NjF9.Pw1l5QVGcc39i7JaC-_4rn6H5w6mr06Id9B3pVfrq8I
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            absence[reason]=other&absence[date]=2018-10-10+10%3A51%3A01+UTC&absence[comment]=Uncertainty+is+inherently+unsustainable.+Eventually%2C+everything+either+is+or+isn%27t.&absence[user_id]=19

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "21",
                "type": "absences",
                "attributes": {
                  "date": "2018-10-10",
                  "comment": "Uncertainty is inherently unsustainable. Eventually, everything either is or isn't.",
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
              },
              "included": [
                {
                  "id": "19",
                  "type": "users",
                  "attributes": {
                    "name": "User_19",
                    "uid": "LgAw53QiE5W",
                    "created-at": "2018-10-10T10:51:01.313Z",
                    "is-active": false,
                    "role": "back_end"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "19",
                        "type": "teams"
                      }
                    }
                  }
                }
              ]
            }

### Update an absence [PUT /api/v1/absences/{id}]

+ Parameters
    + id: `24` (number, required)

+ Request Update absence
**PUT**&nbsp;&nbsp;`/api/v1/absences/24`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo1LCJleHAiOjE1MzkxNzU4NjF9.AoWbE31Tte52mK1FAZExHYEG-Pdadfwx97l5ZBjSmOo
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
                "id": "24",
                "type": "absences",
                "attributes": {
                  "date": "2018-10-10",
                  "comment": "Comment",
                  "reason": "other"
                },
                "relationships": {
                  "user": {
                    "data": {
                      "id": "28",
                      "type": "users"
                    }
                  }
                }
              },
              "included": [
                {
                  "id": "28",
                  "type": "users",
                  "attributes": {
                    "name": "User_28",
                    "uid": "9tQx6gUtDeDjSb",
                    "created-at": "2018-10-10T10:51:01.398Z",
                    "is-active": false,
                    "role": "back_end"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "28",
                        "type": "teams"
                      }
                    }
                  }
                }
              ]
            }

# Group Admins


## Admins [/admins]


### Get admins [GET /api/v1/admins]


+ Request Get admins
**GET**&nbsp;&nbsp;`/api/v1/admins`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxMSwiZXhwIjoxNTM5MTc1ODYxfQ.2piLxLAnMcECPT49t0H7deHrbBGpnq80Lq6h28vehqw
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": [
                {
                  "id": "6",
                  "type": "admins",
                  "attributes": {
                    "email": "mitchellberge@champlin.biz"
                  }
                },
                {
                  "id": "7",
                  "type": "admins",
                  "attributes": {
                    "email": "ivanreinger@auer.biz"
                  }
                },
                {
                  "id": "8",
                  "type": "admins",
                  "attributes": {
                    "email": "cherstreich@bednar.name"
                  }
                },
                {
                  "id": "9",
                  "type": "admins",
                  "attributes": {
                    "email": "deannagoodwin@mosciskiweinat.com"
                  }
                },
                {
                  "id": "10",
                  "type": "admins",
                  "attributes": {
                    "email": "jefferey@dickiemmerich.net"
                  }
                },
                {
                  "id": "11",
                  "type": "admins",
                  "attributes": {
                    "email": "elenorlindgren@jacobsrodriguez.co"
                  }
                }
              ]
            }

### Get an admin [GET /api/v1/admins/{id}]

+ Parameters
    + id: `12` (number, required)

+ Request Show admin by id
**GET**&nbsp;&nbsp;`/api/v1/admins/12`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxNywiZXhwIjoxNTM5MTc1ODYxfQ.1I3k6nVNflaMfCAMW6vMI9qkaRJKSdJiatSModYIUfA
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "12",
                "type": "admins",
                "attributes": {
                  "email": "christina@powlowskipowlowski.co"
                }
              }
            }

### Delete an admin [DELETE /api/v1/admins/{id}]

+ Parameters
    + id: `22` (number, required)

+ Request Delete admin by id
**DELETE**&nbsp;&nbsp;`/api/v1/admins/22`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoyMywiZXhwIjoxNTM5MTc1ODYxfQ.WgPc8F-CjKyVJQ8LKcKvlQn79DrA8053yFNIZOelz2M
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

+ Response 204

### Create an admin [POST /api/v1/admins]


+ Request Create admin
**POST**&nbsp;&nbsp;`/api/v1/admins`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoyOSwiZXhwIjoxNTM5MTc1ODYxfQ.Nsg-lY7xUTXH9htOlVARInJ9zHll-8NiDciLN7AM3kA
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            admin[email]=dongherzog%40wunschankunding.org&admin[password]=Pb3fPjHj2zS16a3

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "30",
                "type": "admins",
                "attributes": {
                  "email": "dongherzog@wunschankunding.org"
                }
              }
            }

### Update an admin [PUT /api/v1/admins/{id}]

+ Parameters
    + id: `34` (number, required)

+ Request Update admin
**PUT**&nbsp;&nbsp;`/api/v1/admins/34`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozNiwiZXhwIjoxNTM5MTc1ODYxfQ.U7V1mv0VXrqmRxB8xKN5cJaTFNjqcRZJrQceuPx03pQ
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            admin[email]=email%40mail.com

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "34",
                "type": "admins",
                "attributes": {
                  "email": "email@mail.com"
                }
              }
            }

# Group Dashboard


## Dashboard [/dashboard]


### Get dashboard info [GET /api/v1/dashboard]


+ Request Get dashboard info
**GET**&nbsp;&nbsp;`/api/v1/dashboard`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozNywiZXhwIjoxNTM5MTc1ODYxfQ.t20MXW74xIGedRAtoSCEAgzR6I4iA7BOEQ47GURhDtc
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "start_of_week": "2018-10-10",
              "end_of_week": "2018-10-10",
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

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozOCwiZXhwIjoxNTM5MTc1ODYxfQ.ngoLAmqcuyc7IYv0J28cOIm2GwfYtdUy8YZPMlDAt1k
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
                  "details": "Sometimes science is a lot more art, than science. A lot of people don't get that.",
                  "created_at": "2018-10-10T10:51:01.779Z",
                  "trello_labels": null,
                  "estimate": null,
                  "status": null,
                  "total_time": 0.9,
                  "collaborators": [
                    {
                      "id": 35,
                      "name": "User_35"
                    }
                  ]
                },
                {
                  "id": 4,
                  "project": "Project_4",
                  "details": "Listen, I'm not the nicest guy in the universe, because I'm the smartest, and being nice is something stupid people do to hedge their bets.",
                  "created_at": "2018-10-10T10:51:01.766Z",
                  "trello_labels": null,
                  "estimate": null,
                  "status": null,
                  "total_time": 1.7,
                  "collaborators": [
                    {
                      "id": 33,
                      "name": "User_33"
                    },
                    {
                      "id": 34,
                      "name": "User_34"
                    }
                  ]
                },
                {
                  "id": 3,
                  "project": "Project_3",
                  "details": "Listen, I'm not the nicest guy in the universe, because I'm the smartest, and being nice is something stupid people do to hedge their bets.",
                  "created_at": "2018-10-10T10:51:01.754Z",
                  "trello_labels": null,
                  "estimate": null,
                  "status": null,
                  "total_time": 1.7,
                  "collaborators": [
                    {
                      "id": 33,
                      "name": "User_33"
                    },
                    {
                      "id": 34,
                      "name": "User_34"
                    }
                  ]
                },
                {
                  "id": 2,
                  "project": "Project_2",
                  "details": "He's not a hot girl. He can't just bail on his life and set up shop in someone else's.",
                  "created_at": "2018-10-10T10:51:01.743Z",
                  "trello_labels": null,
                  "estimate": null,
                  "status": null,
                  "total_time": 0.9,
                  "collaborators": [
                    {
                      "id": 32,
                      "name": "User_32"
                    }
                  ]
                },
                {
                  "id": 1,
                  "project": "Project_1",
                  "details": "Well then get your shit together. Get it all together and put it in a backpack, all your shit, so it's together. ...and if you gotta take it somewhere, take it somewhere ya know? Take it to the shit store and sell it, or put it in a shit museum. I don't care what you do, you just gotta get it together... Get your shit together.",
                  "created_at": "2018-10-10T10:51:01.730Z",
                  "trello_labels": null,
                  "estimate": null,
                  "status": null,
                  "total_time": 0.9,
                  "collaborators": [
                    {
                      "id": 31,
                      "name": "User_31"
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

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozOSwiZXhwIjoxNTM5MTc1ODYxfQ.ch8t68zkha-J0d7sUY0Cnob8RpOueSvLoowCN5uRUdY
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
                    "name": "Tammy Gueterman",
                    "date": "2018-10-11"
                  }
                },
                {
                  "id": "2",
                  "type": "holidays",
                  "attributes": {
                    "name": "Loggins",
                    "date": "2018-10-12"
                  }
                },
                {
                  "id": "3",
                  "type": "holidays",
                  "attributes": {
                    "name": "Gazorpazorpfield",
                    "date": "2018-10-13"
                  }
                },
                {
                  "id": "4",
                  "type": "holidays",
                  "attributes": {
                    "name": "Stealy",
                    "date": "2018-10-14"
                  }
                },
                {
                  "id": "5",
                  "type": "holidays",
                  "attributes": {
                    "name": "Squanchy",
                    "date": "2018-10-15"
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

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo0MCwiZXhwIjoxNTM5MTc1ODYxfQ.dHPUsSxiGjL349ct3YTy_yvwzrH7zwBDLtHKkJt3_wQ
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
                  "name": "Fart",
                  "date": "2018-10-19"
                }
              }
            }

### Delete a holiday [DELETE /api/v1/holidays/{id}]

+ Parameters
    + id: `11` (number, required)

+ Request Delete holiday by id
**DELETE**&nbsp;&nbsp;`/api/v1/holidays/11`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo0MSwiZXhwIjoxNTM5MTc1ODYxfQ.gZ3D1NP--6V-f5k_zoZkvYN4UK7N8wdiqSvrf_tHjx4
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

+ Response 204

### Create a holiday [POST /api/v1/holidays]


+ Request Create holiday
**POST**&nbsp;&nbsp;`/api/v1/holidays`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo0MiwiZXhwIjoxNTM5MTc1ODYxfQ.XQ-Dd5e1JxjedI3qafPXn8c5IQw5aQhmBQBXUlU6wFg
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            holiday[name]=Abradolf+Lincler&holiday[date]=2018-10-31

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "21",
                "type": "holidays",
                "attributes": {
                  "name": "Abradolf Lincler",
                  "date": "2018-10-31"
                }
              }
            }

### Update a holiday [PUT /api/v1/holidays/{id}]

+ Parameters
    + id: `26` (number, required)

+ Request Update holiday
**PUT**&nbsp;&nbsp;`/api/v1/holidays/26`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo0MywiZXhwIjoxNTM5MTc1ODYxfQ.qzhN4el6yarnZdNksRKDCArsnnDGw8ZWH_A2F9KTGgE
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            holiday[name]=JAN+MICHAEL+VINCENT

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "26",
                "type": "holidays",
                "attributes": {
                  "name": "JAN MICHAEL VINCENT",
                  "date": "2018-11-05"
                }
              }
            }

# Group Projects


## Projects [/projects]


### Get projects [GET /api/v1/projects]


+ Request Get projects
**GET**&nbsp;&nbsp;`/api/v1/projects`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo0NCwiZXhwIjoxNTM5MTc1ODYyfQ.SCZzw54OmZzhNN7DnLXu2ckBIwXX64kYWSOLsHhmkrE
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
              "included": [
                {
                  "id": "76",
                  "type": "teams",
                  "attributes": {
                    "name": "Shrimply Pibbles",
                    "description": "Let me out, what you see is not the same person as me. My life's a lie. I'm not who you're looking. Let me out. Set me free. I'm really old. This isn't me. My real body is slowly dieing in a vat. Is anybody listening? Can anyone understand? Stop looking at me like that and actually help me. Help me. Help me I'm gunna die."
                  },
                  "relationships": {
                    "projects": {
                      "data": [
                        {
                          "id": "41",
                          "type": "projects"
                        }
                      ]
                    },
                    "users": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "75",
                  "type": "teams",
                  "attributes": {
                    "name": "Summer Smith",
                    "description": "It's a figure of speech, Morty! They're bureaucrats! I don't respect them. Just keep shooting, Morty! You have no idea what prison is like here!"
                  },
                  "relationships": {
                    "projects": {
                      "data": [
                        {
                          "id": "40",
                          "type": "projects"
                        }
                      ]
                    },
                    "users": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "74",
                  "type": "teams",
                  "attributes": {
                    "name": "Jerry Smith",
                    "description": "Well then get your shit together. Get it all together and put it in a backpack, all your shit, so it's together. ...and if you gotta take it somewhere, take it somewhere ya know? Take it to the shit store and sell it, or put it in a shit museum. I don't care what you do, you just gotta get it together... Get your shit together."
                  },
                  "relationships": {
                    "projects": {
                      "data": [
                        {
                          "id": "39",
                          "type": "projects"
                        }
                      ]
                    },
                    "users": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "73",
                  "type": "teams",
                  "attributes": {
                    "name": "Jan Michael Vincent",
                    "description": "Don’t even trip dawg."
                  },
                  "relationships": {
                    "projects": {
                      "data": [
                        {
                          "id": "38",
                          "type": "projects"
                        }
                      ]
                    },
                    "users": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "72",
                  "type": "teams",
                  "attributes": {
                    "name": "Birdperson",
                    "description": "Let me out, what you see is not the same person as me. My life's a lie. I'm not who you're looking. Let me out. Set me free. I'm really old. This isn't me. My real body is slowly dieing in a vat. Is anybody listening? Can anyone understand? Stop looking at me like that and actually help me. Help me. Help me I'm gunna die."
                  },
                  "relationships": {
                    "projects": {
                      "data": [
                        {
                          "id": "37",
                          "type": "projects"
                        }
                      ]
                    },
                    "users": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "71",
                  "type": "teams",
                  "attributes": {
                    "name": "Mr. Goldenfold",
                    "description": "I'm the devil. What should I do when I fail? Give myself an ice cream?"
                  },
                  "relationships": {
                    "projects": {
                      "data": [
                        {
                          "id": "36",
                          "type": "projects"
                        }
                      ]
                    },
                    "users": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "70",
                  "type": "teams",
                  "attributes": {
                    "name": "Fart",
                    "description": "He's not a hot girl. He can't just bail on his life and set up shop in someone else's."
                  },
                  "relationships": {
                    "projects": {
                      "data": [
                        {
                          "id": "35",
                          "type": "projects"
                        }
                      ]
                    },
                    "users": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "69",
                  "type": "teams",
                  "attributes": {
                    "name": "Stealy",
                    "description": "You're like Hitler, except...Hitler cared about Germany, or something."
                  },
                  "relationships": {
                    "projects": {
                      "data": [
                        {
                          "id": "34",
                          "type": "projects"
                        }
                      ]
                    },
                    "users": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "68",
                  "type": "teams",
                  "attributes": {
                    "name": "Jessica",
                    "description": "I want that Mulan McNugget sauce, Morty!"
                  },
                  "relationships": {
                    "projects": {
                      "data": [
                        {
                          "id": "33",
                          "type": "projects"
                        }
                      ]
                    },
                    "users": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "67",
                  "type": "teams",
                  "attributes": {
                    "name": "Shrimply Pibbles",
                    "description": "Great, now I have to take over an entire planet because of your stupid boobs."
                  },
                  "relationships": {
                    "projects": {
                      "data": [
                        {
                          "id": "32",
                          "type": "projects"
                        }
                      ]
                    },
                    "users": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "66",
                  "type": "teams",
                  "attributes": {
                    "name": "Jan Michael Vincent",
                    "description": "Great, now I have to take over an entire planet because of your stupid boobs."
                  },
                  "relationships": {
                    "projects": {
                      "data": [
                        {
                          "id": "31",
                          "type": "projects"
                        }
                      ]
                    },
                    "users": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "65",
                  "type": "teams",
                  "attributes": {
                    "name": "Birdperson",
                    "description": "Uncertainty is inherently unsustainable. Eventually, everything either is or isn't."
                  },
                  "relationships": {
                    "projects": {
                      "data": [
                        {
                          "id": "30",
                          "type": "projects"
                        }
                      ]
                    },
                    "users": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "64",
                  "type": "teams",
                  "attributes": {
                    "name": "Rick Sanchez",
                    "description": "Nobody exists on purpose. Nobody belongs anywhere. Everybody is going to die."
                  },
                  "relationships": {
                    "projects": {
                      "data": [
                        {
                          "id": "29",
                          "type": "projects"
                        }
                      ]
                    },
                    "users": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "63",
                  "type": "teams",
                  "attributes": {
                    "name": "Gazorpazorpfield",
                    "description": "Listen, I'm not the nicest guy in the universe, because I'm the smartest, and being nice is something stupid people do to hedge their bets."
                  },
                  "relationships": {
                    "projects": {
                      "data": [
                        {
                          "id": "28",
                          "type": "projects"
                        }
                      ]
                    },
                    "users": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "62",
                  "type": "teams",
                  "attributes": {
                    "name": "Unity",
                    "description": "Go home and drink, grandpa."
                  },
                  "relationships": {
                    "projects": {
                      "data": [
                        {
                          "id": "27",
                          "type": "projects"
                        }
                      ]
                    },
                    "users": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "61",
                  "type": "teams",
                  "attributes": {
                    "name": "Snowball",
                    "description": "You're our boy dog, don't even trip."
                  },
                  "relationships": {
                    "projects": {
                      "data": [
                        {
                          "id": "26",
                          "type": "projects"
                        }
                      ]
                    },
                    "users": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "60",
                  "type": "teams",
                  "attributes": {
                    "name": "Abradolf Lincler",
                    "description": "I want that Mulan McNugget sauce, Morty!"
                  },
                  "relationships": {
                    "projects": {
                      "data": [
                        {
                          "id": "25",
                          "type": "projects"
                        }
                      ]
                    },
                    "users": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "59",
                  "type": "teams",
                  "attributes": {
                    "name": "Baby Legs",
                    "description": "That's the difference between you and me, Morty. I never go back to the carpet store."
                  },
                  "relationships": {
                    "projects": {
                      "data": [
                        {
                          "id": "24",
                          "type": "projects"
                        }
                      ]
                    },
                    "users": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "58",
                  "type": "teams",
                  "attributes": {
                    "name": "Revolio 'Gearhead' Clockberg, Jr.",
                    "description": "Having a family doesn't mean that you stop being an individual."
                  },
                  "relationships": {
                    "projects": {
                      "data": [
                        {
                          "id": "23",
                          "type": "projects"
                        }
                      ]
                    },
                    "users": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "57",
                  "type": "teams",
                  "attributes": {
                    "name": "Jessica",
                    "description": "I'm more than just a hammer."
                  },
                  "relationships": {
                    "projects": {
                      "data": [
                        {
                          "id": "22",
                          "type": "projects"
                        }
                      ]
                    },
                    "users": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "56",
                  "type": "teams",
                  "attributes": {
                    "name": "Tammy Gueterman",
                    "description": "Aw, c'mon Rick. That doesn't seem so bad."
                  },
                  "relationships": {
                    "projects": {
                      "data": [
                        {
                          "id": "21",
                          "type": "projects"
                        }
                      ]
                    },
                    "users": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "55",
                  "type": "teams",
                  "attributes": {
                    "name": "Mr. Meeseeks",
                    "description": "I like what you got."
                  },
                  "relationships": {
                    "projects": {
                      "data": [
                        {
                          "id": "20",
                          "type": "projects"
                        }
                      ]
                    },
                    "users": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "54",
                  "type": "teams",
                  "attributes": {
                    "name": "King Jellybean",
                    "description": "Go home and drink, grandpa."
                  },
                  "relationships": {
                    "projects": {
                      "data": [
                        {
                          "id": "19",
                          "type": "projects"
                        }
                      ]
                    },
                    "users": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "53",
                  "type": "teams",
                  "attributes": {
                    "name": "Jan Michael Vincent",
                    "description": "Snuffles was my slave name, you can call me snowball because my fur is pretty and white."
                  },
                  "relationships": {
                    "projects": {
                      "data": [
                        {
                          "id": "18",
                          "type": "projects"
                        }
                      ]
                    },
                    "users": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "52",
                  "type": "teams",
                  "attributes": {
                    "name": "Loggins",
                    "description": "Having a family doesn't mean that you stop being an individual."
                  },
                  "relationships": {
                    "projects": {
                      "data": [
                        {
                          "id": "17",
                          "type": "projects"
                        }
                      ]
                    },
                    "users": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "51",
                  "type": "teams",
                  "attributes": {
                    "name": "Scary Terry",
                    "description": "Listen, I'm not the nicest guy in the universe, because I'm the smartest, and being nice is something stupid people do to hedge their bets."
                  },
                  "relationships": {
                    "projects": {
                      "data": [
                        {
                          "id": "16",
                          "type": "projects"
                        }
                      ]
                    },
                    "users": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "50",
                  "type": "teams",
                  "attributes": {
                    "name": "King Jellybean",
                    "description": "It's a figure of speech, Morty! They're bureaucrats! I don't respect them. Just keep shooting, Morty! You have no idea what prison is like here!"
                  },
                  "relationships": {
                    "projects": {
                      "data": [
                        {
                          "id": "15",
                          "type": "projects"
                        }
                      ]
                    },
                    "users": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "49",
                  "type": "teams",
                  "attributes": {
                    "name": "Beth Smith",
                    "description": "Nobody exists on purpose. Nobody belongs anywhere. Everybody is going to die."
                  },
                  "relationships": {
                    "projects": {
                      "data": [
                        {
                          "id": "14",
                          "type": "projects"
                        }
                      ]
                    },
                    "users": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "48",
                  "type": "teams",
                  "attributes": {
                    "name": "Beth Smith",
                    "description": "I want that Mulan McNugget sauce, Morty!"
                  },
                  "relationships": {
                    "projects": {
                      "data": [
                        {
                          "id": "13",
                          "type": "projects"
                        }
                      ]
                    },
                    "users": {
                      "data": [
            
                      ]
                    }
                  }
                },
                {
                  "id": "47",
                  "type": "teams",
                  "attributes": {
                    "name": "Loggins",
                    "description": "Well then get your shit together. Get it all together and put it in a backpack, all your shit, so it's together. ...and if you gotta take it somewhere, take it somewhere ya know? Take it to the shit store and sell it, or put it in a shit museum. I don't care what you do, you just gotta get it together... Get your shit together."
                  },
                  "relationships": {
                    "projects": {
                      "data": [
                        {
                          "id": "12",
                          "type": "projects"
                        }
                      ]
                    },
                    "users": {
                      "data": [
            
                      ]
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
    + id: `74` (number, required)

+ Request Show project by id
**GET**&nbsp;&nbsp;`/api/v1/projects/74`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo0NSwiZXhwIjoxNTM5MTc1ODYyfQ.fbwRKhe9hOyBRoA2EVIrrdGjVxP4jTNFkCe-jMMGcmI
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "74",
                "type": "projects",
                "attributes": {
                  "name": "Project_73",
                  "alias": "alias_74"
                },
                "relationships": {
                  "team": {
                    "data": {
                      "id": "109",
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

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo0NiwiZXhwIjoxNTM5MTc1ODYyfQ.9UeJwrEHNtjgDsDZvbPzcT_LOkisqI70paodWB78M50
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

+ Response 200

    + Headers

            Content-Type: text/html

### Create a project [POST /api/v1/projects]


+ Request Create project
**POST**&nbsp;&nbsp;`/api/v1/projects`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo0NywiZXhwIjoxNTM5MTc1ODYzfQ.jZq8lCFutlqcWj025SNXsm8_o3H4O0hwySV2km1kUME
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            project[name]=Gazorpazorpfield&project[alias]=Dimension+C-137&project[team_id]=185

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "150",
                "type": "projects",
                "attributes": {
                  "name": "Gazorpazorpfield",
                  "alias": "Dimension C-137"
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
    + id: `183` (number, required)

+ Request Update project
**PUT**&nbsp;&nbsp;`/api/v1/projects/183`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo0OCwiZXhwIjoxNTM5MTc1ODYzfQ.jK7cWwYqlVNZMHbvGm7o9NhdWDeeZL1UoyNKUKl0vVM
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
                "id": "183",
                "type": "projects",
                "attributes": {
                  "name": "PROJECT_178",
                  "alias": "alias_182"
                },
                "relationships": {
                  "team": {
                    "data": {
                      "id": "218",
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

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo0OSwiZXhwIjoxNTM5MTc1ODYzfQ.1iUDfmLUMoCxH0WPSeNEw_v4YevwX2axD_9GAxf1J0A
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

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo1MCwiZXhwIjoxNTM5MTc1ODYzfQ.TO6FGMwwYNI2BH9IJsBH7kpAipdZSw0uP_EK9EiaDns
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
                    "name": "Baby Legs",
                    "description": "Aw, c'mon Rick. That doesn't seem so bad."
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
                    "name": "Squanchy",
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
                  "id": "260",
                  "type": "teams",
                  "attributes": {
                    "name": "Jerry's Mytholog",
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
                },
                {
                  "id": "261",
                  "type": "teams",
                  "attributes": {
                    "name": "Scary Terry",
                    "description": "Uncertainty is inherently unsustainable. Eventually, everything either is or isn't."
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
                    "name": "Mr. Meeseeks",
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
    + id: `266` (number, required)

+ Request Show team by id
**GET**&nbsp;&nbsp;`/api/v1/teams/266`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo1MSwiZXhwIjoxNTM5MTc1ODYzfQ.n5llgMx9EMBvAooDJWBrJHkrNMrojBBGLV_znJEJ11M
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "266",
                "type": "teams",
                "attributes": {
                  "name": "Rick Sanchez",
                  "description": "Great, now I have to take over an entire planet because of your stupid boobs."
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
    + id: `268` (number, required)

+ Request Delete team by id
**DELETE**&nbsp;&nbsp;`/api/v1/teams/268`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo1MiwiZXhwIjoxNTM5MTc1ODYzfQ.f0Sh89rM36W8uZVbmmT3R7dprFPVs0mOnunWNxeePnY
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

+ Response 204

### Create a teams [POST /api/v1/teams]


+ Request Create team
**POST**&nbsp;&nbsp;`/api/v1/teams`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo1MywiZXhwIjoxNTM5MTc1ODYzfQ.YbVklzCnDO_fCL430Vm7Aqw-pAxj6VOLxnjemd-1-Fk
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            team[name]=Tophat+Jones&team[description]=Oh%2C+I%27m+sorry+Morty%2C+are+you+the+scientist+or+are+you+the+kid+who+wanted+to+get+laid%3F

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "278",
                "type": "teams",
                "attributes": {
                  "name": "Tophat Jones",
                  "description": "Oh, I'm sorry Morty, are you the scientist or are you the kid who wanted to get laid?"
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
    + id: `279` (number, required)

+ Request Update team
**PUT**&nbsp;&nbsp;`/api/v1/teams/279`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo1NCwiZXhwIjoxNTM5MTc1ODYzfQ.uuPhMo2jP-kFHkadEnkqB3_5RFitVKxPEKdf0pvbNYU
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            team[name]=SHRIMPLY+PIBBLES

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "279",
                "type": "teams",
                "attributes": {
                  "name": "SHRIMPLY PIBBLES",
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
              }
            }

# Group Time Entries


## Time Entries [/time_entries]


### Get time entries [GET /api/v1/time_entries]


+ Request Get time entries
**GET**&nbsp;&nbsp;`/api/v1/time_entries`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo1NSwiZXhwIjoxNTM5MTc1ODY0fQ.je0SU9AGrXpZ1JGIsZDocMwl0L7MB0gc3XIzIljCF-c
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
                    "date": "2018-10-10",
                    "time": "13:51",
                    "details": "Existence is pain to a meeseeks Jerry, and we will do anything to alleviate that pain.",
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
                    "date": "2018-10-10",
                    "time": "13:51",
                    "details": "Aww, gee, you got me there Rick.",
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
                    "date": "2018-10-10",
                    "time": "13:51",
                    "details": "What about the reality where Hitler cured cancer, Morty? The answer is: Don't think about it.",
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
                    "date": "2018-10-10",
                    "time": "13:51",
                    "details": "What about the reality where Hitler cured cancer, Morty? The answer is: Don't think about it.",
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
                    "date": "2018-10-10",
                    "time": "13:51",
                    "details": "Oh, I'm sorry Morty, are you the scientist or are you the kid who wanted to get laid?",
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
                    "date": "2018-10-10",
                    "time": "13:51",
                    "details": "I like what you got.",
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
                    "date": "2018-10-10",
                    "time": "13:51",
                    "details": "You're like Hitler, except...Hitler cared about Germany, or something.",
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
                    "date": "2018-10-10",
                    "time": "13:51",
                    "details": "You're like Hitler, except...Hitler cared about Germany, or something.",
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
                    "date": "2018-10-10",
                    "time": "13:51",
                    "details": "Uncertainty is inherently unsustainable. Eventually, everything either is or isn't.",
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
                    "date": "2018-10-10",
                    "time": "13:51",
                    "details": "Go home and drink, grandpa.",
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
                    "date": "2018-10-10",
                    "time": "13:51",
                    "details": "Aw, c'mon Rick. That doesn't seem so bad.",
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
                    "date": "2018-10-10",
                    "time": "13:51",
                    "details": "There is no god, Summer; gotta rip that band-aid off now you'll thank me later.",
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
                    "date": "2018-10-10",
                    "time": "13:51",
                    "details": "Little tip, Morty. Never clean DNA vials with your spit.",
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
                    "date": "2018-10-10",
                    "time": "13:51",
                    "details": "So what if the most meaningful day in your life was a simulation operating at minimum complexity.",
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
                    "date": "2018-10-10",
                    "time": "13:51",
                    "details": "Don’t even trip dawg.",
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
                    "date": "2018-10-10",
                    "time": "13:51",
                    "details": "You're like Hitler, except...Hitler cared about Germany, or something.",
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
                    "date": "2018-10-10",
                    "time": "13:51",
                    "details": "That just sounds like slavery with extra steps.",
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
                    "date": "2018-10-10",
                    "time": "13:51",
                    "details": "This sounds like something The One True Morty might say.",
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
                    "date": "2018-10-10",
                    "time": "13:51",
                    "details": "That just sounds like slavery with extra steps.",
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
                    "date": "2018-10-10",
                    "time": "13:51",
                    "details": "The first rule of space travel kids is always check out distress beacons. Nine out of ten times it's a ship full of dead aliens and a bunch of free shit! One out of ten times it's a deadly trap, but... I'm ready to roll those dice!",
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
                    "date": "2018-10-10",
                    "time": "13:51",
                    "details": "I'm the devil. What should I do when I fail? Give myself an ice cream?",
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
                    "date": "2018-10-10",
                    "time": "13:51",
                    "details": "Little tip, Morty. Never clean DNA vials with your spit.",
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
                    "date": "2018-10-10",
                    "time": "13:51",
                    "details": "I like what you got.",
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
                    "date": "2018-10-10",
                    "time": "13:51",
                    "details": "This sounds like something The One True Morty might say.",
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
                    "date": "2018-10-10",
                    "time": "13:51",
                    "details": "This isn't Game of Thrones, Morty.",
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
                    "date": "2018-10-10",
                    "time": "13:51",
                    "details": "That just sounds like slavery with extra steps.",
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
                    "date": "2018-10-10",
                    "time": "13:51",
                    "details": "Oh yeah, If you think my Rick is Dead, then he is alive. If you think you're safe, then he's coming for you.",
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
                    "date": "2018-10-10",
                    "time": "13:51",
                    "details": "Weddings are basically funerals with cake.",
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
                    "date": "2018-10-10",
                    "time": "13:51",
                    "details": "Meeseeks are not born into this world fumbling for meaning, Jerry! We are created to serve a single purpose, for which we go to any lengths to fulfill.",
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
                    "date": "2018-10-10",
                    "time": "13:51",
                    "details": "Don’t even trip dawg.",
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
              "included": [
                {
                  "id": "70",
                  "type": "users",
                  "attributes": {
                    "name": "User_70",
                    "uid": "Z24wZ8Bp",
                    "created-at": "2018-10-10T10:51:04.156Z",
                    "is-active": false,
                    "role": "back_end"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "352",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "257",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_250",
                    "alias": "alias_256"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "353",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "69",
                  "type": "users",
                  "attributes": {
                    "name": "User_69",
                    "uid": "NvP34d1p8v7",
                    "created-at": "2018-10-10T10:51:04.145Z",
                    "is-active": false,
                    "role": "back_end"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "350",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "256",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_249",
                    "alias": "alias_255"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "351",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "68",
                  "type": "users",
                  "attributes": {
                    "name": "User_68",
                    "uid": "YbA2FuPgH",
                    "created-at": "2018-10-10T10:51:04.132Z",
                    "is-active": false,
                    "role": "back_end"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "348",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "255",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_248",
                    "alias": "alias_254"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "349",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "67",
                  "type": "users",
                  "attributes": {
                    "name": "User_67",
                    "uid": "56RyXwQ6Dk016zK",
                    "created-at": "2018-10-10T10:51:04.117Z",
                    "is-active": false,
                    "role": "back_end"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "346",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "254",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_247",
                    "alias": "alias_253"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "347",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "66",
                  "type": "users",
                  "attributes": {
                    "name": "User_66",
                    "uid": "Cy5x5eJh8w",
                    "created-at": "2018-10-10T10:51:04.103Z",
                    "is-active": false,
                    "role": "back_end"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "344",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "253",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_246",
                    "alias": "alias_252"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "345",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "65",
                  "type": "users",
                  "attributes": {
                    "name": "User_65",
                    "uid": "OyUkGbKq",
                    "created-at": "2018-10-10T10:51:04.089Z",
                    "is-active": false,
                    "role": "back_end"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "342",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "252",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_245",
                    "alias": "alias_251"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "343",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "64",
                  "type": "users",
                  "attributes": {
                    "name": "User_64",
                    "uid": "DjQ3CsJr4",
                    "created-at": "2018-10-10T10:51:04.076Z",
                    "is-active": false,
                    "role": "back_end"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "340",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "251",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_244",
                    "alias": "alias_250"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "341",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "63",
                  "type": "users",
                  "attributes": {
                    "name": "User_63",
                    "uid": "NvFvQ9V7",
                    "created-at": "2018-10-10T10:51:04.063Z",
                    "is-active": false,
                    "role": "back_end"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "338",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "250",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_243",
                    "alias": "alias_249"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "339",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "62",
                  "type": "users",
                  "attributes": {
                    "name": "User_62",
                    "uid": "Db9uBh5mEh2cIb",
                    "created-at": "2018-10-10T10:51:04.050Z",
                    "is-active": false,
                    "role": "back_end"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "336",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "249",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_242",
                    "alias": "alias_248"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "337",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "61",
                  "type": "users",
                  "attributes": {
                    "name": "User_61",
                    "uid": "Zy20GjToSl653",
                    "created-at": "2018-10-10T10:51:04.038Z",
                    "is-active": false,
                    "role": "back_end"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "334",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "248",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_241",
                    "alias": "alias_247"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "335",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "60",
                  "type": "users",
                  "attributes": {
                    "name": "User_60",
                    "uid": "BtL08f4591C2WuJ",
                    "created-at": "2018-10-10T10:51:04.026Z",
                    "is-active": false,
                    "role": "back_end"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "332",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "247",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_240",
                    "alias": "alias_246"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "333",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "59",
                  "type": "users",
                  "attributes": {
                    "name": "User_59",
                    "uid": "9t16UdD9SvS08qN8",
                    "created-at": "2018-10-10T10:51:04.014Z",
                    "is-active": false,
                    "role": "back_end"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "330",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "246",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_239",
                    "alias": "alias_245"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "331",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "58",
                  "type": "users",
                  "attributes": {
                    "name": "User_58",
                    "uid": "9jCvDfH6J2C25x",
                    "created-at": "2018-10-10T10:51:04.003Z",
                    "is-active": false,
                    "role": "back_end"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "328",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "245",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_238",
                    "alias": "alias_244"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "329",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "57",
                  "type": "users",
                  "attributes": {
                    "name": "User_57",
                    "uid": "Wb8bNnV9W",
                    "created-at": "2018-10-10T10:51:03.990Z",
                    "is-active": false,
                    "role": "back_end"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "326",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "244",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_237",
                    "alias": "alias_243"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "327",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "56",
                  "type": "users",
                  "attributes": {
                    "name": "User_56",
                    "uid": "8zUd1787LaYxY",
                    "created-at": "2018-10-10T10:51:03.976Z",
                    "is-active": false,
                    "role": "back_end"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "324",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "243",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_236",
                    "alias": "alias_242"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "325",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "55",
                  "type": "users",
                  "attributes": {
                    "name": "User_55",
                    "uid": "Jv9m3uCxTzZiGjV",
                    "created-at": "2018-10-10T10:51:03.955Z",
                    "is-active": false,
                    "role": "back_end"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "322",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "242",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_235",
                    "alias": "alias_241"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "323",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "54",
                  "type": "users",
                  "attributes": {
                    "name": "User_54",
                    "uid": "HrYgGgVt3l22R",
                    "created-at": "2018-10-10T10:51:03.939Z",
                    "is-active": false,
                    "role": "back_end"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "320",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "241",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_234",
                    "alias": "alias_240"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "321",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "53",
                  "type": "users",
                  "attributes": {
                    "name": "User_53",
                    "uid": "OuCjZ250OmMo",
                    "created-at": "2018-10-10T10:51:03.920Z",
                    "is-active": false,
                    "role": "back_end"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "318",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "240",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_233",
                    "alias": "alias_239"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "319",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "52",
                  "type": "users",
                  "attributes": {
                    "name": "User_52",
                    "uid": "VfV1RbS546V",
                    "created-at": "2018-10-10T10:51:03.901Z",
                    "is-active": false,
                    "role": "back_end"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "316",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "239",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_232",
                    "alias": "alias_238"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "317",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "51",
                  "type": "users",
                  "attributes": {
                    "name": "User_51",
                    "uid": "H7FcOeCpU2LeHhFa",
                    "created-at": "2018-10-10T10:51:03.882Z",
                    "is-active": false,
                    "role": "back_end"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "314",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "238",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_231",
                    "alias": "alias_237"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "315",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "50",
                  "type": "users",
                  "attributes": {
                    "name": "User_50",
                    "uid": "3y7rFiPjTe9eQ",
                    "created-at": "2018-10-10T10:51:03.863Z",
                    "is-active": false,
                    "role": "back_end"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "312",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "237",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_230",
                    "alias": "alias_236"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "313",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "49",
                  "type": "users",
                  "attributes": {
                    "name": "User_49",
                    "uid": "F3Ir773a7f0bA2F",
                    "created-at": "2018-10-10T10:51:03.844Z",
                    "is-active": false,
                    "role": "back_end"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "310",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "236",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_229",
                    "alias": "alias_235"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "311",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "48",
                  "type": "users",
                  "attributes": {
                    "name": "User_48",
                    "uid": "DyIpLj0f3vS4",
                    "created-at": "2018-10-10T10:51:03.828Z",
                    "is-active": false,
                    "role": "back_end"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "308",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "235",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_228",
                    "alias": "alias_234"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "309",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "47",
                  "type": "users",
                  "attributes": {
                    "name": "User_47",
                    "uid": "74FqSf9pHxLnR7I1",
                    "created-at": "2018-10-10T10:51:03.810Z",
                    "is-active": false,
                    "role": "back_end"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "306",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "234",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_227",
                    "alias": "alias_233"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "307",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "46",
                  "type": "users",
                  "attributes": {
                    "name": "User_46",
                    "uid": "Y7RaCi4kUvE9",
                    "created-at": "2018-10-10T10:51:03.792Z",
                    "is-active": false,
                    "role": "back_end"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "304",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "233",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_226",
                    "alias": "alias_232"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "305",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "45",
                  "type": "users",
                  "attributes": {
                    "name": "User_45",
                    "uid": "ThGk89UvQ",
                    "created-at": "2018-10-10T10:51:03.777Z",
                    "is-active": false,
                    "role": "back_end"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "302",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "232",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_225",
                    "alias": "alias_231"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "303",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "44",
                  "type": "users",
                  "attributes": {
                    "name": "User_44",
                    "uid": "48M4H3LvD",
                    "created-at": "2018-10-10T10:51:03.762Z",
                    "is-active": false,
                    "role": "back_end"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "300",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "231",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_224",
                    "alias": "alias_230"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "301",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "43",
                  "type": "users",
                  "attributes": {
                    "name": "User_43",
                    "uid": "XnGu3wJd4uZ5U",
                    "created-at": "2018-10-10T10:51:03.747Z",
                    "is-active": false,
                    "role": "back_end"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "298",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "230",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_223",
                    "alias": "alias_229"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "299",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "42",
                  "type": "users",
                  "attributes": {
                    "name": "User_42",
                    "uid": "KdGn05IlZeVe4",
                    "created-at": "2018-10-10T10:51:03.731Z",
                    "is-active": false,
                    "role": "back_end"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "296",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "229",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_222",
                    "alias": "alias_228"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "297",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "41",
                  "type": "users",
                  "attributes": {
                    "name": "User_41",
                    "uid": "GvAf4m04QwA2Zi",
                    "created-at": "2018-10-10T10:51:03.717Z",
                    "is-active": false,
                    "role": "back_end"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "294",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "228",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_221",
                    "alias": "alias_227"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "295",
                        "type": "teams"
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
    + id: `44` (number, required)

+ Request Show time entry by id
**GET**&nbsp;&nbsp;`/api/v1/time_entries/44`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo1NiwiZXhwIjoxNTM5MTc1ODY0fQ.N70OxaiQ7bOZCghqP6wr-kGvvXa-JmIisHHZXTTkiyk
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "44",
                "type": "time-entries",
                "attributes": {
                  "date": "2018-10-10",
                  "time": "13:51",
                  "details": "Well then get your shit together. Get it all together and put it in a backpack, all your shit, so it's together. ...and if you gotta take it somewhere, take it somewhere ya know? Take it to the shit store and sell it, or put it in a shit museum. I don't care what you do, you just gotta get it together... Get your shit together.",
                  "trello-labels": null,
                  "estimated-time": null
                },
                "relationships": {
                  "user": {
                    "data": {
                      "id": "74",
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
              }
            }

### Delete a time entry [DELETE /api/v1/time_entries/{id}]

+ Parameters
    + id: `99` (number, required)

+ Request Delete time entry by id
**DELETE**&nbsp;&nbsp;`/api/v1/time_entries/99`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo1NywiZXhwIjoxNTM5MTc1ODY1fQ.Q0Xmjv5iKfwxdsuyd0G67JS_X-YW40kW7ZLpC2An7G4
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

+ Response 200

    + Headers

            Content-Type: text/html

### Create a time entry [POST /api/v1/time_entries]


+ Request Create time entry
**POST**&nbsp;&nbsp;`/api/v1/time_entries`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo1OCwiZXhwIjoxNTM5MTc1ODY1fQ.yCBQGXCsSmMk7ecRBRWPOEPvfWJbYslI4hPVEQJOSTU
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            time_entry[date]=2018-10-10&time_entry[time]=13%3A51&time_entry[minutes]=51&time_entry[details]=%3Chttps%3A%2F%2Ftrello.com%2Fc%2FhcIRv6W0%2F1496-google-analytics%3E&time_entry[trello_labels][]=Feature&time_entry[trello_labels][]=High+Priority&time_entry[trello_labels][]=5&time_entry[user_id]=176&time_entry[project_id]=363

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "146",
                "type": "time-entries",
                "attributes": {
                  "date": "2018-10-10",
                  "time": "13:51",
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
              },
              "included": [
                {
                  "id": "176",
                  "type": "users",
                  "attributes": {
                    "name": "User_176",
                    "uid": "LyFnGvRs7r6827Xs",
                    "created-at": "2018-10-10T10:51:05.719Z",
                    "is-active": false,
                    "role": "back_end"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "564",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "363",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_356",
                    "alias": "alias_362"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "565",
                        "type": "teams"
                      }
                    }
                  }
                }
              ]
            }

### Update a time entry [PUT /api/v1/time_entries/{id}]

+ Parameters
    + id: `168` (number, required)

+ Request Update time entry
**PUT**&nbsp;&nbsp;`/api/v1/time_entries/168`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo1OSwiZXhwIjoxNTM5MTc1ODY2fQ.WGGL7-HeHkaWdrzp5OYp9WWovpcLU4VZ5ACUF8gk6N0
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            time_entry[details]=YOU%27RE+LIKE+HITLER%2C+EXCEPT...HITLER+CARED+ABOUT+GERMANY%2C+OR+SOMETHING.

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "168",
                "type": "time-entries",
                "attributes": {
                  "date": "2018-10-10",
                  "time": "13:51",
                  "details": "YOU'RE LIKE HITLER, EXCEPT...HITLER CARED ABOUT GERMANY, OR SOMETHING.",
                  "trello-labels": null,
                  "estimated-time": null
                },
                "relationships": {
                  "user": {
                    "data": {
                      "id": "198",
                      "type": "users"
                    }
                  },
                  "project": {
                    "data": {
                      "id": "385",
                      "type": "projects"
                    }
                  }
                }
              },
              "included": [
                {
                  "id": "198",
                  "type": "users",
                  "attributes": {
                    "name": "User_198",
                    "uid": "FgEaLo9aA0D9Z",
                    "created-at": "2018-10-10T10:51:06.068Z",
                    "is-active": false,
                    "role": "back_end"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "608",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "385",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_378",
                    "alias": "alias_384"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "609",
                        "type": "teams"
                      }
                    }
                  }
                }
              ]
            }

# Group Users


## Users [/users]


### Get users [GET /api/v1/users]


+ Request Get users
**GET**&nbsp;&nbsp;`/api/v1/users`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo2MCwiZXhwIjoxNTM5MTc1ODY2fQ.l3DvfAfHCvohOcdfgbvF934hJ17zB07tLSL3ufGz7Vs
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
                    "uid": "0mXwXb7qQyI917",
                    "created-at": "2018-10-10T10:51:06.282Z",
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
                    "uid": "3hFc19U1GgAd3zH",
                    "created-at": "2018-10-10T10:51:06.278Z",
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
                    "uid": "65S6RaD4R7BcO7H8",
                    "created-at": "2018-10-10T10:51:06.273Z",
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
                    "uid": "82YeV1Lx6",
                    "created-at": "2018-10-10T10:51:06.269Z",
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
                    "uid": "1cNvOmTkJjI098Z",
                    "created-at": "2018-10-10T10:51:06.265Z",
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
                    "uid": "9vC2HiRuWh6h",
                    "created-at": "2018-10-10T10:51:06.260Z",
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
    + id: `221` (number, required)

+ Request Show user by id
**GET**&nbsp;&nbsp;`/api/v1/users/221`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo2MSwiZXhwIjoxNTM5MTc1ODY2fQ.9OgShUYsIc5wxWzqDdr6t7dsHQXouzM7y2vtT3MJCTg
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "221",
                "type": "users",
                "attributes": {
                  "name": "User_220",
                  "uid": "1mOvW1JtZ",
                  "created-at": "2018-10-10T10:51:06.328Z",
                  "is-active": false,
                  "role": "back_end"
                },
                "relationships": {
                  "team": {
                    "data": {
                      "id": "645",
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

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo2MiwiZXhwIjoxNTM5MTc1ODY2fQ.ofCj7gZ0ZHfCMnSfkWMYUGLOR0l0NSjcZho6tj4aXVc
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
    + id: `234` (number, required)

+ Request Delete user by id
**DELETE**&nbsp;&nbsp;`/api/v1/users/234`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo2MywiZXhwIjoxNTM5MTc1ODY2fQ.YOxWuU1ULvvSBwtiFPek0m_ZPi3noHx_jbRa1MaSkTY
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

+ Response 204

### Create a user [POST /api/v1/users]


+ Request Create user
**POST**&nbsp;&nbsp;`/api/v1/users`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo2NCwiZXhwIjoxNTM5MTc1ODY2fQ.vh3I1gz2tEIXVJ5C6SzodGZrLGoD15LQYddIVB127F0
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            user[name]=User_237&user[is_active]=false&user[uid]=O6H9J71l&user[role]=back_end

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
                  "uid": "O6H9J71l",
                  "created-at": "2018-10-10T10:51:06.514Z",
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
    + id: `244` (number, required)

+ Request Update user
**PUT**&nbsp;&nbsp;`/api/v1/users/244`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo2NSwiZXhwIjoxNTM5MTc1ODY2fQ.yNQZcHJiIrOcD8vENfx-o0FH2dIlYIkvWkp5EjCprfs
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            user[name]=USER_239

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "244",
                "type": "users",
                "attributes": {
                  "name": "USER_239",
                  "uid": "VuPgK6OhOlKd",
                  "created-at": "2018-10-10T10:51:06.535Z",
                  "is-active": false,
                  "role": "back_end"
                },
                "relationships": {
                  "team": {
                    "data": {
                      "id": "667",
                      "type": "teams"
                    }
                  }
                }
              }
            }
