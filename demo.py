#!/usr/bin/env python

from elevenlabs import voices

voices = voices()
for i, voice in enumerate(voices):
    print("VOICE %d: " % i)
    for property,value in voice:
        if type(value) == dict:
            print("\t%s: " % property)
            for subproperty,subvalue in sorted(value.items()):
                print("\t\t%s: %s" % (subproperty, subvalue))
        else:
            print("\t%s: %s" % (property, value))
