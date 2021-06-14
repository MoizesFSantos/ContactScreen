import 'package:flutter/material.dart';

class ContactForm extends StatefulWidget {
  @override
  _ContactFormState createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ExpansionTile(
          leading: Icon(Icons.person),
          title: Text('Dados Pessoais'),
          children: [
            ListView(
              children: [
                TextFormField(
              decoration:
                  InputDecoration(icon: Icon(Icons.person), hintText: 'Nome'),
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration:
                  InputDecoration(icon: Icon(Icons.email), hintText: 'Email'),
            ),
            TextButton(onPressed: () {}, child: Text('Adicionar a um grupo'))
              ],
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        ExpansionTile(
          leading: Icon(Icons.location_on),
          title: Text('Endereço'),
          children: [
            TextFormField(
              keyboardType: TextInputType.number,
              decoration:
                  InputDecoration(icon: Icon(Icons.map), hintText: 'CEP'),
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  icon: Icon(Icons.location_city_outlined), hintText: 'Cidade'),
            ),
            TextButton(onPressed: () {}, child: Text('Adicionar mais locais'))
          ],
        ),
        SizedBox(
          height: 10,
        ),
        ExpansionTile(
          leading: Icon(Icons.call_outlined),
          title: Text('Contatos'),
          children: [
            TextFormField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                  icon: Icon(Icons.phone), hintText: 'telefone fixo'),
            ),
            TextFormField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                  icon: Icon(Icons.phone_android), hintText: 'celular'),
            ),
            TextButton(onPressed: () {}, child: Text('Adicionar mais contatos'))
          ],
        ),
      ],
    );
  }
}
