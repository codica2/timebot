

# Group Absences


## Absences [/absences]


### Get absences [GET /api/v1/absences]


+ Request Get absences
**GET**&nbsp;&nbsp;`/api/v1/absences`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE1NDA5MjIwNTJ9.OqZPLlNUHWmiP3BfgtlQgwSqT9EU7KEjxwRonM4BOi4
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
                    "date": "2018-10-30",
                    "comment": "Go home and drink, grandpa.",
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
                    "date": "2018-10-30",
                    "comment": "This sounds like something The One True Morty might say.",
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
                    "date": "2018-10-30",
                    "comment": "Having a family doesn't mean that you stop being an individual.",
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
                    "date": "2018-10-30",
                    "comment": "It's a figure of speech, Morty! They're bureaucrats! I don't respect them. Just keep shooting, Morty! You have no idea what prison is like here!",
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
                    "date": "2018-10-30",
                    "comment": "I'm more than just a hammer.",
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
                    "uid": "86AgB7H2CuE4Ji2z",
                    "created-at": {
                      "date": "30 Oct, 2018",
                      "time": "15:54"
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
                    "uid": "PvT5Eb6yI50",
                    "created-at": {
                      "date": "30 Oct, 2018",
                      "time": "15:54"
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
                    "uid": "Q5ErI0K1JiGs",
                    "created-at": {
                      "date": "30 Oct, 2018",
                      "time": "15:54"
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
                    "uid": "VaVk6wH9PoTjAl",
                    "created-at": {
                      "date": "30 Oct, 2018",
                      "time": "15:54"
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
                    "uid": "OuQiFvVoG",
                    "created-at": {
                      "date": "30 Oct, 2018",
                      "time": "15:54"
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

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoyLCJleHAiOjE1NDA5MjIwNTJ9.j8WKOfHVBv6aWLMO6KWI0RkG0_YNQs4DaoJNngVei-U
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
                  "date": "2018-10-30",
                  "comment": "Having a family doesn't mean that you stop being an individual.",
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
    + id: `12` (number, required)

+ Request Delete absence by id
**DELETE**&nbsp;&nbsp;`/api/v1/absences/12`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozLCJleHAiOjE1NDA5MjIwNTJ9.fTMr5lGx9GJsDnSTZp8rUBg_m7vQvKpdCM2RjURYhNU
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

+ Response 204

### Delete multiple absences [DELETE /api/v1/absences/delete_multiple]


+ Request Delete absences by ids
**DELETE**&nbsp;&nbsp;`/api/v1/absences/delete_multiple`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo0LCJleHAiOjE1NDA5MjIwNTJ9.7f2JIg6Gp5n4rLHgubHRuS-D-6THyvY8ZjpyCcFQswE
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            absence_ids[]=16&absence_ids[]=17&absence_ids[]=18&absence_ids[]=19&absence_ids[]=20

+ Response 204

### Create an absence [POST /api/v1/absences]


+ Request Create absence
**POST**&nbsp;&nbsp;`/api/v1/absences`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo1LCJleHAiOjE1NDA5MjIwNTJ9.TQBt2-VkWEAnn0pSsrRxYvqbzEJdg4rAK6H3XR8TRj8
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            absence[reason]=other&absence[date]=2018-10-30+15%3A54%3A12+UTC&absence[comment]=Oh+Summer%2C+haha+first+race+war%2C+huh%3F&absence[user_id]=25

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "26",
                "type": "absences",
                "attributes": {
                  "date": "2018-10-30",
                  "comment": "Oh Summer, haha first race war, huh?",
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
              "included": [
                {
                  "id": "25",
                  "type": "users",
                  "attributes": {
                    "name": "User_25",
                    "uid": "PyEmE7L38rWrZ",
                    "created-at": {
                      "date": "30 Oct, 2018",
                      "time": "15:54"
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

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo2LCJleHAiOjE1NDA5MjIwNTJ9.rjeTzgt34a4k9ztwIlyN1hIHQzX5RW-Rpk0P7FqIq5U
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
                  "date": "2018-10-30",
                  "comment": "Comment",
                  "reason": "other"
                },
                "relationships": {
                  "user": {
                    "data": {
                      "id": "34",
                      "type": "users"
                    }
                  }
                }
              },
              "included": [
                {
                  "id": "34",
                  "type": "users",
                  "attributes": {
                    "name": "User_34",
                    "uid": "FrF2HrKfAfQv7uS",
                    "created-at": {
                      "date": "30 Oct, 2018",
                      "time": "15:54"
                    },
                    "is-active": false,
                    "role": "back_end"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "34",
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

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxMiwiZXhwIjoxNTQwOTIyMDUyfQ.R7U1SMYVrENyKGfpHE_amEOr1hYzDcRw69XNaygBqCw
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
                    "email": "marisa@binsmacgyver.co"
                  }
                },
                {
                  "id": "8",
                  "type": "admins",
                  "attributes": {
                    "email": "arnettedurgan@von.info"
                  }
                },
                {
                  "id": "9",
                  "type": "admins",
                  "attributes": {
                    "email": "boyd@kuhnpouros.co"
                  }
                },
                {
                  "id": "10",
                  "type": "admins",
                  "attributes": {
                    "email": "kenny@jerde.name"
                  }
                },
                {
                  "id": "11",
                  "type": "admins",
                  "attributes": {
                    "email": "judsonveum@cummerata.net"
                  }
                },
                {
                  "id": "12",
                  "type": "admins",
                  "attributes": {
                    "email": "lesleylynch@cremin.co"
                  }
                }
              ]
            }

### Get an admin [GET /api/v1/admins/{id}]

+ Parameters
    + id: `14` (number, required)

+ Request Show admin by id
**GET**&nbsp;&nbsp;`/api/v1/admins/14`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxOCwiZXhwIjoxNTQwOTIyMDUyfQ.V_KIr1_EHLOf3NGf4d88FTnw5S-cN49qM2zGZstmCGc
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "14",
                "type": "admins",
                "attributes": {
                  "email": "lillywuckert@cronin.org"
                }
              }
            }

### Delete an admin [DELETE /api/v1/admins/{id}]

+ Parameters
    + id: `19` (number, required)

+ Request Delete admin by id
**DELETE**&nbsp;&nbsp;`/api/v1/admins/19`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoyNCwiZXhwIjoxNTQwOTIyMDUyfQ.YIv0vWXlYdtmBZjULl4QK6UGvpabXD016aQcuBJfgk0
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

+ Response 204

### Delete multiple admins [DELETE /api/v1/admins/delete_multiple]


+ Request Delete admins by ids
**DELETE**&nbsp;&nbsp;`/api/v1/admins/delete_multiple`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozMCwiZXhwIjoxNTQwOTIyMDUzfQ.2XAn_o5HrgA5QHgpckcDvnVP1zYteZGHIIw3a-70LXE
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            admin_ids[]=25&admin_ids[]=26&admin_ids[]=27&admin_ids[]=28&admin_ids[]=29

+ Response 204

### Create an admin [POST /api/v1/admins]


+ Request Create admin
**POST**&nbsp;&nbsp;`/api/v1/admins`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozNiwiZXhwIjoxNTQwOTIyMDUzfQ.aYifdy2bzWB8y02QUWZETFj-cSf9WKKzyqF7ZfTV1gU
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            admin[email]=renato%40zemlakwelch.com&admin[password]=KdRw84GmE4Qq

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "37",
                "type": "admins",
                "attributes": {
                  "email": "renato@zemlakwelch.com"
                }
              }
            }

### Update an admin [PUT /api/v1/admins/{id}]

+ Parameters
    + id: `40` (number, required)

+ Request Update admin
**PUT**&nbsp;&nbsp;`/api/v1/admins/40`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo0MywiZXhwIjoxNTQwOTIyMDUzfQ.U943fzPtu_DLHcFkdTRsMVtVHmLRe3cXa-PNiBeHDI4
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
                "id": "40",
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

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo0NCwiZXhwIjoxNTQwOTIyMDUzfQ.DxEpDJpXPI2c4a8FzfbLn7KBvph8OZRUP69W-LEfQiU
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "start_of_week": "2018-10-30",
              "end_of_week": "2018-10-30",
              "hours_to_work": -8,
              "hours_worked": 0,
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

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo0NSwiZXhwIjoxNTQwOTIyMDUzfQ.dsmjeYCfHN4UOuO4xHKczWsjxKL5ZixEB2bfi6d7SkU
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
                  "details": "well then get your shit together. get it all together and put it in a backpack, all your shit, so it's together. ...and if you gotta take it somewhere, take it somewhere ya know? take it to the shit store and sell it, or put it in a shit museum. i don't care what you do, you just gotta get it together... get your shit together.",
                  "created_at": "30 Oct, 2018 at 15:54",
                  "trello_labels": null,
                  "estimate": null,
                  "status": null,
                  "total_time": 17.9,
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
                  "details": "i want that mulan mcnugget sauce, morty!",
                  "created_at": "30 Oct, 2018 at 15:54",
                  "trello_labels": null,
                  "estimate": null,
                  "status": null,
                  "total_time": 17.9,
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
                  "details": "i hate to break it to you, but what people call 'love' is just a chemical reaction that compels animals to breed. it hits hard morty then it slowly fades leaving you stranded in a failing marriage. i did it. your parents are going to do it. break the cycle morty, rise above, focus on science.",
                  "created_at": "30 Oct, 2018 at 15:54",
                  "trello_labels": null,
                  "estimate": null,
                  "status": null,
                  "total_time": 17.9,
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
                  "details": "hi! i'm mr meeseeks! look at me!",
                  "created_at": "30 Oct, 2018 at 15:54",
                  "trello_labels": null,
                  "estimate": null,
                  "status": null,
                  "total_time": 17.9,
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
                  "details": "i'm more than just a hammer.",
                  "created_at": "30 Oct, 2018 at 15:54",
                  "trello_labels": null,
                  "estimate": null,
                  "status": null,
                  "total_time": 17.9,
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

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo0NiwiZXhwIjoxNTQwOTIyMDUzfQ.pkmREgfu_SDMdfA008UXOzeaxHeT9WmdtN38VtgSUm0
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
                    "name": "Gazorpazorpfield",
                    "date": "2018-10-31"
                  }
                },
                {
                  "id": "2",
                  "type": "holidays",
                  "attributes": {
                    "name": "Beth Smith",
                    "date": "2018-11-01"
                  }
                },
                {
                  "id": "3",
                  "type": "holidays",
                  "attributes": {
                    "name": "Morty Smith",
                    "date": "2018-11-02"
                  }
                },
                {
                  "id": "4",
                  "type": "holidays",
                  "attributes": {
                    "name": "Dr. Glip-Glop",
                    "date": "2018-11-03"
                  }
                },
                {
                  "id": "5",
                  "type": "holidays",
                  "attributes": {
                    "name": "Scary Terry",
                    "date": "2018-11-04"
                  }
                }
              ]
            }

