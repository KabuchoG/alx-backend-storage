#!/usr/bin/env python3
"""Task 11"""


def schools_by_topic(mongo_collection, topic):
    """function that returns the list of school having a specific topic
    """
    res = mongo_collection.find({'topic': topic})
    return [doc for doc in res]