

# Group Absences


## Absences [/absences]


### Get absences [GET /api/v1/absences]


+ Request Get absences
**GET**&nbsp;&nbsp;`/api/v1/absences`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE1NDIwMjQxODh9.nzjEFaVd6f0IDYe3tXOe5uCcAxjL-z6C8HEIhNlvsHg
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
                    "date": "2018-11-12",
                    "comment": "Oh Summer, haha first race war, huh?",
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
                    "date": "2018-11-12",
                    "comment": "Meeseeks are not born into this world fumbling for meaning, Jerry! We are created to serve a single purpose, for which we go to any lengths to fulfill.",
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
                    "date": "2018-11-12",
                    "comment": "Ohh yea, you gotta get schwifty.",
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
                    "date": "2018-11-12",
                    "comment": "Where are my testicles, Summer?",
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
                    "date": "2018-11-12",
                    "comment": "Listen, I'm not the nicest guy in the universe, because I'm the smartest, and being nice is something stupid people do to hedge their bets.",
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
                    "uid": "ZgCnGzM5R1By0",
                    "created-at": {
                      "date": "12 Nov, 2018",
                      "time": "10:03"
                    },
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
                    "uid": "0hRhGc5uZb9t24",
                    "created-at": {
                      "date": "12 Nov, 2018",
                      "time": "10:03"
                    },
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
                    "uid": "3x4iYwPb1",
                    "created-at": {
                      "date": "12 Nov, 2018",
                      "time": "10:03"
                    },
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
                    "uid": "EvCyJpK57",
                    "created-at": {
                      "date": "12 Nov, 2018",
                      "time": "10:03"
                    },
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
                    "uid": "87FsVmI3",
                    "created-at": {
                      "date": "12 Nov, 2018",
                      "time": "10:03"
                    },
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
    + id: `6` (number, required)

+ Request Show absence by id
**GET**&nbsp;&nbsp;`/api/v1/absences/6`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoyLCJleHAiOjE1NDIwMjQxODh9.m9_WZWgHCzyB0WiVJdO4eQr5zwwWQ-JzIuK7tN9UoTo
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "6",
                "type": "absences",
                "attributes": {
                  "date": "2018-11-12",
                  "comment": "Sometimes science is a lot more art, than science. A lot of people don't get that.",
                  "reason": "other"
                },
                "relationships": {
                  "user": {
                    "data": {
                      "id": "8",
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

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozLCJleHAiOjE1NDIwMjQxODh9.ypDF9YP3n2rKhvR9kp1umZQgEZ1ugo8YUZ1fNo1Wsx8
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

+ Response 204

### Delete multiple absences [DELETE /api/v1/absences/delete_multiple]


+ Request Delete absences by ids
**DELETE**&nbsp;&nbsp;`/api/v1/absences/delete_multiple`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo0LCJleHAiOjE1NDIwMjQxODh9.QfsAXhUN9AsLtTuVMgOz2iVQOvL8j6PNcG2wkgb8ONs
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            absence_ids[]=16&absence_ids[]=17&absence_ids[]=18&absence_ids[]=19&absence_ids[]=20

+ Response 204

### Create an absence [POST /api/v1/absences]


+ Request Create absence
**POST**&nbsp;&nbsp;`/api/v1/absences`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo1LCJleHAiOjE1NDIwMjQxODh9.6GtsVSIBBDDwSh2_Pa1cB_OKnSfojCMN0fxiFTCuDCE
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            absences[][absence][reason]=other&absences[][absence][date]=2018-11-12+10%3A03%3A08+UTC&absences[][absence][comment]=You%27re+like+Hitler%2C+except...Hitler+cared+about+Germany%2C+or+something.&absences[][absence][user_id]=25&absences[][absence][reason]=other&absences[][absence][date]=2018-11-12+10%3A03%3A08+UTC&absences[][absence][comment]=You%27re+like+Hitler%2C+except...Hitler+cared+about+Germany%2C+or+something.&absences[][absence][user_id]=25

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": [
                {
                  "id": "26",
                  "type": "absences",
                  "attributes": {
                    "date": "2018-11-12",
                    "comment": "You're like Hitler, except...Hitler cared about Germany, or something.",
                    "reason": "other"
                  },
                  "relationships": {
                    "user": {
                      "data": {
                        "id": "25",
                        "type": "users"
                      }
                    }
                  }
                },
                {
                  "id": "27",
                  "type": "absences",
                  "attributes": {
                    "date": "2018-11-12",
                    "comment": "You're like Hitler, except...Hitler cared about Germany, or something.",
                    "reason": "other"
                  },
                  "relationships": {
                    "user": {
                      "data": {
                        "id": "25",
                        "type": "users"
                      }
                    }
                  }
                }
              ],
              "included": [
                {
                  "id": "25",
                  "type": "users",
                  "attributes": {
                    "name": "User_25",
                    "uid": "KmHhCdZh8d",
                    "created-at": {
                      "date": "12 Nov, 2018",
                      "time": "10:03"
                    },
                    "is-active": false,
                    "role": "back_end"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "25",
                        "type": "teams"
                      }
                    }
                  }
                }
              ]
            }

### Update an absence [PUT /api/v1/absences/{id}]

+ Parameters
    + id: `29` (number, required)

+ Request Update absence
**PUT**&nbsp;&nbsp;`/api/v1/absences/29`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo2LCJleHAiOjE1NDIwMjQxODh9.VsKyZ4RQMa8cbbEhXz5I9UHPF4RI63yDMtQYFLw4uQk
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
                "id": "29",
                "type": "absences",
                "attributes": {
                  "date": "2018-11-12",
                  "comment": "Comment",
                  "reason": "other"
                },
                "relationships": {
                  "user": {
                    "data": {
                      "id": "33",
                      "type": "users"
                    }
                  }
                }
              },
              "included": [
                {
                  "id": "33",
                  "type": "users",
                  "attributes": {
                    "name": "User_33",
                    "uid": "ZaZkTfPyQw",
                    "created-at": {
                      "date": "12 Nov, 2018",
                      "time": "10:03"
                    },
                    "is-active": false,
                    "role": "back_end"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "33",
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

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxMiwiZXhwIjoxNTQyMDI0MTg4fQ.eIGVpbfpqVN71qM609JE3je9iW_2Xn5oGLc_IzIYrn0
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": [
                {
                  "id": "7",
                  "type": "admins",
                  "attributes": {
                    "email": "georgiana@cruickshank.org"
                  }
                },
                {
                  "id": "8",
                  "type": "admins",
                  "attributes": {
                    "email": "eugeniokertzmann@metz.co"
                  }
                },
                {
                  "id": "9",
                  "type": "admins",
                  "attributes": {
                    "email": "orphajohnson@pfeffer.io"
                  }
                },
                {
                  "id": "10",
                  "type": "admins",
                  "attributes": {
                    "email": "arturo@blockrempel.co"
                  }
                },
                {
                  "id": "11",
                  "type": "admins",
                  "attributes": {
                    "email": "scottiewalker@stiedemann.io"
                  }
                },
                {
                  "id": "12",
                  "type": "admins",
                  "attributes": {
                    "email": "elfrieda@bergstrom.org"
                  }
                }
              ]
            }

### Get an admin [GET /api/v1/admins/{id}]

+ Parameters
    + id: `13` (number, required)

+ Request Show admin by id
**GET**&nbsp;&nbsp;`/api/v1/admins/13`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxOCwiZXhwIjoxNTQyMDI0MTg4fQ.WKpfLBHqjC9AQscx2l8qdwaRHWNMTMVzi71hjfR8pw0
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "13",
                "type": "admins",
                "attributes": {
                  "email": "brenton@skiles.com"
                }
              }
            }

