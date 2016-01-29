#!/usr/local/bin/python3.4

class Animal(object):

        def __init__(self):
                print("Animal Created")

        def whoAmI(self):
                print("Animal")

        def eat(self):
                print("Eating")

class Dog(Animal):
        def __init__(self):
                Animal.__init__(self)
                print("Dog created")

        def whoAmI(self):
                print("Dog")

        def bark(self):
                print("woof !")

d = Dog()

print('---')

d.whoAmI()

print('---')

d.eat()
d.bark()


