# BrowserWarrior

Are you a warrior? Are you brave enough to reject your non-modern browser users?

It is time to say YES.

**BrowserWarrior** makes this super easy with one line of code.

**Note**: Only Ruby on Rails 5.x is supported at this time.

**Note**: Ruby on Rails 6.x is supported as well.

```ruby
# in your Gemfile
gem 'browser_warrior', '~> 0.14.0'
```

And then:
```bash
$ bundle install
```

That's it.

All non-modern browser users will be redirected to a page that suggests they should upgrade their browsers.

Upgrading browser screenshot (en)
![screenshot](https://github.com/dao42/browser_warrior/raw/master/img/browser-en.jpg)

Upgrading browser screenshot (zh-CN)
![screenshot](https://github.com/dao42/browser_warrior/raw/master/img/browser.png)

## Configuration

**Question**: Can I add more unsupported browsers?

Very easy. Run:

```bash
$ rails g browser_warrior:install
```

It will generate `browser_warrior.rb` in `config/initializers/`.

There is a `browser` object that you can easily customize.

See more: <https://github.com/fnando/browser#usage>

**Question**: Can I customize the suggested browser page?

Sure. Run:

```bash
$ rails g browser_warrior:views
```

It will generate `view` and `css` files for you that can be edited.

Nice and easy.

## i18n

`BrowserWarrior` will render the correct page based on your i18n locale config.
It currently supports `en` and `zh-CN`, and you can add more locale pages easily.

## Advice

I suggest adding the code below to your base layout( e.g. `application.html.erb` ):

```html
// app/layouts/application.html.erb
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="renderer" content="webkit" />
```


## Roadmap

- [x] Release 0.11.0, support Ruby on Rails 6.x
- [x] Release 0.1.0, one line code to support rejecting old browser page
- [x] I18n support ( 0.3.0 )

## Contributing

* [windy](https://github.com/windy)
* [azah](https://github.com/azah) (Fixing EN grammar)

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