### Delete an admin [DELETE /api/v1/admins/{id}]

+ Parameters
    + id: `21` (number, required)

+ Request Delete admin by id
**DELETE**&nbsp;&nbsp;`/api/v1/admins/21`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoyNCwiZXhwIjoxNTQyMDI0MTg4fQ.pfOoj4oCwbJyH6YBg3BFEis5QHVLW6q5uDNxj6ZcsiE
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

+ Response 204

### Delete multiple admins [DELETE /api/v1/admins/delete_multiple]


+ Request Delete admins by ids
**DELETE**&nbsp;&nbsp;`/api/v1/admins/delete_multiple`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozMCwiZXhwIjoxNTQyMDI0MTg4fQ.8dmvmjkJTJHwtDytI6X8r7nR7QfTI4tFqnmWWursaZU
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            admin_ids[]=25&admin_ids[]=26&admin_ids[]=27&admin_ids[]=28&admin_ids[]=29

+ Response 204

### Create an admin [POST /api/v1/admins]


+ Request Create admin
**POST**&nbsp;&nbsp;`/api/v1/admins`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozNiwiZXhwIjoxNTQyMDI0MTg4fQ.WGHWVtHOhxP2WC2o61jmJ1-BqvbZUOfWX5ei0J_XNFg
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            admin[email]=zacherykoelpin%40nikolaumitham.com&admin[password]=FeH8TbOg1v

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "37",
                "type": "admins",
                "attributes": {
                  "email": "zacherykoelpin@nikolaumitham.com"
                }
              }
            }

### Update an admin [PUT /api/v1/admins/{id}]

+ Parameters
    + id: `41` (number, required)

+ Request Update admin
**PUT**&nbsp;&nbsp;`/api/v1/admins/41`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo0MywiZXhwIjoxNTQyMDI0MTg5fQ.hsNK9La4QrOwyb_9R4DRYimYS4Ka4cpXNk1UB_21TLw
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
                "id": "41",
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

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo0NCwiZXhwIjoxNTQyMDI0MTg5fQ.A53btoDkchI7y7NcZujkGZMniZ96uB3dnoWZ0nAj4Ak
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "start_of_week": "2018-11-12",
              "end_of_week": "2018-11-12",
              "hours_to_work": -8,
              "hours_worked": 0.0,
              "holidays": [
            
              ],
              "absent": [
            
              ],
              "users_chart": {
                "title": "Users",
                "data": [
            
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

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo0NSwiZXhwIjoxNTQyMDI0MTg5fQ.Q-ov4GVOZ2rckJaXoVRNGvxpxSyuggjwir-gXmcHUwk
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": [
                {
                  "projects": [
                    {
                      "id": 5,
                      "name": "Project_5"
                    }
                  ],
                  "details": "little tip, morty. never clean dna vials with your spit.",
                  "created_at": "12 Nov, 2018 at 10:03",
                  "trello_labels": null,
                  "estimate": null,
                  "status": null,
                  "total_time": 12.1,
                  "collaborators": [
                    {
                      "id": 41,
                      "name": "User_41"
                    }
                  ]
                },
                {
                  "projects": [
                    {
                      "id": 4,
                      "name": "Project_4"
                    }
                  ],
                  "details": "i like what you got.",
                  "created_at": "12 Nov, 2018 at 10:03",
                  "trello_labels": null,
                  "estimate": null,
                  "status": null,
                  "total_time": 12.1,
                  "collaborators": [
                    {
                      "id": 40,
                      "name": "User_40"
                    }
                  ]
                },
                {
                  "projects": [
                    {
                      "id": 3,
                      "name": "Project_3"
                    }
                  ],
                  "details": "oh summer, haha first race war, huh?",
                  "created_at": "12 Nov, 2018 at 10:03",
                  "trello_labels": null,
                  "estimate": null,
                  "status": null,
                  "total_time": 12.1,
                  "collaborators": [
                    {
                      "id": 39,
                      "name": "User_39"
                    }
                  ]
                },
                {
                  "projects": [
                    {
                      "id": 2,
                      "name": "Project_2"
                    }
                  ],
                  "details": "listen, i'm not the nicest guy in the universe, because i'm the smartest, and being nice is something stupid people do to hedge their bets.",
                  "created_at": "12 Nov, 2018 at 10:03",
                  "trello_labels": null,
                  "estimate": null,
                  "status": null,
                  "total_time": 12.1,
                  "collaborators": [
                    {
                      "id": 38,
                      "name": "User_38"
                    }
                  ]
                },
                {
                  "projects": [
                    {
                      "id": 1,
                      "name": "Project_1"
                    }
                  ],
                  "details": "weddings are basically funerals with cake.",
                  "created_at": "12 Nov, 2018 at 10:03",
                  "trello_labels": null,
                  "estimate": null,
                  "status": null,
                  "total_time": 12.1,
                  "collaborators": [
                    {
                      "id": 37,
                      "name": "User_37"
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

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo0NiwiZXhwIjoxNTQyMDI0MTg5fQ.WbusgOFd1b5npnN353kkXfS62HGAkI9zGXTmP_JwEXw
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
                    "name": "Stealy",
                    "date": "2018-11-13"
                  }
                },
                {
                  "id": "2",
                  "type": "holidays",
                  "attributes": {
                    "name": "Summer Smith",
                    "date": "2018-11-14"
                  }
                },
                {
                  "id": "3",
                  "type": "holidays",
                  "attributes": {
                    "name": "Revolio 'Gearhead' Clockberg, Jr.",
                    "date": "2018-11-15"
                  }
                },
                {
                  "id": "4",
                  "type": "holidays",
                  "attributes": {
                    "name": "Mr. Meeseeks",
                    "date": "2018-11-16"
                  }
                },
                {
                  "id": "5",
                  "type": "holidays",
                  "attributes": {
                    "name": "Morty Jr.",
                    "date": "2018-11-17"
                  }
                }
              ]
            }

### Get a holiday [GET /api/v1/holidays/{id}]

+ Parameters
    + id: `10` (number, required)

+ Request Show holiday by id
**GET**&nbsp;&nbsp;`/api/v1/holidays/10`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo0NywiZXhwIjoxNTQyMDI0MTg5fQ.rmrPu3Bl0TXZkwEelNM7KvBCvfwBvcJY0i_GrOA_afE
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "10",
                "type": "holidays",
                "attributes": {
                  "name": "Fart",
                  "date": "2018-11-22"
                }
              }
            }

### Delete a holiday [DELETE /api/v1/holidays/{id}]

+ Parameters
    + id: `13` (number, required)

+ Request Delete holiday by id
**DELETE**&nbsp;&nbsp;`/api/v1/holidays/13`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo0OCwiZXhwIjoxNTQyMDI0MTg5fQ.FrO4yZJIZYOAizAqwIO3hZh8yLZCU0nwdJWVSdZamFc
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

+ Response 204

### Delete multiple holidays [DELETE /api/v1/holidays/delete_multiple]


+ Request Delete holidays by ids
**DELETE**&nbsp;&nbsp;`/api/v1/holidays/delete_multiple`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo0OSwiZXhwIjoxNTQyMDI0MTg5fQ.vtX7_DCqrdQ7_I5PidLuHvMuwkNgECLrJX39gZN1BgM
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            holiday_ids[]=16&holiday_ids[]=17&holiday_ids[]=18&holiday_ids[]=19&holiday_ids[]=20

+ Response 204

### Create a holiday [POST /api/v1/holidays]