### Get a holiday [GET /api/v1/holidays/{id}]

+ Parameters
    + id: `7` (number, required)

+ Request Show holiday by id
**GET**&nbsp;&nbsp;`/api/v1/holidays/7`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo0NywiZXhwIjoxNTQwOTIyMDUzfQ.Ckg8yKXGvv-wXRtFS6XJMqISdtjWPSk1F4boPmlnLb4
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "7",
                "type": "holidays",
                "attributes": {
                  "name": "Mr. Goldenfold",
                  "date": "2018-11-06"
                }
              }
            }

### Delete a holiday [DELETE /api/v1/holidays/{id}]

+ Parameters
    + id: `12` (number, required)

+ Request Delete holiday by id
**DELETE**&nbsp;&nbsp;`/api/v1/holidays/12`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo0OCwiZXhwIjoxNTQwOTIyMDUzfQ.z_DWaoayauzcuxudeRbWImnAEMVq4PPxIJnZ1jWpDdg
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

+ Response 204

### Delete multiple holidays [DELETE /api/v1/holidays/delete_multiple]


+ Request Delete holidays by ids
**DELETE**&nbsp;&nbsp;`/api/v1/holidays/delete_multiple`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo0OSwiZXhwIjoxNTQwOTIyMDUzfQ.sLcEIMPnWbwoKMkRvBoizqklwfn6a06OMmcvIBp0JCM
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            holiday_ids[]=16&holiday_ids[]=17&holiday_ids[]=18&holiday_ids[]=19&holiday_ids[]=20

