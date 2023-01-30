import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../core/enums/enums.dart';
import '../../../core/managers/color_manager.dart';
import '../../../core/managers/route_manager.dart';
import '../../../core/managers/size_manager.dart';
import '../../../core/mixins/validator_mixin.dart';
import '../../../core/utils/extensions.dart';
import '../../../core/utils/utils.dart';
import '../blocs/auth_bloc/auth_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with ValidatorMixin {
  late GlobalKey<FormState> formKey;
  late TextEditingController usernameController;
  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    formKey = GlobalKey<FormState>();
    usernameController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    formKey.currentState?.dispose();
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listenWhen: (previous, current) {
        return previous.loginState != current.loginState;
      },
      listener: (context, state) {
        if (state.loginState == RequestState.error) {
          showToast(
            content: state.loginError,
            status: NotificationStatus.error,
            length: Toast.LENGTH_LONG,
          );
        } else if (state.loginState == RequestState.success) {
          Navigator.of(context).pushReplacementNamed(Routes.dashboard);
        }
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.dark,
          ),
        ),
        body: Center(
          child: SingleChildScrollView(
              child: Padding(
            padding: const EdgeInsets.all(
              AppPadding.screenBodyPadding,
            ),
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Login',
                    style: Theme.of(context).textTheme.headline6?.copyWith(
                          color: ColorManager.primary,
                        ),
                  ),
                  SizedBox(
                    height: context.screenHeight() * 0.03,
                  ),
                  TextFormField(
                    controller: usernameController,
                    decoration: const InputDecoration(
                      label: Text('Username'),
                    ),
                    validator: (value) {
                      return isFieldValid(value, 'Username');
                    },
                  ),
                  SizedBox(
                    height: context.screenHeight() * 0.03,
                  ),
                  BlocBuilder<AuthBloc, AuthState>(
                    buildWhen: (previous, current) {
                      return previous.loginPasswordVisible !=
                          current.loginPasswordVisible;
                    },
                    builder: (context, state) {
                      return TextFormField(
                        controller: passwordController,
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: !state.loginPasswordVisible,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            onPressed: () {
                              context
                                  .read<AuthBloc>()
                                  .add(LoginPasswordToggledEvent());
                            },
                            icon: Icon(
                              state.loginPasswordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                          ),
                          label: const Text('Password'),
                        ),
                        validator: isPasswordValid,
                      );
                    },
                  ),
                  SizedBox(
                    height: context.screenHeight() * 0.03,
                  ),
                  SizedBox(
                    width: context.screenWidth() * 0.25,
                    child: BlocBuilder<AuthBloc, AuthState>(
                      buildWhen: (previous, current) {
                        return previous.loginState != current.loginState;
                      },
                      builder: (context, state) {
                        if (state.loginState == RequestState.loading) {
                          return const CircularProgressIndicator();
                        }
                        return ElevatedButton(
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              context.unFocus();
                              context.read<AuthBloc>().add(
                                    LoginEvent(
                                      usernameController.text,
                                      passwordController.text,
                                    ),
                                  );
                            }
                          },
                          child: const Text(
                            'Login',
                            style: TextStyle(
                              color: ColorManager.white,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacementNamed(Routes.register);
                    },
                    child: const Text(
                      'Don\'t have an account ? register',
                    ),
                  ),
                ],
              ),
            ),
          )),
        ),
      ),
    );
  }
}
