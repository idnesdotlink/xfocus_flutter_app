import 'package:flutter/material.dart';
import 'package:simple_auth/simple_auth.dart' as simpleAuth;
import 'package:simple_auth_flutter/simple_auth_flutter.dart';
import 'package:xfocus_mobile/components/app_bar/primary_app_bar.dart';

class SimpleAuthScreen extends StatefulWidget {
  SimpleAuthScreen({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked 'final'.

  final String title;

  @override
  _SimpleAuthScreenState createState() => _SimpleAuthScreenState();
}

class _SimpleAuthScreenState extends State<SimpleAuthScreen> {
  static String azureClientId = '';
  static String azureTennant = '';
  final simpleAuth.AzureADApi azureApi = simpleAuth.AzureADApi(
      'azure',
      azureClientId,
      'https://login.microsoftonline.com/$azureTennant/oauth2/authorize',
      'https://login.microsoftonline.com/$azureTennant/oauth2/token',
      'https://management.azure.com/',
      'redirecturl');

  final simpleAuth.AmazonApi amazonApi = simpleAuth.AmazonApi(
      'amazon',
      'amzn1.application-oa2-client.848f75b20206455097cde6b63ca53dec',
      '759db00c1a71fe308d55ce42387c510af8337a5b3aa402a835b77dc552766c3a',
      'http://localhost',
      scopes: ['clouddrive:read', 'clouddrive:write']);

  final simpleAuth.DropboxApi dropboxApi = simpleAuth.DropboxApi(
      'dropbox', '51ekthoysn2mwno', 'sscq5yu19uyt1kg', 'http://localhost');

  final simpleAuth.FacebookApi facebookApi = simpleAuth.FacebookApi(
    'facebook',
    'clientId',
    'clientSecret',
    'redirect',
  );

  final simpleAuth.GithubApi githubApi = simpleAuth.GithubApi(
      'github', 'clientId', 'clientSecret', 'redirect:/',
      scopes: [
        'user',
        'repo',
        'public_repo',
      ]);

  final simpleAuth.GoogleApi googleApi = simpleAuth.GoogleApi(
      'google',
      '992461286651-k3tsbcreniknqptanrugsetiimt0lkvo.apps.googleusercontent.com',
      'redirecturl',
      clientSecret: 'avrYAIxweNZwcHpsBlIzTp04',
      scopes: [
        'https://www.googleapis.com/auth/userinfo.email',
        'https://www.googleapis.com/auth/userinfo.profile'
      ]);

  final simpleAuth.BasicAuthApi basicApi =
      simpleAuth.BasicAuthApi('github-basic', 'https://api.github.com/user');
  final simpleAuth.InstagramApi instagramApi = simpleAuth.InstagramApi(
      'instagram', 'clientId', 'clientSecret', 'redirecturl');

  final simpleAuth.LinkedInApi linkedInApi = simpleAuth.LinkedInApi(
      'linkedin', 'clientId', 'clientSecret', 'redirecturl');

  final simpleAuth.MicrosoftLiveConnectApi microsoftLiveApi =
      simpleAuth.MicrosoftLiveConnectApi(
          'microsoftconnect', 'clientId', 'clientSecret', 'redirecturl');
  @override
  Widget build(BuildContext context) {
    SimpleAuthFlutter.context = context;
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: PrimaryAppBar(primaryAppBarTitle: 'SA'),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text(
              'AzureAD OAuth',
              style: Theme.of(context).textTheme.headline,
            ),
          ),
          ListTile(
            leading: Icon(Icons.launch),
            title: Text('Login'),
            onTap: () {
              login(azureApi);
            },
          ),
          ListTile(
            leading: Icon(Icons.delete),
            title: Text('Logout'),
            onTap: () {
              logout(azureApi);
            },
          ),
          ListTile(
            title: Text(
              'Google OAuth',
              style: Theme.of(context).textTheme.headline,
            ),
          ),
          ListTile(
            leading: Icon(Icons.launch),
            title: Text('Login'),
            onTap: () async {
              try {
                var user = await googleApi.getUserProfile();
                showMessage('${user.name} logged in');
              } catch (e) {
                showError(e);
              }
            },
          ),
          ListTile(
            leading: Icon(Icons.delete),
            title: Text('Logout'),
            onTap: () {
              logout(githubApi);
            },
          ),
          ListTile(
            title: Text(
              'Youtube',
              style: Theme.of(context).textTheme.headline,
            ),
          ),
          ListTile(
            leading: Icon(Icons.delete),
            title: Text('Logout'),
            onTap: () {
              logout(githubApi);
            },
          ),
          ListTile(
            title: Text(
              'Amazon OAuth',
              style: Theme.of(context).textTheme.headline,
            ),
          ),
          ListTile(
            leading: Icon(Icons.launch),
            title: Text('Login'),
            onTap: () {
              login(amazonApi);
            },
          ),
          ListTile(
            leading: Icon(Icons.delete),
            title: Text('Logout'),
            onTap: () {
              logout(amazonApi);
            },
          ),
          ListTile(
            title: Text(
              'Dropbox OAuth',
              style: Theme.of(context).textTheme.headline,
            ),
          ),
          ListTile(
            leading: Icon(Icons.launch),
            title: Text('Login'),
            onTap: () {
              login(dropboxApi);
            },
          ),
          ListTile(
            leading: Icon(Icons.delete),
            title: Text('Logout'),
            onTap: () {
              logout(dropboxApi);
            },
          ),
          ListTile(
            title: Text(
              'Facebook OAuth',
              style: Theme.of(context).textTheme.headline,
            ),
          ),
          ListTile(
            leading: Icon(Icons.launch),
            title: Text('Login'),
            onTap: () {
              login(facebookApi);
            },
          ),
          ListTile(
            leading: Icon(Icons.delete),
            title: Text('Logout'),
            onTap: () {
              logout(facebookApi);
            },
          ),
          ListTile(
            title: Text(
              'Github OAuth',
              style: Theme.of(context).textTheme.headline,
            ),
          ),
          ListTile(
            leading: Icon(Icons.launch),
            title: Text('Login'),
            onTap: () {
              login(githubApi);
            },
          ),
          ListTile(
            leading: Icon(Icons.delete),
            title: Text('Logout'),
            onTap: () {
              logout(githubApi);
            },
          ),
          ListTile(
            title: Text(
              'Github BasicAuth',
              style: Theme.of(context).textTheme.headline,
            ),
          ),
          ListTile(
            leading: Icon(Icons.launch),
            title: Text('Login'),
            onTap: () async {
              try {
                var success = await basicApi.authenticate();
                showMessage('Logged in success: $success');
              } catch (e) {
                showError(e);
              }
            },
          ),
          ListTile(
            leading: Icon(Icons.delete),
            title: Text('Logout'),
            onTap: () async {
              await basicApi.logOut();
              showMessage('Logged out');
            },
          ),
          ListTile(
            title: Text(
              'Instagram OAuth',
              style: Theme.of(context).textTheme.headline,
            ),
          ),
          ListTile(
            leading: Icon(Icons.launch),
            title: Text('Login'),
            onTap: () {
              login(instagramApi);
            },
          ),
          ListTile(
            leading: Icon(Icons.delete),
            title: Text('Logout'),
            onTap: () {
              logout(instagramApi);
            },
          ),
          ListTile(
            title: Text(
              'LinkedIn OAuth',
              style: Theme.of(context).textTheme.headline,
            ),
          ),
          ListTile(
            leading: Icon(Icons.launch),
            title: Text('Login'),
            onTap: () {
              login(linkedInApi);
            },
          ),
          ListTile(
            leading: Icon(Icons.delete),
            title: Text('Logout'),
            onTap: () {
              logout(linkedInApi);
            },
          ),
          ListTile(
            title: Text(
              'Microsoft Live OAuth',
              style: Theme.of(context).textTheme.headline,
            ),
          ),
          ListTile(
            leading: Icon(Icons.launch),
            title: Text('Login'),
            onTap: () {
              login(microsoftLiveApi);
            },
          ),
          ListTile(
            leading: Icon(Icons.delete),
            title: Text('Logout'),
            onTap: () {
              logout(microsoftLiveApi);
            },
          ),
        ],
      ),
    );
  }

  void showError(dynamic ex) {
    showMessage(ex.toString());
  }

  void showMessage(String text) {
    var alert = AlertDialog(content: Text(text), actions: <Widget>[
      FlatButton(
          child: const Text('Ok'),
          onPressed: () {
            Navigator.pop(context);
          })
    ]);
    showDialog(context: context, builder: (BuildContext context) => alert);
  }

  void login(simpleAuth.AuthenticatedApi api) async {
    try {
      var success = await api.authenticate();
      showMessage('Logged in success: $success');
    } catch (e) {
      showError(e);
    }
  }

  void logout(simpleAuth.AuthenticatedApi api) async {
    await api.logOut();
    showMessage('Logged out');
  }
}