+ Response 204

### Create a holiday [POST /api/v1/holidays]


+ Request Create holiday
**POST**&nbsp;&nbsp;`/api/v1/holidays`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo1MCwiZXhwIjoxNTQwOTIyMDUzfQ.XeFxy0lQC5B8rtV53grQWlk38G4r3G5nFDd5QM8os5Y
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            holiday[name]=Krombopulos+Michael&holiday[date]=2018-11-25

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
                  "date": "2018-11-25"
                }
              }
            }

### Update a holiday [PUT /api/v1/holidays/{id}]

+ Parameters
    + id: `31` (number, required)

+ Request Update holiday
**PUT**&nbsp;&nbsp;`/api/v1/holidays/31`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo1MSwiZXhwIjoxNTQwOTIyMDUzfQ.awizv5Pn8X0HRLOLBI2olwaggAt8LOOQGEJVCnsQWDQ
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            holiday[name]=SNOWBALL

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "31",
                "type": "holidays",
                "attributes": {
                  "name": "SNOWBALL",
                  "date": "2018-11-30"
                }
              }
            }

# Group Projects


## Projects [/projects]


### Get projects [GET /api/v1/projects]


+ Request Get projects
**GET**&nbsp;&nbsp;`/api/v1/projects`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo1MiwiZXhwIjoxNTQwOTIyMDUzfQ.LcnYF-Usqo5hEUWNuruDoSbNuKncXmIgzMBCxaAK5dE
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
                    "name": "Shrimply Pibbles",
                    "description": "Oh yeah, If you think my Rick is Dead, then he is alive. If you think you're safe, then he's coming for you."
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
                    "name": "Loggins",
                    "description": "Where are my testicles, Summer?"
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
                    "name": "Morty Jr.",
                    "description": "What is my purpose. You pass butter. Oh My God. Yeah, Welcome to the club pal."
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
                    "name": "Summer Smith",
                    "description": "Traditionally, science fairs are a father/son thing. Well, scientifically, traditions are an idiot thing."
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
                    "name": "Fart",
                    "description": "Aww, gee, you got me there Rick."
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
                    "name": "Shrimply Pibbles",
                    "description": "Traditionally, science fairs are a father/son thing. Well, scientifically, traditions are an idiot thing."
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
                    "name": "Jerry's Mytholog",
                    "description": "Can somebody just let me out of here? If I die in a cage I lose a bet."
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
                    "name": "Snuffles",
                    "description": "That just sounds like slavery with extra steps."
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
                    "name": "Morty Smith",
                    "description": "This sounds like something The One True Morty might say."
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
                    "name": "Arthricia",
                    "description": "Meeseeks are not born into this world fumbling for meaning, Jerry! We are created to serve a single purpose, for which we go to any lengths to fulfill."
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
                    "name": "Squanchy",
                    "description": "It's fine, everything is fine. Theres an infinite number of realities Morty and in a few dozen of those I got lucky and turned everything back to normal."
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
                    "name": "Mr. Goldenfold",
                    "description": "The first rule of space travel kids is always check out distress beacons. Nine out of ten times it's a ship full of dead aliens and a bunch of free shit! One out of ten times it's a deadly trap, but... I'm ready to roll those dice!"
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
                    "name": "Arthricia",
                    "description": "Don’t even trip dawg."
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
                    "name": "Morty Jr.",
                    "description": "Nobody exists on purpose. Nobody belongs anywhere. Everybody is going to die."
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
                    "name": "Fart",
                    "description": "Existence is pain to a meeseeks Jerry, and we will do anything to alleviate that pain."
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
                    "name": "Jan Michael Vincent",
                    "description": "Can somebody just let me out of here? If I die in a cage I lose a bet."
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
                    "name": "Beth Smith",
                    "description": "This sounds like something The One True Morty might say."
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
                    "name": "Abradolf Lincler",
                    "description": "WUBBA LUBBA DUB DUBS!!!"
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
                    "name": "Jerry Smith",
                    "description": "I'm more than just a hammer."
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
                    "name": "Gazorpazorpfield",
                    "description": "Nobody exists on purpose. Nobody belongs anywhere. Everybody is going to die."
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
                    "name": "Summer Smith",
                    "description": "You're like Hitler, except...Hitler cared about Germany, or something."
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
                    "name": "Krombopulos Michael",
                    "description": "Oh yeah, If you think my Rick is Dead, then he is alive. If you think you're safe, then he's coming for you."
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
                    "name": "Baby Legs",
                    "description": "WUBBA LUBBA DUB DUBS!!!"
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
                    "name": "Jerry Smith",
                    "description": "Oh Summer, haha first race war, huh?"
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
                    "name": "Eyeholes Man",
                    "description": "Keep Summer safe."
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
                    "name": "Morty Jr.",
                    "description": "He's not a hot girl. He can't just bail on his life and set up shop in someone else's."
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
                    "name": "Morty Smith",
                    "description": "This sounds like something The One True Morty might say."
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
                    "name": "Evil Morty",
                    "description": "Great, now I have to take over an entire planet because of your stupid boobs."
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
                    "name": "Morty Smith",
                    "description": "Get off the high road Summer. We all got pink eye because you wouldn't stop texting on the toilet."
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
                    "name": "Loggins",
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
    + id: `57` (number, required)

