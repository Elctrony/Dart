import 'person.dart';
import 'student.dart';
import 'teacher.dart';

List<Map> studentsMap = [
  {
    'name': 'Ahmed',
    'address': 'October',
    'grade': 85,
  },
  {
    'name': 'Amr',
    'address': 'Zayed',
    'grade': 96,
  },
  {
    'name': 'Hossam',
    'address': 'Cairo',
    'grade': 73,
  },
  {
    'name': 'Ahmed',
    'address': 'Gize',
    'grade': 87,
  },
  {
    'name': 'Ahmed',
    'address': 'El haram',
    'grade': 92,
  }
];
List<Map> teacnersMap = [
  {
    'name': 'Ahmed',
    'address': 'October',
    'salary': 8500,
  },
  {
    'name': 'Mohamed',
    'address': 'Zayed',
    'salary': 9600,
  },
  {
    'name': 'Tamer',
    'address': 'Cairo',
    'salary': 7300,
  },
  {
    'name': 'Kamal',
    'address': 'Gize',
    'salary': 8700,
  },
  {
    'name': 'Mariam',
    'address': 'El haram',
    'salary': 9200,
  }
];

void main() {
  List<Student> students = [];
  List<Teacher> teachers = [];

  for (var item in studentsMap) {
    students.add(Student(
        name: item['name'], address: item['address'], grade: item['grade']));
  }

  for (var item in teacnersMap) {
    teachers.add(Teacher(
        name: item['name'], address: item['address'], salary: item['salary']));
  }

  print('Students:\n');

  for (var student in students) {
    print(
        'Name: ${student.name}, Address: ${student.address}, Grade: ${student.grade},  Status: ${(student.grade! < 50) ? 'Failed' : 'Successed'}');
    if (student.grade! < 50)
      print('Failed');
    else
      print('Successed');
    print('\n');
  }

  print('---------------------------------');

  print('Teachers:\n');

  for (var teacher in teachers) {
    print(
        'Name: ${teacher.name}, Address: ${teacher.address}, Salary: ${teacher.salary}');
  }

  print('---------------------------------');
}
