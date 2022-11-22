# logstash-output-json-iothub
An output logstash plugin to send json messages to Azure IoT Hub

This plugin provide sending messages to [Microsoft Azure IoTHub](https://azure.microsoft.com/en-us/services/iot-hub/).


# Usage
## Install
In your logstash home directory,

```
bin/logstash-plugin install logstash-output-json-iothub
```

More details for plugins, please see  [here](https://www.elastic.co/guide/en/logstash/current/working-with-plugins.html).

## Configuration
Please see below example.

```ruby
output {
  json-iothub {
    connection_string => "{set your iot hub connection string}"
  }
}
```

+ `connection_string` : your device connection string.

About connection string, please see
[here](https://docs.microsoft.com/en-us/azure/iot-hub/iot-hub-java-java-getstarted)

# For Developers



## Developing

### 1. Plugin Developement and Testing

#### Code
- To get started, you'll need JRuby with the Bundler gem installed.

- Install dependencies
```sh
bundle install
rake install_jars
```

#### Test

- Update your dependencies
```sh
bundle install
rake install_jars
```

- Run tests
```sh
bundle exec rspec
```

#### Publish
Publish plugin as gem to [RubyGems.org](https://rubygems.org/).
```
$ bundle exec rake publish_gem
```


### 2. Running your unpublished Plugin in Logstash

#### 2.1 Run in a local Logstash clone

- Edit Logstash `Gemfile` and add the local plugin path, for example:
```ruby
gem "logstash-output-json-iothub", :path => "/your/local/logstash-output-json-iothub"
```
- Install plugin
```sh
bin/logstash-plugin install --no-verify
```
- Run Logstash with your plugin
```sh
bin/logstash -e 'output {json-iothub {connection_string => "<conn_str>"}}'
```
At this point any modifications to the plugin code will be applied to this local Logstash setup. After modifying the plugin, simply rerun Logstash.

#### 2.2 Run in an installed Logstash

You can use the same **2.1** method to run your plugin in an installed Logstash by editing its `Gemfile` and pointing the `:path` to your local plugin development directory or you can build the gem and install it using:

- Build your plugin gem
```sh
gem build logstash-output-json-iothub.gemspec
```
- Install the plugin from the Logstash home
```sh
bin/logstash-plugin install /your/local/plugin/logstash-output-json-iothub.gem
```
- Start Logstash and proceed to test the plugin

## Contributing
Please post to [Github - tac0x2a/logstash-output-json-iothub](https://github.com/tac0x2a/logstash-output-json-iothub)

All contributions are welcome: ideas, patches, documentation, bug reports, complaints, and even something you drew up on a napkin.

Programming is not a required skill. Whatever you've seen about open source and maintainers or community members  saying "send patches or die" - you will not see that here.

It is more important to the community that you are able to contribute.




It is fully free and fully open source. The license is Apache 2.0, meaning you are pretty much free to use it however you want in whatever way.

# About Logstash
## Documentation

Logstash provides infrastructure to automatically generate documentation for this plugin. We use the asciidoc format to write documentation so any comments in the source code will be first converted into asciidoc and then into html. All plugin documentation are placed under one [central location](http://www.elastic.co/guide/en/logstash/current/).

- For formatting code or config example, you can use the asciidoc `[source,ruby]` directive
- For more asciidoc formatting tips, see the excellent reference here https://github.com/elastic/docs#asciidoc-guide

## Need Help?

Need help? Try #logstash on freenode IRC or the https://discuss.elastic.co/c/logstash discussion forum.

