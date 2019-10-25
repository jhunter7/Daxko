#!/usr/bin/python
# -*- coding: utf-8 -*-

import MySQLdb as mdb

con = mdb.connect('localhost', 'root', 'mot!vat3','assets')

with con: 

    cur = con.cursor()
    cur.execute("SELECT * FROM servers")

    rows = cur.fetchall()

    for row in rows:
        print row