+ Request Create holiday
**POST**&nbsp;&nbsp;`/api/v1/holidays`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo1MCwiZXhwIjoxNTQyMDI0MTg5fQ.269lUUVAeC6PMKxMmofuthj-ITEJ6QwARLlu1IZYi6k
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            holiday[name]=Krombopulos+Michael&holiday[date]=2018-12-08

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "26",
                "type": "holidays",
                "attributes": {
                  "name": "Krombopulos Michael",
                  "date": "2018-12-08"
                }
              }
            }

### Update a holiday [PUT /api/v1/holidays/{id}]

+ Parameters
    + id: `29` (number, required)

+ Request Update holiday
**PUT**&nbsp;&nbsp;`/api/v1/holidays/29`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo1MSwiZXhwIjoxNTQyMDI0MTg5fQ.RXKluk6cgNbKI3N1CQZx1sfERVd58Fjxm9q_bOzPpSs
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            holiday[name]=GAZORPAZORPFIELD

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "29",
                "type": "holidays",
                "attributes": {
                  "name": "GAZORPAZORPFIELD",
                  "date": "2018-12-11"
                }
              }
            }

# Group Projects


## Projects [/projects]


### Get projects [GET /api/v1/projects]


+ Request Get projects
**GET**&nbsp;&nbsp;`/api/v1/projects`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo1MiwiZXhwIjoxNTQyMDI0MTg5fQ.0xcsY-ULgDOJZxrJvP1lCR46CeZ1PbPObkO8wUot7xc
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
                        "id": "82",
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
                        "id": "81",
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
                        "id": "80",
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
                        "id": "79",
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
                        "id": "78",
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
                        "id": "77",
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
                        "id": "76",
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
                        "id": "75",
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
                        "id": "74",
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
                        "id": "73",
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
                        "id": "72",
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
                        "id": "71",
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
                        "id": "70",
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
                        "id": "69",
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
                        "id": "68",
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
                        "id": "67",
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
                        "id": "66",
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
                        "id": "65",
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
                        "id": "64",
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
                        "id": "63",
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
                        "id": "62",
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
                        "id": "61",
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
                        "id": "60",
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
                        "id": "59",
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
                        "id": "58",
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
                        "id": "57",
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
                        "id": "56",
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
                        "id": "55",
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
                        "id": "54",
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
                        "id": "53",
                        "type": "teams"
                      }
                    }
                  }
                }
              ],
              "included": [
                {
                  "id": "82",
                  "type": "teams",
                  "attributes": {
                    "name": "Mr. Needful",
                    "description": "I like what you got."
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
                  "id": "81",
                  "type": "teams",
                  "attributes": {
                    "name": "Fart",
                    "description": "Aww, gee, you got me there Rick."
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
                  "id": "80",
                  "type": "teams",
                  "attributes": {
                    "name": "Jan Michael Vincent",
                    "description": "I like what you got."
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
                  "id": "79",
                  "type": "teams",
                  "attributes": {
                    "name": "Revolio 'Gearhead' Clockberg, Jr.",
                    "description": "Oh yeah, If you think my Rick is Dead, then he is alive. If you think you're safe, then he's coming for you."
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
                  "id": "78",
                  "type": "teams",
                  "attributes": {
                    "name": "Jan Michael Vincent",
                    "description": "Having a family doesn't mean that you stop being an individual."
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
                  "id": "77",
                  "type": "teams",
                  "attributes": {
                    "name": "Lighthouse Chief",
                    "description": "This sounds like something The One True Morty might say."
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
                  "id": "76",
                  "type": "teams",
                  "attributes": {
                    "name": "Unity",
                    "description": "Weddings are basically funerals with cake."
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
                  "id": "75",
                  "type": "teams",
                  "attributes": {
                    "name": "Beth's Mytholog",
                    "description": "Weddings are basically funerals with cake."
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
                  "id": "74",
                  "type": "teams",
                  "attributes": {
                    "name": "Birdperson",
                    "description": "I don't get it and I don't need to."
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
                  "id": "73",
                  "type": "teams",
                  "attributes": {
                    "name": "Squanchy",
                    "description": "Oh Summer, haha first race war, huh?"
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
                  "id": "72",
                  "type": "teams",
                  "attributes": {
                    "name": "Evil Morty",
                    "description": "It's a figure of speech, Morty! They're bureaucrats! I don't respect them. Just keep shooting, Morty! You have no idea what prison is like here!"
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
                  "id": "71",
                  "type": "teams",
                  "attributes": {
                    "name": "Stealy",
                    "description": "Traditionally, science fairs are a father/son thing. Well, scientifically, traditions are an idiot thing."
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
                  "id": "70",
                  "type": "teams",
                  "attributes": {
                    "name": "Mr. Goldenfold",
                    "description": "Traditionally, science fairs are a father/son thing. Well, scientifically, traditions are an idiot thing."
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
                  "id": "69",
                  "type": "teams",
                  "attributes": {
                    "name": "Loggins",
                    "description": "There is no god, Summer; gotta rip that band-aid off now you'll thank me later."
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
                  "id": "68",
                  "type": "teams",
                  "attributes": {
                    "name": "Beth's Mytholog",
                    "description": "He's not a hot girl. He can't just bail on his life and set up shop in someone else's."
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
                  "id": "67",
                  "type": "teams",
                  "attributes": {
                    "name": "Morty Smith",
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
                  "id": "66",
                  "type": "teams",
                  "attributes": {
                    "name": "Arthricia",
                    "description": "There is no god, Summer; gotta rip that band-aid off now you'll thank me later."
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
                  "id": "65",
                  "type": "teams",
                  "attributes": {
                    "name": "Scary Terry",
                    "description": "Don’t even trip dawg."
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
                  "id": "64",
                  "type": "teams",
                  "attributes": {
                    "name": "Stealy",
                    "description": "Yo! What up my glip glops!"
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
                  "id": "63",
                  "type": "teams",
                  "attributes": {
                    "name": "Jerry Smith",
                    "description": "Let me out, what you see is not the same person as me. My life's a lie. I'm not who you're looking. Let me out. Set me free. I'm really old. This isn't me. My real body is slowly dieing in a vat. Is anybody listening? Can anyone understand? Stop looking at me like that and actually help me. Help me. Help me I'm gunna die."
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
                  "id": "62",
                  "type": "teams",
                  "attributes": {
                    "name": "Revolio 'Gearhead' Clockberg, Jr.",
                    "description": "That's the difference between you and me, Morty. I never go back to the carpet store."
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
                  "id": "61",
                  "type": "teams",
                  "attributes": {
                    "name": "Jerry's Mytholog",
                    "description": "Can somebody just let me out of here? If I die in a cage I lose a bet."
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
                  "id": "60",
                  "type": "teams",
                  "attributes": {
                    "name": "Shrimply Pibbles",
                    "description": "Listen, I'm not the nicest guy in the universe, because I'm the smartest, and being nice is something stupid people do to hedge their bets."
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
                  "id": "59",
                  "type": "teams",
                  "attributes": {
                    "name": "Mr. Meeseeks",
                    "description": "Keep Summer safe."
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
                  "id": "58",
                  "type": "teams",
                  "attributes": {
                    "name": "Jessica",
                    "description": "Don’t even trip dawg."
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
                  "id": "57",
                  "type": "teams",
                  "attributes": {
                    "name": "Baby Legs",
                    "description": "Get off the high road Summer. We all got pink eye because you wouldn't stop texting on the toilet."
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
                  "id": "56",
                  "type": "teams",
                  "attributes": {
                    "name": "Loggins",
                    "description": "There is no god, Summer; gotta rip that band-aid off now you'll thank me later."
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
                  "id": "55",
                  "type": "teams",
                  "attributes": {
                    "name": "Tophat Jones",
                    "description": "You're like Hitler, except...Hitler cared about Germany, or something."
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
                  "id": "54",
                  "type": "teams",
                  "attributes": {
                    "name": "Scary Terry",
                    "description": "What about the reality where Hitler cured cancer, Morty? The answer is: Don't think about it."
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
                  "id": "53",
                  "type": "teams",
                  "attributes": {
                    "name": "Tinkles",
                    "description": "Traditionally, science fairs are a father/son thing. Well, scientifically, traditions are an idiot thing."
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
    + id: `60` (number, required)

+ Request Show project by id
**GET**&nbsp;&nbsp;`/api/v1/projects/60`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo1MywiZXhwIjoxNTQyMDI0MTg5fQ.fcEDBsvaxdWiX6I8QTZIu0LrvPYP-YiYwcYTtRiOaZ0
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "60",
                "type": "projects",
                "attributes": {
                  "name": "Project_59",
                  "alias": "alias_60"
                },
                "relationships": {
                  "team": {
                    "data": {
                      "id": "101",
                      "type": "teams"
                    }
                  }
                }
              }
            }

### Delete a project [DELETE /api/v1/projects/{id}]

+ Parameters
    + id: `91` (number, required)

+ Request Delete project by id
**DELETE**&nbsp;&nbsp;`/api/v1/projects/91`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo1NCwiZXhwIjoxNTQyMDI0MTkwfQ.ZE7al2SP0Vk8qoqK0nZnTG0U3zXjEyCIRppXs2Qs3t8
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

+ Response 200

    + Headers

            Content-Type: text/html

### Delete multiple projects [DELETE /api/v1/projects/delete_multiple]


+ Request Delete projects by ids
**DELETE**&nbsp;&nbsp;`/api/v1/projects/delete_multiple`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo1NSwiZXhwIjoxNTQyMDI0MTkwfQ.gjk6htKJ5vHMm2mheT3OANrpHzfRi7kkv4vNvHRKxGI
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            project_ids[]=114&project_ids[]=115&project_ids[]=116&project_ids[]=117&project_ids[]=118&project_ids[]=119&project_ids[]=120&project_ids[]=121&project_ids[]=122&project_ids[]=123&project_ids[]=124&project_ids[]=125&project_ids[]=126&project_ids[]=127&project_ids[]=128&project_ids[]=129&project_ids[]=130&project_ids[]=131&project_ids[]=132&project_ids[]=133&project_ids[]=134&project_ids[]=135&project_ids[]=136&project_ids[]=137&project_ids[]=138&project_ids[]=139&project_ids[]=140&project_ids[]=141&project_ids[]=142&project_ids[]=143&project_ids[]=144&project_ids[]=145&project_ids[]=146&project_ids[]=147&project_ids[]=148

+ Response 204

### Create a project [POST /api/v1/projects]


+ Request Create project
**POST**&nbsp;&nbsp;`/api/v1/projects`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo1NiwiZXhwIjoxNTQyMDI0MTkwfQ.HKKi0XSfh0gPQuMJgvz4JwzJr_tAhlf2WLqXMymV4g8
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            project[name]=Shrimply+Pibbles&project[alias]=Hideout+Planet&project[team_id]=227

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "186",
                "type": "projects",
                "attributes": {
                  "name": "Shrimply Pibbles",
                  "alias": "Hideout Planet"
                },
                "relationships": {
                  "team": {
                    "data": {
                      "id": "227",
                      "type": "teams"
                    }
                  }
                }
              }
            }

### Update a project [PUT /api/v1/projects/{id}]

+ Parameters
    + id: `190` (number, required)

+ Request Update project
**PUT**&nbsp;&nbsp;`/api/v1/projects/190`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo1NywiZXhwIjoxNTQyMDI0MTkwfQ.hIN_Let3Ztg-DOYq6VC9axOlI92ThgNpHJiDgE5BRps
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            project[name]=PROJECT_184

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "190",
                "type": "projects",
                "attributes": {
                  "name": "PROJECT_184",
                  "alias": "alias_189"
                },
                "relationships": {
                  "team": {
                    "data": {
                      "id": "231",
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

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo1OCwiZXhwIjoxNTQyMDI0MTkwfQ.98Am61gKWVK701Ern19V474-RJAcw-TQCHKWt709fWQ
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": [
                {
                  "id": 258,
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

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo1OSwiZXhwIjoxNTQyMDI0MTkwfQ.RAofcZzE7MwsySK61qsIXcPLz38GYwqFxSijhXrQv6I
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": [
                {
                  "id": "300",
                  "type": "teams",
                  "attributes": {
                    "name": "Fart",
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
                  "id": "301",
                  "type": "teams",
                  "attributes": {
                    "name": "Birdperson",
                    "description": "I'm the devil. What should I do when I fail? Give myself an ice cream?"
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
                  "id": "302",
                  "type": "teams",
                  "attributes": {
                    "name": "Morty Smith",
                    "description": "This isn't Game of Thrones, Morty."
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
                  "id": "303",
                  "type": "teams",
                  "attributes": {
                    "name": "Jerry Smith",
                    "description": "Aww, gee, you got me there Rick."
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
                  "id": "304",
                  "type": "teams",
                  "attributes": {
                    "name": "Tiny Rick",
                    "description": "What about the reality where Hitler cured cancer, Morty? The answer is: Don't think about it."
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
    + id: `305` (number, required)

+ Request Show team by id
**GET**&nbsp;&nbsp;`/api/v1/teams/305`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo2MCwiZXhwIjoxNTQyMDI0MTkwfQ.bsPlJ0cU45B6-oCLUtjeYB8_rUG4f1E9_TY1EwnAciQ
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "305",
                "type": "teams",
                "attributes": {
                  "name": "Dr. Glip-Glop",
                  "description": "Can somebody just let me out of here? If I die in a cage I lose a bet."
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
    + id: `312` (number, required)

+ Request Delete team by id
**DELETE**&nbsp;&nbsp;`/api/v1/teams/312`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo2MSwiZXhwIjoxNTQyMDI0MTkwfQ.PnYS_X456vVJdi5HTqBczkhVsMzonU9mEBc64mX83Xw
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

+ Response 204

### Delete multiple teams [DELETE /api/v1/teams/delete_multiple]


+ Request Delete teams by ids
**DELETE**&nbsp;&nbsp;`/api/v1/teams/delete_multiple`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo2MiwiZXhwIjoxNTQyMDI0MTkwfQ.q_2HPikCycwywdLnpgrs8Lkgy42tptgmLe4DySQRr1Q
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            team_ids[]=315&team_ids[]=316&team_ids[]=317&team_ids[]=318&team_ids[]=319

+ Response 204

### Create a teams [POST /api/v1/teams]


+ Request Create team
**POST**&nbsp;&nbsp;`/api/v1/teams`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo2MywiZXhwIjoxNTQyMDI0MTkwfQ.ZnVan2dCXKABMFusngnGRS0WecU9pDpDhZ2cb3FPF4g
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            team[name]=Fart&team[description]=Get+off+the+high+road+Summer.+We+all+got+pink+eye+because+you+wouldn%27t+stop+texting+on+the+toilet.

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "325",
                "type": "teams",
                "attributes": {
                  "name": "Fart",
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

### Update a teams [PUT /api/v1/teams/{id}]

+ Parameters
    + id: `330` (number, required)

+ Request Update team
**PUT**&nbsp;&nbsp;`/api/v1/teams/330`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo2NCwiZXhwIjoxNTQyMDI0MTkxfQ.SWlSVpWc3M6dHqeeYGYhttWaLazgTc5GFHZH2tG1_Dg
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            team[name]=UNITY

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "330",
                "type": "teams",
                "attributes": {
                  "name": "UNITY",
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
            }

# Group Time Entries


## Time Entries [/time_entries]


### Get time entries [GET /api/v1/time_entries]


+ Request Get time entries
**GET**&nbsp;&nbsp;`/api/v1/time_entries`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo2NSwiZXhwIjoxNTQyMDI0MTkxfQ.BPrR-a_AqoguIpucXJV_XvilMQmxE8TTAZm7OyKebFU
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
                    "date": "2018-11-12",
                    "time": "12:03",
                    "details": "Meeseeks are not born into this world fumbling for meaning, Jerry! We are created to serve a single purpose, for which we go to any lengths to fulfill.",
                    "trello-labels": null,
                    "estimated-time": null
                  },
                  "relationships": {
                    "user": {
                      "data": {
                        "id": "76",
                        "type": "users"
                      }
                    },
                    "project": {
                      "data": {
                        "id": "293",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "39",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-11-12",
                    "time": "12:03",
                    "details": "Keep Summer safe.",
                    "trello-labels": null,
                    "estimated-time": null
                  },
                  "relationships": {
                    "user": {
                      "data": {
                        "id": "75",
                        "type": "users"
                      }
                    },
                    "project": {
                      "data": {
                        "id": "292",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "38",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-11-12",
                    "time": "12:03",
                    "details": "Where are my testicles, Summer?",
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
                        "id": "291",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "37",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-11-12",
                    "time": "12:03",
                    "details": "Having a family doesn't mean that you stop being an individual.",
                    "trello-labels": null,
                    "estimated-time": null
                  },
                  "relationships": {
                    "user": {
                      "data": {
                        "id": "73",
                        "type": "users"
                      }
                    },
                    "project": {
                      "data": {
                        "id": "290",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "36",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-11-12",
                    "time": "12:03",
                    "details": "Having a family doesn't mean that you stop being an individual.",
                    "trello-labels": null,
                    "estimated-time": null
                  },
                  "relationships": {
                    "user": {
                      "data": {
                        "id": "72",
                        "type": "users"
                      }
                    },
                    "project": {
                      "data": {
                        "id": "289",
                        "type": "projects"
                      }
                    }
                  }
                },
                {
                  "id": "35",
                  "type": "time-entries",
                  "attributes": {
                    "date": "2018-11-12",
                    "time": "12:03",
                    "details": "Well then get your shit together. Get it all together and put it in a backpack, all your shit, so it's together. ...and if you gotta take it somewhere, take it somewhere ya know? Take it to the shit store and sell it, or put it in a shit museum. I don't care what you do, you just gotta get it together... Get your shit together.",
                    "trello-labels": null,
                    "estimated-time": null
                  },
                  "relationships": {
                    "user": {
                      "data": {
                        "id": "71",
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
                    "date": "2018-11-12",
                    "time": "12:03",
                    "details": "You're our boy dog, don't even trip.",
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
                    "date": "2018-11-12",
                    "time": "12:03",
                    "details": "I'm the devil. What should I do when I fail? Give myself an ice cream?",
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
                    "date": "2018-11-12",
                    "time": "12:03",
                    "details": "Having a family doesn't mean that you stop being an individual.",
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
                    "date": "2018-11-12",
                    "time": "12:03",
                    "details": "Uncertainty is inherently unsustainable. Eventually, everything either is or isn't.",
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
                    "date": "2018-11-12",
                    "time": "12:03",
                    "details": "I don't get it and I don't need to.",
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
                    "date": "2018-11-12",
                    "time": "12:03",
                    "details": "I'm more than just a hammer.",
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
                    "date": "2018-11-12",
                    "time": "12:03",
                    "details": "Snuffles was my slave name, you can call me snowball because my fur is pretty and white.",
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
                    "date": "2018-11-12",
                    "time": "12:03",
                    "details": "Can somebody just let me out of here? If I die in a cage I lose a bet.",
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
                    "date": "2018-11-12",
                    "time": "12:03",
                    "details": "What about the reality where Hitler cured cancer, Morty? The answer is: Don't think about it.",
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
                    "date": "2018-11-12",
                    "time": "12:03",
                    "details": "I don't get it and I don't need to.",
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
                    "date": "2018-11-12",
                    "time": "12:03",
                    "details": "No no, If I wanted to be sober, I wouldn’t have gotten drunk.",
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
                    "date": "2018-11-12",
                    "time": "12:03",
                    "details": "WUBBA LUBBA DUB DUBS!!!",
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
                    "date": "2018-11-12",
                    "time": "12:03",
                    "details": "Sometimes science is a lot more art, than science. A lot of people don't get that.",
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
                    "date": "2018-11-12",
                    "time": "12:03",
                    "details": "Meeseeks are not born into this world fumbling for meaning, Jerry! We are created to serve a single purpose, for which we go to any lengths to fulfill.",
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
                    "date": "2018-11-12",
                    "time": "12:03",
                    "details": "Get off the high road Summer. We all got pink eye because you wouldn't stop texting on the toilet.",
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
                    "date": "2018-11-12",
                    "time": "12:03",
                    "details": "This sounds like something The One True Morty might say.",
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
                    "date": "2018-11-12",
                    "time": "12:03",
                    "details": "Let me out, what you see is not the same person as me. My life's a lie. I'm not who you're looking. Let me out. Set me free. I'm really old. This isn't me. My real body is slowly dieing in a vat. Is anybody listening? Can anyone understand? Stop looking at me like that and actually help me. Help me. Help me I'm gunna die.",
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
                    "date": "2018-11-12",
                    "time": "12:03",
                    "details": "I'm the devil. What should I do when I fail? Give myself an ice cream?",
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
                    "date": "2018-11-12",
                    "time": "12:03",
                    "details": "Yo! What up my glip glops!",
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
                    "date": "2018-11-12",
                    "time": "12:03",
                    "details": "Uncertainty is inherently unsustainable. Eventually, everything either is or isn't.",
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
                    "date": "2018-11-12",
                    "time": "12:03",
                    "details": "Yo! What up my glip glops!",
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
                    "date": "2018-11-12",
                    "time": "12:03",
                    "details": "It's a figure of speech, Morty! They're bureaucrats! I don't respect them. Just keep shooting, Morty! You have no idea what prison is like here!",
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
                    "date": "2018-11-12",
                    "time": "12:03",
                    "details": "Uncertainty is inherently unsustainable. Eventually, everything either is or isn't.",
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
                    "date": "2018-11-12",
                    "time": "12:03",
                    "details": "WUBBA LUBBA DUB DUBS!!!",
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
                        "id": "264",
                        "type": "projects"
                      }
                    }
                  }
                }
              ],
              "included": [
                {
                  "id": "76",
                  "type": "users",
                  "attributes": {
                    "name": "User_76",
                    "uid": "U9Dv0wQaK",
                    "created-at": {
                      "date": "12 Nov, 2018",
                      "time": "10:03"
                    },
                    "is-active": false,
                    "role": "back_end"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "399",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "293",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_285",
                    "alias": "alias_292"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "400",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "75",
                  "type": "users",
                  "attributes": {
                    "name": "User_75",
                    "uid": "QlRuPxJn",
                    "created-at": {
                      "date": "12 Nov, 2018",
                      "time": "10:03"
                    },
                    "is-active": false,
                    "role": "back_end"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "397",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "292",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_284",
                    "alias": "alias_291"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "398",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "74",
                  "type": "users",
                  "attributes": {
                    "name": "User_74",
                    "uid": "3u3zW2XvT",
                    "created-at": {
                      "date": "12 Nov, 2018",
                      "time": "10:03"
                    },
                    "is-active": false,
                    "role": "back_end"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "395",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "291",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_283",
                    "alias": "alias_290"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "396",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "73",
                  "type": "users",
                  "attributes": {
                    "name": "User_73",
                    "uid": "40Mo66HcM02k",
                    "created-at": {
                      "date": "12 Nov, 2018",
                      "time": "10:03"
                    },
                    "is-active": false,
                    "role": "back_end"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "393",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "290",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_282",
                    "alias": "alias_289"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "394",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "72",
                  "type": "users",
                  "attributes": {
                    "name": "User_72",
                    "uid": "W2H9Gw46I8H0Kl4",
                    "created-at": {
                      "date": "12 Nov, 2018",
                      "time": "10:03"
                    },
                    "is-active": false,
                    "role": "back_end"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "391",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "289",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_281",
                    "alias": "alias_288"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "392",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "71",
                  "type": "users",
                  "attributes": {
                    "name": "User_71",
                    "uid": "U2V43eZ56rG9G",
                    "created-at": {
                      "date": "12 Nov, 2018",
                      "time": "10:03"
                    },
                    "is-active": false,
                    "role": "back_end"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "389",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "288",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_280",
                    "alias": "alias_287"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "390",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "70",
                  "type": "users",
                  "attributes": {
                    "name": "User_70",
                    "uid": "4e9bM8350gFz3b0",
                    "created-at": {
                      "date": "12 Nov, 2018",
                      "time": "10:03"
                    },
                    "is-active": false,
                    "role": "back_end"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "387",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "287",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_279",
                    "alias": "alias_286"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "388",
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
                    "uid": "YlSgMpBtYoHmXuU",
                    "created-at": {
                      "date": "12 Nov, 2018",
                      "time": "10:03"
                    },
                    "is-active": false,
                    "role": "back_end"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "385",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "286",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_278",
                    "alias": "alias_285"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "386",
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
                    "uid": "Yg7bVf0tU522",
                    "created-at": {
                      "date": "12 Nov, 2018",
                      "time": "10:03"
                    },
                    "is-active": false,
                    "role": "back_end"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "383",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "285",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_277",
                    "alias": "alias_284"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "384",
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
                    "uid": "77Fb9jVvToF5Jw8",
                    "created-at": {
                      "date": "12 Nov, 2018",
                      "time": "10:03"
                    },
                    "is-active": false,
                    "role": "back_end"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "381",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "284",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_276",
                    "alias": "alias_283"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "382",
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
                    "uid": "W5U4KeNz1e1v",
                    "created-at": {
                      "date": "12 Nov, 2018",
                      "time": "10:03"
                    },
                    "is-active": false,
                    "role": "back_end"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "379",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "283",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_275",
                    "alias": "alias_282"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "380",
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
                    "uid": "V4FlCp82P684",
                    "created-at": {
                      "date": "12 Nov, 2018",
                      "time": "10:03"
                    },
                    "is-active": false,
                    "role": "back_end"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "377",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "282",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_274",
                    "alias": "alias_281"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "378",
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
                    "uid": "Od81ZfHjQuRv6vQ5",
                    "created-at": {
                      "date": "12 Nov, 2018",
                      "time": "10:03"
                    },
                    "is-active": false,
                    "role": "back_end"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "375",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "281",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_273",
                    "alias": "alias_280"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "376",
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
                    "uid": "55SnOfXyHo1nD",
                    "created-at": {
                      "date": "12 Nov, 2018",
                      "time": "10:03"
                    },
                    "is-active": false,
                    "role": "back_end"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "373",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "280",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_272",
                    "alias": "alias_279"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "374",
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
                    "uid": "BkSmR6Y67xU8OaF",
                    "created-at": {
                      "date": "12 Nov, 2018",
                      "time": "10:03"
                    },
                    "is-active": false,
                    "role": "back_end"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "371",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "279",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_271",
                    "alias": "alias_278"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "372",
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
                    "uid": "2bFcA4S1VjPxKaV",
                    "created-at": {
                      "date": "12 Nov, 2018",
                      "time": "10:03"
                    },
                    "is-active": false,
                    "role": "back_end"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "369",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "278",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_270",
                    "alias": "alias_277"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "370",
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
                    "uid": "QcR8Ox951",
                    "created-at": {
                      "date": "12 Nov, 2018",
                      "time": "10:03"
                    },
                    "is-active": false,
                    "role": "back_end"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "367",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "277",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_269",
                    "alias": "alias_276"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "368",
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
                    "uid": "GpO3VrJwYtYsXc9w",
                    "created-at": {
                      "date": "12 Nov, 2018",
                      "time": "10:03"
                    },
                    "is-active": false,
                    "role": "back_end"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "365",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "276",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_268",
                    "alias": "alias_275"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "366",
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
                    "uid": "1vAiFySz0",
                    "created-at": {
                      "date": "12 Nov, 2018",
                      "time": "10:03"
                    },
                    "is-active": false,
                    "role": "back_end"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "363",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "275",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_267",
                    "alias": "alias_274"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "364",
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
                    "uid": "ToAjIeQvX",
                    "created-at": {
                      "date": "12 Nov, 2018",
                      "time": "10:03"
                    },
                    "is-active": false,
                    "role": "back_end"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "361",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "274",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_266",
                    "alias": "alias_273"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "362",
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
                    "uid": "N8YxWiHmBjIlWv",
                    "created-at": {
                      "date": "12 Nov, 2018",
                      "time": "10:03"
                    },
                    "is-active": false,
                    "role": "back_end"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "359",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "273",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_265",
                    "alias": "alias_272"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "360",
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
                    "uid": "T8WwJc5zB3EpE",
                    "created-at": {
                      "date": "12 Nov, 2018",
                      "time": "10:03"
                    },
                    "is-active": false,
                    "role": "back_end"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "357",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "272",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_264",
                    "alias": "alias_271"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "358",
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
                    "uid": "40WvQ6PxDmIj4",
                    "created-at": {
                      "date": "12 Nov, 2018",
                      "time": "10:03"
                    },
                    "is-active": false,
                    "role": "back_end"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "355",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "271",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_263",
                    "alias": "alias_270"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "356",
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
                    "uid": "JgEmHnFeTuOwW",
                    "created-at": {
                      "date": "12 Nov, 2018",
                      "time": "10:03"
                    },
                    "is-active": false,
                    "role": "back_end"
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
                  "id": "270",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_262",
                    "alias": "alias_269"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "354",
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
                    "uid": "4kT1Qs81",
                    "created-at": {
                      "date": "12 Nov, 2018",
                      "time": "10:03"
                    },
                    "is-active": false,
                    "role": "back_end"
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
                  "id": "269",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_261",
                    "alias": "alias_268"
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
                  "id": "51",
                  "type": "users",
                  "attributes": {
                    "name": "User_51",
                    "uid": "V2Yx4wIv",
                    "created-at": {
                      "date": "12 Nov, 2018",
                      "time": "10:03"
                    },
                    "is-active": false,
                    "role": "back_end"
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
                  "id": "268",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_260",
                    "alias": "alias_267"
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
                  "id": "50",
                  "type": "users",
                  "attributes": {
                    "name": "User_50",
                    "uid": "R4L496Ty6v942t",
                    "created-at": {
                      "date": "12 Nov, 2018",
                      "time": "10:03"
                    },
                    "is-active": false,
                    "role": "back_end"
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
                  "id": "267",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_259",
                    "alias": "alias_266"
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
                  "id": "49",
                  "type": "users",
                  "attributes": {
                    "name": "User_49",
                    "uid": "RdElBeEaLzU",
                    "created-at": {
                      "date": "12 Nov, 2018",
                      "time": "10:03"
                    },
                    "is-active": false,
                    "role": "back_end"
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
                  "id": "266",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_258",
                    "alias": "alias_265"
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
                  "id": "48",
                  "type": "users",
                  "attributes": {
                    "name": "User_48",
                    "uid": "BzJlMkX7FkJgS6",
                    "created-at": {
                      "date": "12 Nov, 2018",
                      "time": "10:03"
                    },
                    "is-active": false,
                    "role": "back_end"
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
                  "id": "265",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_257",
                    "alias": "alias_264"
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
                  "id": "47",
                  "type": "users",
                  "attributes": {
                    "name": "User_47",
                    "uid": "JgOt6eKzG4O0I",
                    "created-at": {
                      "date": "12 Nov, 2018",
                      "time": "10:03"
                    },
                    "is-active": false,
                    "role": "back_end"
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
                  "id": "264",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_256",
                    "alias": "alias_263"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "342",
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
    + id: `49` (number, required)

+ Request Show time entry by id
**GET**&nbsp;&nbsp;`/api/v1/time_entries/49`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo2NiwiZXhwIjoxNTQyMDI0MTkxfQ.JFeL-_BqPk5sy9ojxX16stJz2yLTq4N_vcaDtd-Sjaw
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "49",
                "type": "time-entries",
                "attributes": {
                  "date": "2018-11-12",
                  "time": "12:03",
                  "details": "Well then get your shit together. Get it all together and put it in a backpack, all your shit, so it's together. ...and if you gotta take it somewhere, take it somewhere ya know? Take it to the shit store and sell it, or put it in a shit museum. I don't care what you do, you just gotta get it together... Get your shit together.",
                  "trello-labels": null,
                  "estimated-time": null
                },
                "relationships": {
                  "user": {
                    "data": {
                      "id": "85",
                      "type": "users"
                    }
                  },
                  "project": {
                    "data": {
                      "id": "302",
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

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo2NywiZXhwIjoxNTQyMDI0MTkyfQ.3ZmVT_Ivct13mL8_ofa_IWX5-p_2xwVVL3HyZwTi_7A
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

+ Response 200

    + Headers

            Content-Type: text/html

### Delete multiple time entries [DELETE /api/v1/time_entries/delete_multiple]


+ Request Delete time_entries by ids
**DELETE**&nbsp;&nbsp;`/api/v1/time_entries/delete_multiple`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo2OCwiZXhwIjoxNTQyMDI0MTkyfQ.Pbqu6a8ptcOXk8TGO3EVDuhfgRQ5L39RKU_upmGf_vE
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            time_entry_ids[]=111&time_entry_ids[]=112&time_entry_ids[]=113&time_entry_ids[]=114&time_entry_ids[]=115&time_entry_ids[]=116&time_entry_ids[]=117&time_entry_ids[]=118&time_entry_ids[]=119&time_entry_ids[]=120&time_entry_ids[]=121&time_entry_ids[]=122&time_entry_ids[]=123&time_entry_ids[]=124&time_entry_ids[]=125&time_entry_ids[]=126&time_entry_ids[]=127&time_entry_ids[]=128&time_entry_ids[]=129&time_entry_ids[]=130&time_entry_ids[]=131&time_entry_ids[]=132&time_entry_ids[]=133&time_entry_ids[]=134&time_entry_ids[]=135&time_entry_ids[]=136&time_entry_ids[]=137&time_entry_ids[]=138&time_entry_ids[]=139&time_entry_ids[]=140&time_entry_ids[]=141&time_entry_ids[]=142&time_entry_ids[]=143&time_entry_ids[]=144&time_entry_ids[]=145

+ Response 204

### Create a time entry [POST /api/v1/time_entries]


+ Request Create time entry
**POST**&nbsp;&nbsp;`/api/v1/time_entries`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo2OSwiZXhwIjoxNTQyMDI0MTkzfQ.pPJYj-ayBCIZfl8_nsKRhQA5MQCSV0LT-fvrI0cIHF8
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            time_entry[date]=2018-11-12&time_entry[time]=12%3A03&time_entry[minutes]=3&time_entry[details]=%3Chttps%3A%2F%2Ftrello.com%2Fc%2FhcIRv6W0%2F1496-google-analytics%3E&time_entry[trello_labels][]=Feature&time_entry[trello_labels][]=High+Priority&time_entry[trello_labels][]=5&time_entry[user_id]=217&time_entry[project_id]=434

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "181",
                "type": "time-entries",
                "attributes": {
                  "date": "2018-11-12",
                  "time": "12:03",
                  "details": "<https://trello.com/c/hcIRv6W0/1496-google-analytics>",
                  "trello-labels": null,
                  "estimated-time": null
                },
                "relationships": {
                  "user": {
                    "data": {
                      "id": "217",
                      "type": "users"
                    }
                  },
                  "project": {
                    "data": {
                      "id": "434",
                      "type": "projects"
                    }
                  }
                }
              },
              "included": [
                {
                  "id": "217",
                  "type": "users",
                  "attributes": {
                    "name": "User_217",
                    "uid": "Z7XyL1Ja5sE8Oq9",
                    "created-at": {
                      "date": "12 Nov, 2018",
                      "time": "10:03"
                    },
                    "is-active": false,
                    "role": "back_end"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "681",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "434",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_426",
                    "alias": "alias_433"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "682",
                        "type": "teams"
                      }
                    }
                  }
                }
              ]
            }

### Update a time entry [PUT /api/v1/time_entries/{id}]

+ Parameters
    + id: `189` (number, required)

+ Request Update time entry
**PUT**&nbsp;&nbsp;`/api/v1/time_entries/189`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo3MCwiZXhwIjoxNTQyMDI0MTkzfQ.1qgI7Tt8QzVf8_nregp2BHuXKXarN6TViV8vJpZTUW8
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            time_entry[details]=LITTLE+TIP%2C+MORTY.+NEVER+CLEAN+DNA+VIALS+WITH+YOUR+SPIT.

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "189",
                "type": "time-entries",
                "attributes": {
                  "date": "2018-11-12",
                  "time": "12:03",
                  "details": "LITTLE TIP, MORTY. NEVER CLEAN DNA VIALS WITH YOUR SPIT.",
                  "trello-labels": null,
                  "estimated-time": null
                },
                "relationships": {
                  "user": {
                    "data": {
                      "id": "225",
                      "type": "users"
                    }
                  },
                  "project": {
                    "data": {
                      "id": "442",
                      "type": "projects"
                    }
                  }
                }
              },
              "included": [
                {
                  "id": "225",
                  "type": "users",
                  "attributes": {
                    "name": "User_225",
                    "uid": "QfBaPnWc33",
                    "created-at": {
                      "date": "12 Nov, 2018",
                      "time": "10:03"
                    },
                    "is-active": false,
                    "role": "back_end"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "697",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "442",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_434",
                    "alias": "alias_441"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "698",
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

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo3MSwiZXhwIjoxNTQyMDI0MTkzfQ.XXF0Ymxd7aT8B9hlAjZDosXv2eyZJ4CTEwNa_6Tj4FU
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": [
                {
                  "id": "258",
                  "type": "users",
                  "attributes": {
                    "name": "Valentin",
                    "uid": "PcTeUqL3StY5",
                    "created-at": {
                      "date": "12 Nov, 2018",
                      "time": "10:03"
                    },
                    "is-active": true,
                    "role": "back_end"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "758",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "257",
                  "type": "users",
                  "attributes": {
                    "name": "User_257",
                    "uid": "MnGn9xRr0yNn9kRm",
                    "created-at": {
                      "date": "12 Nov, 2018",
                      "time": "10:03"
                    },
                    "is-active": true,
                    "role": "back_end"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "757",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "256",
                  "type": "users",
                  "attributes": {
                    "name": "User_256",
                    "uid": "FkO8BnAgQ0WfDz",
                    "created-at": {
                      "date": "12 Nov, 2018",
                      "time": "10:03"
                    },
                    "is-active": true,
                    "role": "back_end"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "756",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "255",
                  "type": "users",
                  "attributes": {
                    "name": "User_255",
                    "uid": "I2R2Ii0hGuW",
                    "created-at": {
                      "date": "12 Nov, 2018",
                      "time": "10:03"
                    },
                    "is-active": true,
                    "role": "back_end"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "755",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "254",
                  "type": "users",
                  "attributes": {
                    "name": "User_254",
                    "uid": "QyN0Zq1nV69",
                    "created-at": {
                      "date": "12 Nov, 2018",
                      "time": "10:03"
                    },
                    "is-active": true,
                    "role": "back_end"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "754",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "253",
                  "type": "users",
                  "attributes": {
                    "name": "User_253",
                    "uid": "8vL9Yj01307",
                    "created-at": {
                      "date": "12 Nov, 2018",
                      "time": "10:03"
                    },
                    "is-active": true,
                    "role": "back_end"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "753",
                        "type": "teams"
                      }
                    }
                  }
                }
              ],
              "included": [
                {
                  "id": "758",
                  "type": "teams",
                  "attributes": {
                    "name": "Eyeholes Man",
                    "description": "Don’t even trip dawg."
                  },
                  "relationships": {
                    "projects": {
                      "data": [
            
                      ]
                    },
                    "users": {
                      "data": [
                        {
                          "id": "258",
                          "type": "users"
                        }
                      ]
                    }
                  }
                },
                {
                  "id": "757",
                  "type": "teams",
                  "attributes": {
                    "name": "Baby Legs",
                    "description": "Oh yeah, If you think my Rick is Dead, then he is alive. If you think you're safe, then he's coming for you."
                  },
                  "relationships": {
                    "projects": {
                      "data": [
            
                      ]
                    },
                    "users": {
                      "data": [
                        {
                          "id": "257",
                          "type": "users"
                        }
                      ]
                    }
                  }
                },
                {
                  "id": "756",
                  "type": "teams",
                  "attributes": {
                    "name": "Gazorpazorpfield",
                    "description": "It's a figure of speech, Morty! They're bureaucrats! I don't respect them. Just keep shooting, Morty! You have no idea what prison is like here!"
                  },
                  "relationships": {
                    "projects": {
                      "data": [
            
                      ]
                    },
                    "users": {
                      "data": [
                        {
                          "id": "256",
                          "type": "users"
                        }
                      ]
                    }
                  }
                },
                {
                  "id": "755",
                  "type": "teams",
                  "attributes": {
                    "name": "Jan Michael Vincent",
                    "description": "What is my purpose. You pass butter. Oh My God. Yeah, Welcome to the club pal."
                  },
                  "relationships": {
                    "projects": {
                      "data": [
            
                      ]
                    },
                    "users": {
                      "data": [
                        {
                          "id": "255",
                          "type": "users"
                        }
                      ]
                    }
                  }
                },
                {
                  "id": "754",
                  "type": "teams",
                  "attributes": {
                    "name": "Loggins",
                    "description": "Snuffles was my slave name, you can call me snowball because my fur is pretty and white."
                  },
                  "relationships": {
                    "projects": {
                      "data": [
            
                      ]
                    },
                    "users": {
                      "data": [
                        {
                          "id": "254",
                          "type": "users"
                        }
                      ]
                    }
                  }
                },
                {
                  "id": "753",
                  "type": "teams",
                  "attributes": {
                    "name": "Beth Smith",
                    "description": "Sometimes science is a lot more art, than science. A lot of people don't get that."
                  },
                  "relationships": {
                    "projects": {
                      "data": [
            
                      ]
                    },
                    "users": {
                      "data": [
                        {
                          "id": "253",
                          "type": "users"
                        }
                      ]
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
    + id: `263` (number, required)

+ Request Show user by id
**GET**&nbsp;&nbsp;`/api/v1/users/263`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo3MiwiZXhwIjoxNTQyMDI0MTkzfQ.aWLt3Ub2MCUqkzORKzDQ-q99xNll3iDxmT1nw9E2gOQ
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "263",
                "type": "users",
                "attributes": {
                  "name": "User_262",
                  "uid": "LyTh7o332gQ",
                  "created-at": {
                    "date": "12 Nov, 2018",
                    "time": "10:03"
                  },
                  "is-active": true,
                  "role": "back_end"
                },
                "relationships": {
                  "team": {
                    "data": {
                      "id": "763",
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

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo3MywiZXhwIjoxNTQyMDI0MTkzfQ.x0pcAVraYs9nFkXfHRYr5K8wGVQKBfyR3PnaA8sC9aM
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": [
                {
                  "id": 270,
                  "name": "Valentin"
                }
              ]
            }

### Delete a user [DELETE /api/v1/users/{id}]

+ Parameters
    + id: `275` (number, required)

+ Request Delete user by id
**DELETE**&nbsp;&nbsp;`/api/v1/users/275`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo3NCwiZXhwIjoxNTQyMDI0MTkzfQ.AP1t9w8nY_rAW4iJsclj8jvY8geBPD5ICVXXrcm07Lk
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

+ Response 204

### Delete multiple users [DELETE /api/v1/users/delete_multiple]


+ Request Delete users by ids
**DELETE**&nbsp;&nbsp;`/api/v1/users/delete_multiple`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo3NSwiZXhwIjoxNTQyMDI0MTkzfQ.Pu4j2oOlIWF3x-uwRq34SB5BTh9YfnYCYvCkJZRUhEE
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            user_ids[]=277&user_ids[]=278&user_ids[]=279&user_ids[]=280&user_ids[]=281

+ Response 204

### Create a user [POST /api/v1/users]


+ Request Create user
**POST**&nbsp;&nbsp;`/api/v1/users`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo3NiwiZXhwIjoxNTQyMDI0MTk0fQ.aS_RDEutO4VhRfvBqgHkKlYJckERTbQvhDoe8fLkeD8
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            user[name]=User_283&user[is_active]=false&user[uid]=DgDd73Ff9k&user[role]=back_end

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "289",
                "type": "users",
                "attributes": {
                  "name": "User_283",
                  "uid": "DgDd73Ff9k",
                  "created-at": {
                    "date": "12 Nov, 2018",
                    "time": "10:03"
                  },
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
    + id: `291` (number, required)

+ Request Update user
**PUT**&nbsp;&nbsp;`/api/v1/users/291`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo3NywiZXhwIjoxNTQyMDI0MTk0fQ.mKmZgyqY-tAKWJiE_MJJQixYcoakirVUML2CYquKXa4
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            user[name]=USER_285

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "291",
                "type": "users",
                "attributes": {
                  "name": "USER_285",
                  "uid": "JtFqEj8rYjFc144x",
                  "created-at": {
                    "date": "12 Nov, 2018",
                    "time": "10:03"
                  },
                  "is-active": true,
                  "role": "back_end"
                },
                "relationships": {
                  "team": {
                    "data": {
                      "id": "790",
                      "type": "teams"
                    }
                  }
                }
              }
            }
