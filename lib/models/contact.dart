import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Contact {
  String title;
  String value;
  IconData icon;
  String? url;
  Contact({
    required this.title,
    required this.value,
    required this.icon,
    this.url,
  });
}

List<Contact> myContact = [
  Contact(
    title: 'bornday',
    value: 'January 9, 1998',
    icon: FontAwesomeIcons.birthdayCake,
  ),
  Contact(
    title: 'instagram',
    value: 'fatihseidaa',
    icon: FontAwesomeIcons.instagram,
    url: 'https://www.instagram.com/fatihseidaa',
  ),
  Contact(
    title: 'whatsapp',
    value: '082118567300',
    icon: FontAwesomeIcons.whatsapp,
  ),
  Contact(
    title: 'linkedin',
    value: 'fatihseidaa',
    icon: FontAwesomeIcons.linkedin,
    url: 'https://www.linkedin.com/in/fatihseidaa/',
  ),
  Contact(
    title: 'email',
    value: 'fatihseidaaaaa@gmail.com',
    icon: FontAwesomeIcons.envelope,
    url:
        'https://mail.google.com/mail/?view=cm&fs=1&to=fatihseidaaaaa@gmail.com',
  ),
  Contact(
    title: 'github',
    value: 'FatihSeida',
    icon: FontAwesomeIcons.github,
    url: 'https://github.com/FatihSeida',
  ),
  Contact(
    title: 'address',
    value: 'Jl. Desa Cipadung RT.02/08, No.40/05 Cibiru, Bandung',
    icon: FontAwesomeIcons.addressCard,
  )
];
