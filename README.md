### PrestoDoctor OAuth Example ###

Feel free to use these button images:

<img src="https://raw.githubusercontent.com/PrestoDoctor/prestodoctor-oauth/master/app/assets/images/prestodoctor-login.png" width="226"> (normal button)

<img src="https://raw.githubusercontent.com/PrestoDoctor/prestodoctor-oauth/master/app/assets/images/prestodoctor-login@2x.png" width="226"> (@2x retina button)

This is a sample application showing how to integrate with PrestoDoctor OAuth.

This example uses a custom omniauth strategy, but you are free to use whichever OAuth2 implementation you wish.

The relevant files are:

- `app/models/user.rb`
- `lib/omniauth/strategies/prestodoctor.rb`
- `config/initializers/devise.rb` (lines 1 & 244)
- `app/controllers/users/omniauth/callbacks_controller.rb`

In the callbacks controller, you see we call `update_presto_credentials` with our oauth_data.

Here is the format of all the information contained in oauth_data (sensitive data blurred to protect the innocent):

<img src="https://raw.githubusercontent.com/PrestoDoctor/prestodoctor-oauth/master/screenshot.png" width="700">

All dates/times are unix timestamps.
