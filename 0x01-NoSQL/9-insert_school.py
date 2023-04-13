#!/usr/bin/env python3
"""task 9"""

import pymongo


def insert_school(mongo_collection, **kwargs):
    """inserts a new document in a collection based on kwargs"""
    school = {}
    for key, val in kwargs.items:
        school[key] = val
    return mongo_collection.insert_one(school).inserted_id
