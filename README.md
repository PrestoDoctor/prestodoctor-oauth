### Log in with PrestoDoctor ###

![Log in with PrestoDoctor](https://raw.githubusercontent.com/PrestoDoctor/prestodoctor-oauth/blob/master/app/assets/images/prestodoctor-login.png)

This is a sample application showing how to integrate with PrestoDoctor OAuth.

This example uses a custom omniauth strategy, but you are free to use whichever OAuth2 implementation you wish.

The relevant files are:

- `app/models/user.rb`
- `lib/omniauth/strategies/prestodoctor.rb`
- `config/initializers/devise.rb` (lines 1 & 244)
- `app/controllers/users/omniauth/callbacks_controller.rb`

In the callbacks controller, you see we call `update_presto_credentials` with our oauth_data.

Here is the format of all the information contained in oauth_data (sensitive data blurred to protect the innocent):

<img src="https://dl.dropboxusercontent.com/s/2fra8us2hk2xuch/2015-08-11%20at%202.27%20AM%202x.png" width="700">

All dates/times are unix timestamps.