+ Request Show project by id
**GET**&nbsp;&nbsp;`/api/v1/projects/57`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo1MywiZXhwIjoxNTQwOTIyMDU0fQ.Tke7Os51rNRmAcI5VKipf9zR8BwQHDXrxxYW5XZ7D8Q
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "57",
                "type": "projects",
                "attributes": {
                  "name": "Project_56",
                  "alias": "alias_57"
                },
                "relationships": {
                  "team": {
                    "data": {
                      "id": "98",
                      "type": "teams"
                    }
                  }
                }
              }
            }

### Delete a project [DELETE /api/v1/projects/{id}]

+ Parameters
    + id: `88` (number, required)

+ Request Delete project by id
**DELETE**&nbsp;&nbsp;`/api/v1/projects/88`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo1NCwiZXhwIjoxNTQwOTIyMDU0fQ.koiGeL_hYwRNRH_V5tHzpJQPpeRZCk1RJq0JwNMiaog
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

+ Response 200

    + Headers

            Content-Type: text/html

### Delete multiple projects [DELETE /api/v1/projects/delete_multiple]


+ Request Delete projects by ids
**DELETE**&nbsp;&nbsp;`/api/v1/projects/delete_multiple`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo1NSwiZXhwIjoxNTQwOTIyMDU0fQ.Lki49abFSiLr8cl4wR9wuG_97yV4k3scc2SY6-3n9h8
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            project_ids[]=114&project_ids[]=115&project_ids[]=116&project_ids[]=117&project_ids[]=118&project_ids[]=119&project_ids[]=120&project_ids[]=121&project_ids[]=122&project_ids[]=123&project_ids[]=124&project_ids[]=125&project_ids[]=126&project_ids[]=127&project_ids[]=128&project_ids[]=129&project_ids[]=130&project_ids[]=131&project_ids[]=132&project_ids[]=133&project_ids[]=134&project_ids[]=135&project_ids[]=136&project_ids[]=137&project_ids[]=138&project_ids[]=139&project_ids[]=140&project_ids[]=141&project_ids[]=142&project_ids[]=143&project_ids[]=144&project_ids[]=145&project_ids[]=146&project_ids[]=147&project_ids[]=148

+ Response 204

### Create a project [POST /api/v1/projects]


