# Administrate::Field::Tinymce

A plugin for adding [TinyMCE] support in [Administrate].

## Usage

Add [tinymce-rails] and administrate-field-tinymce to your `Gemfile`:

```ruby
gem "tinymce-rails"
gem "administrate-field-tinymce", "~> 0.0.1"
```

Run:

```bash
$ bundle install
```

Add require javascripts to your manifest.js

```
//= link administrate-field-tinymce/application.js
```
	
	
Add to your `FooDashboard`:
```ruby
ATTRIBUTE_TYPES = [
  bars: Field::Tinymce,
]
```

Or with options:
```ruby
ATTRIBUTE_TYPES = [
  bars: Field::Tinymce.with_options(rows: 100, columns: 100),
]
```

[TinyMce]: https://github.com/tinymce/tinymce
[Administrate]: https://github.com/thoughtbot/administrate
[tinymce-rails]: https://github.com/spohlenz/tinymce-rails