class Animal(object):
    pass
#    print name

class Dog(Animal):
    def __init__(self,name):
        self.name = name
        print self.name

class Cat(Animal):
    def __init__(self,name):
        self.name = name

class Person(object):
    def __init__(self,name):
        self.name = name
        self.pet = None

class Employee(Person):
    def __init__(self,name,salary):
        super(Employee,self).__init__(name)
        self.salary = salary
        print salary,self.name,name

class Fish(object):
    pass
class Halibut(Fish):
    pass

class Salmon(Fish):
    pass

rover = Dog("Rover")
satan = Cat("Satan")
mary = Person("Mary")
mary.pet = satan
frank = Employee("Frank",12000)
frank.pet = rover
flipper = Fish()
crouse = Salmon()
harry = Halibut()