+ Request Create project
**POST**&nbsp;&nbsp;`/api/v1/projects`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo1NiwiZXhwIjoxNTQwOTIyMDU0fQ.r9zQdoz2LEYhsVXhUn98NtBaMKEBmpSN_1fNJEni8pk
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            project[name]=Jerry+Smith&project[alias]=Pluto&project[team_id]=227

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "186",
                "type": "projects",
                "attributes": {
                  "name": "Jerry Smith",
                  "alias": "Pluto"
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
    + id: `208` (number, required)

+ Request Update project
**PUT**&nbsp;&nbsp;`/api/v1/projects/208`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo1NywiZXhwIjoxNTQwOTIyMDU0fQ.6QeUhsuDGx0tkq77hmeic2TTU4IkyBeS7GWPjzyATtk
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            project[name]=PROJECT_202

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "208",
                "type": "projects",
                "attributes": {
                  "name": "PROJECT_202",
                  "alias": "alias_207"
                },
                "relationships": {
                  "team": {
                    "data": {
                      "id": "249",
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

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo1OCwiZXhwIjoxNTQwOTIyMDU1fQ.Fscbl9G1TRJFxtUPDablg5giqIIK39EBddzIwAxNcRg
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

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo1OSwiZXhwIjoxNTQwOTIyMDU1fQ.W4jUYXxAGwzOfJbtZqsFkQD9UB8Zk4QE3fFfGm0aaLM
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
                    "name": "Lighthouse Chief",
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
                },
                {
                  "id": "301",
                  "type": "teams",
                  "attributes": {
                    "name": "Krombopulos Michael",
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
                  "id": "302",
                  "type": "teams",
                  "attributes": {
                    "name": "Stealy",
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
                  "id": "303",
                  "type": "teams",
                  "attributes": {
                    "name": "Jan Michael Vincent",
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
                },
                {
                  "id": "304",
                  "type": "teams",
                  "attributes": {
                    "name": "Stealy",
                    "description": "Snuffles was my slave name, you can call me snowball because my fur is pretty and white."
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
    + id: `307` (number, required)

+ Request Show team by id
**GET**&nbsp;&nbsp;`/api/v1/teams/307`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo2MCwiZXhwIjoxNTQwOTIyMDU1fQ.EpXWyi8ArB7WtxqsOr0ZUYQa76IpZpIPmFYhXZtYVUI
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "307",
                "type": "teams",
                "attributes": {
                  "name": "Cousin Nicky",
                  "description": "Hello Jerry, come to rub my face in urine again?"
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
    + id: `314` (number, required)

+ Request Delete team by id
**DELETE**&nbsp;&nbsp;`/api/v1/teams/314`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo2MSwiZXhwIjoxNTQwOTIyMDU1fQ.UhNLWNdtdErtrQ9UA-umyzEk_gan122ul0DN7qYYb-8
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

+ Response 204

### Delete multiple teams [DELETE /api/v1/teams/delete_multiple]


+ Request Delete teams by ids
**DELETE**&nbsp;&nbsp;`/api/v1/teams/delete_multiple`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo2MiwiZXhwIjoxNTQwOTIyMDU1fQ.etWmDo5CGijNjxNwRrh12NrGOO-MbffIvfMBxtxBHVw
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            team_ids[]=315&team_ids[]=316&team_ids[]=317&team_ids[]=318&team_ids[]=319

+ Response 204

### Create a teams [POST /api/v1/teams]


+ Request Create team
**POST**&nbsp;&nbsp;`/api/v1/teams`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo2MywiZXhwIjoxNTQwOTIyMDU1fQ.iS2ck-rXxeMs7IkBLLBZVqDEz8Oum_W95dsRbOJhAQk
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            team[name]=Morty+Jr.&team[description]=I+want+that+Mulan+McNugget+sauce%2C+Morty%21

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "325",
                "type": "teams",
                "attributes": {
                  "name": "Morty Jr.",
                  "description": "I want that Mulan McNugget sauce, Morty!"
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
    + id: `329` (number, required)

+ Request Update team
**PUT**&nbsp;&nbsp;`/api/v1/teams/329`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo2NCwiZXhwIjoxNTQwOTIyMDU1fQ.ajXoMinbodHlWqIFrrGN2PUkDd8HJobbtvL9BqJzVNw
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            team[name]=FART

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "329",
                "type": "teams",
                "attributes": {
                  "name": "FART",
                  "description": "Yo! What up my glip glops!"
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

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo2NSwiZXhwIjoxNTQwOTIyMDU1fQ.c-5EslE0MMyUrmeBqGS7WFsJ_WEr23mrXXtfUMMM2a0
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
                    "date": "2018-10-30",
                    "time": "17:54",
                    "details": "It's fine, everything is fine. Theres an infinite number of realities Morty and in a few dozen of those I got lucky and turned everything back to normal.",
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
                    "date": "2018-10-30",
                    "time": "17:54",
                    "details": "Existence is pain to a meeseeks Jerry, and we will do anything to alleviate that pain.",
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
                    "date": "2018-10-30",
                    "time": "17:54",
                    "details": "I'm more than just a hammer.",
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
                    "date": "2018-10-30",
                    "time": "17:54",
                    "details": "Oh Summer, haha first race war, huh?",
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
                    "date": "2018-10-30",
                    "time": "17:54",
                    "details": "I like what you got.",
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
                    "date": "2018-10-30",
                    "time": "17:54",
                    "details": "This sounds like something The One True Morty might say.",
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
                    "date": "2018-10-30",
                    "time": "17:54",
                    "details": "It's a figure of speech, Morty! They're bureaucrats! I don't respect them. Just keep shooting, Morty! You have no idea what prison is like here!",
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
                    "date": "2018-10-30",
                    "time": "17:54",
                    "details": "You're like Hitler, except...Hitler cared about Germany, or something.",
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
                    "date": "2018-10-30",
                    "time": "17:54",
                    "details": "You're our boy dog, don't even trip.",
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
                    "date": "2018-10-30",
                    "time": "17:54",
                    "details": "Weddings are basically funerals with cake.",
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
                    "date": "2018-10-30",
                    "time": "17:54",
                    "details": "I like what you got.",
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
                    "date": "2018-10-30",
                    "time": "17:54",
                    "details": "Sometimes science is a lot more art, than science. A lot of people don't get that.",
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
                    "date": "2018-10-30",
                    "time": "17:54",
                    "details": "Get off the high road Summer. We all got pink eye because you wouldn't stop texting on the toilet.",
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
                    "date": "2018-10-30",
                    "time": "17:54",
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
                    "date": "2018-10-30",
                    "time": "17:54",
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
                    "date": "2018-10-30",
                    "time": "17:54",
                    "details": "Yo! What up my glip glops!",
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
                    "date": "2018-10-30",
                    "time": "17:54",
                    "details": "Nobody exists on purpose. Nobody belongs anywhere. Everybody is going to die.",
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
                    "date": "2018-10-30",
                    "time": "17:54",
                    "details": "Snuffles was my slave name, you can call me snowball because my fur is pretty and white.",
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
                    "date": "2018-10-30",
                    "time": "17:54",
                    "details": "Don’t even trip dawg.",
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
                    "date": "2018-10-30",
                    "time": "17:54",
                    "details": "Little tip, Morty. Never clean DNA vials with your spit.",
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
                    "date": "2018-10-30",
                    "time": "17:54",
                    "details": "Well then get your shit together. Get it all together and put it in a backpack, all your shit, so it's together. ...and if you gotta take it somewhere, take it somewhere ya know? Take it to the shit store and sell it, or put it in a shit museum. I don't care what you do, you just gotta get it together... Get your shit together.",
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
                    "date": "2018-10-30",
                    "time": "17:54",
                    "details": "It's fine, everything is fine. Theres an infinite number of realities Morty and in a few dozen of those I got lucky and turned everything back to normal.",
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
                    "date": "2018-10-30",
                    "time": "17:54",
                    "details": "Go home and drink, grandpa.",
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
                    "date": "2018-10-30",
                    "time": "17:54",
                    "details": "Let me out, what you see is not the same person as me. My life's a lie. I'm not who you're looking. Let me out. Set me free. I'm really old. This isn't me. My real body is slowly dieing in a vat. Is anybody listening? Can anyone understand? Stop looking at me like that and actually help me. Help me. Help me I'm gunna die.",
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
                    "date": "2018-10-30",
                    "time": "17:54",
                    "details": "I like what you got.",
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
                    "date": "2018-10-30",
                    "time": "17:54",
                    "details": "It's a figure of speech, Morty! They're bureaucrats! I don't respect them. Just keep shooting, Morty! You have no idea what prison is like here!",
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
                    "date": "2018-10-30",
                    "time": "17:54",
                    "details": "There is no god, Summer; gotta rip that band-aid off now you'll thank me later.",
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
                    "date": "2018-10-30",
                    "time": "17:54",
                    "details": "Yo! What up my glip glops!",
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
                    "date": "2018-10-30",
                    "time": "17:54",
                    "details": "He's not a hot girl. He can't just bail on his life and set up shop in someone else's.",
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
                    "date": "2018-10-30",
                    "time": "17:54",
                    "details": "Let me out, what you see is not the same person as me. My life's a lie. I'm not who you're looking. Let me out. Set me free. I'm really old. This isn't me. My real body is slowly dieing in a vat. Is anybody listening? Can anyone understand? Stop looking at me like that and actually help me. Help me. Help me I'm gunna die.",
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
                    "uid": "KuT7FaGq9j5",
                    "created-at": {
                      "date": "30 Oct, 2018",
                      "time": "15:54"
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
                    "uid": "HoZdJeJkCi2",
                    "created-at": {
                      "date": "30 Oct, 2018",
                      "time": "15:54"
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
                    "uid": "Lf4oPtNrL",
                    "created-at": {
                      "date": "30 Oct, 2018",
                      "time": "15:54"
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
                    "uid": "Y23a3xYlQw4",
                    "created-at": {
                      "date": "30 Oct, 2018",
                      "time": "15:54"
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
                    "uid": "N7F9JxN1I5OtVx",
                    "created-at": {
                      "date": "30 Oct, 2018",
                      "time": "15:54"
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
                    "uid": "Fg91F6O2Ax2lM8",
                    "created-at": {
                      "date": "30 Oct, 2018",
                      "time": "15:54"
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
                    "uid": "Aa0jP0SzG17wS4",
                    "created-at": {
                      "date": "30 Oct, 2018",
                      "time": "15:54"
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
                    "uid": "1eZfZ93lNyVy",
                    "created-at": {
                      "date": "30 Oct, 2018",
                      "time": "15:54"
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
                    "uid": "RhGlZ0Bt",
                    "created-at": {
                      "date": "30 Oct, 2018",
                      "time": "15:54"
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
                    "uid": "0n0aB7Gv",
                    "created-at": {
                      "date": "30 Oct, 2018",
                      "time": "15:54"
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
                    "uid": "Fu5oDnSaSdL11",
                    "created-at": {
                      "date": "30 Oct, 2018",
                      "time": "15:54"
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
                    "uid": "7yPa69I51zG",
                    "created-at": {
                      "date": "30 Oct, 2018",
                      "time": "15:54"
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
                    "uid": "ZpY5OvI0LhItI6B",
                    "created-at": {
                      "date": "30 Oct, 2018",
                      "time": "15:54"
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
                    "uid": "4dO7QsRvHc2a",
                    "created-at": {
                      "date": "30 Oct, 2018",
                      "time": "15:54"
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
                    "uid": "3l50CnMqO9X",
                    "created-at": {
                      "date": "30 Oct, 2018",
                      "time": "15:54"
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
                    "uid": "0mFh25BfCiIc",
                    "created-at": {
                      "date": "30 Oct, 2018",
                      "time": "15:54"
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
                    "uid": "29TxCrLx",
                    "created-at": {
                      "date": "30 Oct, 2018",
                      "time": "15:54"
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
                    "uid": "OuXrDhEc1",
                    "created-at": {
                      "date": "30 Oct, 2018",
                      "time": "15:54"
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
                    "uid": "C5BdMq13O",
                    "created-at": {
                      "date": "30 Oct, 2018",
                      "time": "15:54"
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
                    "uid": "Rd5gT03z",
                    "created-at": {
                      "date": "30 Oct, 2018",
                      "time": "15:54"
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
                    "uid": "D15b55Bv9kV7RnTa",
                    "created-at": {
                      "date": "30 Oct, 2018",
                      "time": "15:54"
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
                    "uid": "5zAkV4YqGbGy2",
                    "created-at": {
                      "date": "30 Oct, 2018",
                      "time": "15:54"
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
                    "uid": "E8GnGrVjJg58",
                    "created-at": {
                      "date": "30 Oct, 2018",
                      "time": "15:54"
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
                    "uid": "Ti4sWbC4FgD",
                    "created-at": {
                      "date": "30 Oct, 2018",
                      "time": "15:54"
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
                    "uid": "538aJl9mQ4",
                    "created-at": {
                      "date": "30 Oct, 2018",
                      "time": "15:54"
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
                    "uid": "T4785rQdFeBh8r",
                    "created-at": {
                      "date": "30 Oct, 2018",
                      "time": "15:54"
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
                    "uid": "CrL050P7RoSeO",
                    "created-at": {
                      "date": "30 Oct, 2018",
                      "time": "15:54"
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
                    "uid": "NqGdMr3qT",
                    "created-at": {
                      "date": "30 Oct, 2018",
                      "time": "15:54"
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
                    "uid": "D53j04O7",
                    "created-at": {
                      "date": "30 Oct, 2018",
                      "time": "15:54"
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
                    "uid": "VlGfS1OdP",
                    "created-at": {
                      "date": "30 Oct, 2018",
                      "time": "15:54"
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
    + id: `47` (number, required)

+ Request Show time entry by id
**GET**&nbsp;&nbsp;`/api/v1/time_entries/47`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo2NiwiZXhwIjoxNTQwOTIyMDU2fQ.EC3fkq4Bi205yDDKNC_Ti7iPhNnD7P2NnsMfkJD6ZZc
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "47",
                "type": "time-entries",
                "attributes": {
                  "date": "2018-10-30",
                  "time": "17:54",
                  "details": "Traditionally, science fairs are a father/son thing. Well, scientifically, traditions are an idiot thing.",
                  "trello-labels": null,
                  "estimated-time": null
                },
                "relationships": {
                  "user": {
                    "data": {
                      "id": "83",
                      "type": "users"
                    }
                  },
                  "project": {
                    "data": {
                      "id": "300",
                      "type": "projects"
                    }
                  }
                }
              }
            }

### Delete a time entry [DELETE /api/v1/time_entries/{id}]

+ Parameters
    + id: `88` (number, required)

+ Request Delete time entry by id
**DELETE**&nbsp;&nbsp;`/api/v1/time_entries/88`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo2NywiZXhwIjoxNTQwOTIyMDU2fQ.k8AiOy7th-iELKEJj0ZMEVoRkPDRONCA0d_1yeN2ZxM
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

+ Response 200

    + Headers

            Content-Type: text/html

### Delete multiple time entries [DELETE /api/v1/time_entries/delete_multiple]


+ Request Delete time_entries by ids
**DELETE**&nbsp;&nbsp;`/api/v1/time_entries/delete_multiple`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo2OCwiZXhwIjoxNTQwOTIyMDU2fQ.jc2P7_PPTe1gVlKRgxiYR1q26hflpDvX3N2DngbqaAE
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            time_entry_ids[]=111&time_entry_ids[]=112&time_entry_ids[]=113&time_entry_ids[]=114&time_entry_ids[]=115&time_entry_ids[]=116&time_entry_ids[]=117&time_entry_ids[]=118&time_entry_ids[]=119&time_entry_ids[]=120&time_entry_ids[]=121&time_entry_ids[]=122&time_entry_ids[]=123&time_entry_ids[]=124&time_entry_ids[]=125&time_entry_ids[]=126&time_entry_ids[]=127&time_entry_ids[]=128&time_entry_ids[]=129&time_entry_ids[]=130&time_entry_ids[]=131&time_entry_ids[]=132&time_entry_ids[]=133&time_entry_ids[]=134&time_entry_ids[]=135&time_entry_ids[]=136&time_entry_ids[]=137&time_entry_ids[]=138&time_entry_ids[]=139&time_entry_ids[]=140&time_entry_ids[]=141&time_entry_ids[]=142&time_entry_ids[]=143&time_entry_ids[]=144&time_entry_ids[]=145

+ Response 204

### Create a time entry [POST /api/v1/time_entries]


+ Request Create time entry
**POST**&nbsp;&nbsp;`/api/v1/time_entries`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo2OSwiZXhwIjoxNTQwOTIyMDU3fQ.sgRhB3U6jC2Ta3x0gpaxZGIT7isPjskVcrQvZYKxBOc
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            time_entry[date]=2018-10-30&time_entry[time]=17%3A54&time_entry[minutes]=54&time_entry[details]=%3Chttps%3A%2F%2Ftrello.com%2Fc%2FhcIRv6W0%2F1496-google-analytics%3E&time_entry[trello_labels][]=Feature&time_entry[trello_labels][]=High+Priority&time_entry[trello_labels][]=5&time_entry[user_id]=217&time_entry[project_id]=434

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "181",
                "type": "time-entries",
                "attributes": {
                  "date": "2018-10-30",
                  "time": "17:54",
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
                    "uid": "WcQf8tZoD1QlQjA",
                    "created-at": {
                      "date": "30 Oct, 2018",
                      "time": "15:54"
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
    + id: `183` (number, required)

+ Request Update time entry
**PUT**&nbsp;&nbsp;`/api/v1/time_entries/183`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo3MCwiZXhwIjoxNTQwOTIyMDU3fQ.1zQlHM3AHA-2RhmFV-ggonQZA7AqZcpd-GduR84-qUU
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            time_entry[details]=THERE+IS+NO+GOD%2C+SUMMER%3B+GOTTA+RIP+THAT+BAND-AID+OFF+NOW+YOU%27LL+THANK+ME+LATER.

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "183",
                "type": "time-entries",
                "attributes": {
                  "date": "2018-10-30",
                  "time": "17:54",
                  "details": "THERE IS NO GOD, SUMMER; GOTTA RIP THAT BAND-AID OFF NOW YOU'LL THANK ME LATER.",
                  "trello-labels": null,
                  "estimated-time": null
                },
                "relationships": {
                  "user": {
                    "data": {
                      "id": "219",
                      "type": "users"
                    }
                  },
                  "project": {
                    "data": {
                      "id": "436",
                      "type": "projects"
                    }
                  }
                }
              },
              "included": [
                {
                  "id": "219",
                  "type": "users",
                  "attributes": {
                    "name": "User_219",
                    "uid": "TxOoT1T27",
                    "created-at": {
                      "date": "30 Oct, 2018",
                      "time": "15:54"
                    },
                    "is-active": false,
                    "role": "back_end"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "685",
                        "type": "teams"
                      }
                    }
                  }
                },
                {
                  "id": "436",
                  "type": "projects",
                  "attributes": {
                    "name": "Project_428",
                    "alias": "alias_435"
                  },
                  "relationships": {
                    "team": {
                      "data": {
                        "id": "686",
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

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo3MSwiZXhwIjoxNTQwOTIyMDU3fQ.kT0_IKcvxUMz-wtCUDCR1JgoHGNiF0y-b8VkfTOVV7k
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
                    "uid": "J0S8InPa1eRnDaR5",
                    "created-at": {
                      "date": "30 Oct, 2018",
                      "time": "15:54"
                    },
                    "is-active": false,
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
                    "uid": "ZrKf4rQaZ61vQ5",
                    "created-at": {
                      "date": "30 Oct, 2018",
                      "time": "15:54"
                    },
                    "is-active": false,
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
                    "uid": "B2MnY23i2dIoK9Ws",
                    "created-at": {
                      "date": "30 Oct, 2018",
                      "time": "15:54"
                    },
                    "is-active": false,
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
                    "uid": "H2WtQ11jX",
                    "created-at": {
                      "date": "30 Oct, 2018",
                      "time": "15:54"
                    },
                    "is-active": false,
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
                    "uid": "4xXcKqCdMhG",
                    "created-at": {
                      "date": "30 Oct, 2018",
                      "time": "15:54"
                    },
                    "is-active": false,
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
                    "uid": "NyBgGmXq",
                    "created-at": {
                      "date": "30 Oct, 2018",
                      "time": "15:54"
                    },
                    "is-active": false,
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
                    "name": "King Jellybean",
                    "description": "Aw, c'mon Rick. That doesn't seem so bad."
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
                    "name": "Birdperson",
                    "description": "That's the difference between you and me, Morty. I never go back to the carpet store."
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
                    "description": "No no, If I wanted to be sober, I wouldn’t have gotten drunk."
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
                    "name": "Rick Sanchez",
                    "description": "Well then get your shit together. Get it all together and put it in a backpack, all your shit, so it's together. ...and if you gotta take it somewhere, take it somewhere ya know? Take it to the shit store and sell it, or put it in a shit museum. I don't care what you do, you just gotta get it together... Get your shit together."
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
                    "name": "Tophat Jones",
                    "description": "Meeseeks are not born into this world fumbling for meaning, Jerry! We are created to serve a single purpose, for which we go to any lengths to fulfill."
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
                    "name": "Stealy",
                    "description": "He's not a hot girl. He can't just bail on his life and set up shop in someone else's."
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
    + id: `262` (number, required)

+ Request Show user by id
**GET**&nbsp;&nbsp;`/api/v1/users/262`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo3MiwiZXhwIjoxNTQwOTIyMDU3fQ.FGdgTob31bbHOqIp0utXIxJvcfrJ2G9uxtNP2-9Jlpw
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "262",
                "type": "users",
                "attributes": {
                  "name": "User_261",
                  "uid": "4e2xPeRiWd9k",
                  "created-at": {
                    "date": "30 Oct, 2018",
                    "time": "15:54"
                  },
                  "is-active": false,
                  "role": "back_end"
                },
                "relationships": {
                  "team": {
                    "data": {
                      "id": "762",
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

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo3MywiZXhwIjoxNTQwOTIyMDU4fQ.uYgSMoBAZfbPk3E_3ZXtJj7PQGSWagXDBljSKaLmP5Y
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

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo3NCwiZXhwIjoxNTQwOTIyMDU4fQ.1iXUiC8EipLnoR7Hh1UPp5g4urltcvuO9ve2dFMtHuY
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

+ Response 204

### Delete multiple users [DELETE /api/v1/users/delete_multiple]


+ Request Delete users by ids
**DELETE**&nbsp;&nbsp;`/api/v1/users/delete_multiple`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo3NSwiZXhwIjoxNTQwOTIyMDU4fQ.850iIAnmOVwJkEOS1zAIZme-RRC1cqYkIzL3xr-lNM4
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            user_ids[]=277&user_ids[]=278&user_ids[]=279&user_ids[]=280&user_ids[]=281

+ Response 204

### Create a user [POST /api/v1/users]


+ Request Create user
**POST**&nbsp;&nbsp;`/api/v1/users`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo3NiwiZXhwIjoxNTQwOTIyMDU4fQ.ENRv0Xl9m03_r9iVC_0WEwh5OApAbfSHxqzzM--mo-A
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            user[name]=User_283&user[is_active]=false&user[uid]=QxGfA8903&user[role]=back_end

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
                  "uid": "QxGfA8903",
                  "created-at": {
                    "date": "30 Oct, 2018",
                    "time": "15:54"
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
    + id: `293` (number, required)

+ Request Update user
**PUT**&nbsp;&nbsp;`/api/v1/users/293`

    + Headers

            Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo3NywiZXhwIjoxNTQwOTIyMDU4fQ.Ej85LprOooThLHsXR1OJFlPrqVZqrpAAS-icHHAfcGU
            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            user[name]=USER_287

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "293",
                "type": "users",
                "attributes": {
                  "name": "USER_287",
                  "uid": "UqQmUzPtJy0",
                  "created-at": {
                    "date": "30 Oct, 2018",
                    "time": "15:54"
                  },
                  "is-active": false,
                  "role": "back_end"
                },
                "relationships": {
                  "team": {
                    "data": {
                      "id": "792",
                      "type": "teams"
                    }
                  }
                }
              }
            }
