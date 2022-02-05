class Person {
  String name;
  String address;
  Person(this.name, this.address);

  void setName(name) => this.name = name;
  void setAddress(address) => this.address = address;
  String getName() => this.name;
  String getAddress() => this.address;
}

class Student extends Person {
  int? grade;
  Student({String? name, String? address, this.grade}) : super(name!, address!);

  void setGrade(grade) => this.grade = grade;
  int getGrade() => this.grade!;
}

class Teacher extends Person {
  int? salary;
  Teacher({String? name, String? address, this.salary})
      : super(name!, address!);
  void setSalary(salary) => this.salary = salary;
  int getSalary() => this.salary!;
}
