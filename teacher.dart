class Teacher extends Person {
  int? salary;
  Teacher({String? name, String? address, this.salary})
      : super(name!, address!);
  void setSalary(salary) => this.salary = salary;
  int getSalary() => this.salary!;
}
