# BrowserWarrior

Are you a warrior? Do you dare to reject your ie 6/7/8 user?

Yes, at now we should say YES.

**BrowserWarrior** make the action super easy.

Make your Ruby on Rails 5 Application rejecting ie6/7/8 with only one line code. ( Notice: only support Rails 5 now, we will do more work to support 4 & 3 )

```ruby
# in your Gemfile
gem 'browser_warrior'
```

And then:
```bash
$ bundle
```

No need more code!!

Then all of ie 6/7/8 user will be rejected to a page that suggests upgrading their browsers.

Upgrading browser screenshot
![screenshot](https://github.com/80percent/browser_warrior/raw/master/img/browser.png)

## More configuration

**QA**: Can I add more unsupported browsers?

Very easy. Execute:

```bash
$ rails g browser_warrior:install
```

It will generate `browser_warrior.rb` in `config/initializers/`.

Edit it.

There is a `browser` object that you can easily custom your requirement.

See more: <https://github.com/fnando/browser#usage>

**QA**: Can I custom the suggested browser page?

Sure. Execute:

```bash
$ rails g browser_warrior:views
```

It will generate `view` and `css` files for you.
Then edit them.

Easy, is it?

## i18n

`BrowserWarrior` will render the correct page based on your i18n locale config.

Now it supports `en` and `zh-CN`.

You can easily add more locale pages.

## Extra Good Advise

I advise adding the code below to your base layout( e.g. `application.html.erb` ):

```html
// app/layouts/application.html.erb
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="renderer" content="webkit" />
```


## Roadmap

- [x] Release 0.1.0, one line code to support rejecting old browser page
- [x] I18n support ( 0.3.0 )
- [ ] Extend support rails 4 and rails 3.
- [ ] Design a mechanism to support more than one themes.

## Contributing
[windy](https://github.com/windy)

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
