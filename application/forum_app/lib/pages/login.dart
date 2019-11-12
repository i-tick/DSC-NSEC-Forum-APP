import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

// * External packages import
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// * pages import
import 'package:forum_app/pages/signup.dart';

// * widgets import
import 'package:forum_app/widgets/app_textfield.dart';
import 'package:forum_app/widgets/login_intro.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        title: Text('Login'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.08),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              LoginIntro(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.15,
              ),
              AppTextfield(
                labelText: 'Username or email',
              ),
              AppTextfield(labelText: 'Password', suffixButtonText: 'Forgot?'),
              FlatButton.icon(
                icon: Icon(Icons.exit_to_app),
                label: Text('CONTINUE'),
                onPressed: () {},
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: Theme.of(context).textTheme.body1,
                  children: <TextSpan>[
                    TextSpan(text: 'Don\'t have an account? '),
                    TextSpan(
                      text: 'Sign Up.',
                      style: Theme.of(context).textTheme.subhead.copyWith(
                            color: Colors.blue,
                          ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.pop(context);
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => SignUpPage()));
                        },
                    )
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              FlatButton.icon(
                icon: Icon(FontAwesomeIcons.google),
                label: Text('LOG IN WITH GOOGLE'),
                onPressed: () {},
              ),
              FlatButton.icon(
                icon: Icon(FontAwesomeIcons.github),
                label: Text('LOG IN WITH GITHUB'),
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
