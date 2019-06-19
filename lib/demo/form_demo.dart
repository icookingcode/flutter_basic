import 'package:flutter/material.dart';

class FormDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form 表单"),
      ),
      body: SingleChildScrollView(
        child: Theme(
          data: ThemeData(
            primaryColor: Colors.black54,
          ),
          child: ThemeDemo(),
        ),
      ),
    );
  }
}

class TextFieldDemo extends StatefulWidget {
  @override
  _TextFieldDemoState createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  final textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
//    textEditingController.text = 'none';//设置初始值
    textEditingController.addListener(() {
      debugPrint('input:${textEditingController.text}');
    });
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        icon: Icon(Icons.subject),
        labelText: 'username',
        hintText: '请输入用户名',
        border: InputBorder.none,
        //底部下划线
//      border: OutlineInputBorder(),//四周边框
//          filled: true,
//          fillColor: Colors.lightBlue,
      ),
//      onChanged: (value){
//
//      },
      onSubmitted: (value) {
        debugPrint('onSubmitted:$value');
      },
      controller: textEditingController,
    );
  }
}

class ThemeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[RegisterForm()],
      ),
    );
  }
}

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final registerFromKey = GlobalKey<FormState>();
  String username, password;
  bool autoValidate = false;

  void _submitRegisterForm() {
    registerFromKey.currentState.save(); //执行TextFiled onSaved()
    if(registerFromKey.currentState.validate()){//验证数据 执行TextField validator:
      debugPrint('Username = $username | Password = $password');
      Scaffold.of(context).showSnackBar(SnackBar(content: Text('logining...')));
    }else{
      setState(() {
        autoValidate = true;
      });
    }
  }

  String validatorUsername(String value) {
    if (value.isEmpty) {
      return 'Username is required';
    }
    return null;
  }

  String validatorPassword(String value) {
    if (value.isEmpty) {
      return 'Password is required';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: registerFromKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Username',
              helperText: '',
            ),
            onSaved: (value) {
              username = value;
            },
            validator: validatorUsername,
            autovalidate: autoValidate,
          ),
          TextFormField(
            obscureText: true, //隐藏内容
            decoration: InputDecoration(
              labelText: 'Password',
              helperText: '',
            ),
            onSaved: (value) {
              password = value;
            },
            validator: validatorPassword,
            autovalidate: autoValidate,
          ),
          SizedBox(
            height: 32.0,
          ),
          Container(
            width: double.infinity,
            child: RaisedButton(
              color: Colors.lightBlue,
              child: Text(
                '登录',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: _submitRegisterForm,
            ),
          )
        ],
      ),
    );
  }
}
