# GAMIFICATION

_This project aims to retain customers and stores through a loyalty system._

## Required versions

- Ruby _3.0.0_
- Rails _6.1.3_
- Postgres _13.2.1_
- Node _14.0.0_

## What is inside?

This project uses lot of stuff as:

- [Haml](https://github.com/haml/haml)
- [Devise](https://github.com/heartcombo/devise)
- [RSpec](https://github.com/rspec/rspec-rails)
- [Prettier](https://github.com/prettier/plugin-ruby)

## Getting Started

First, install the project and dependences:

- git clone git@github.com:vczb/gamification.git
- cd gamification
- bundle install
- yarn install
- add or database configurations on config/database.yml
- rails db:create
- rails db:migrate

## Commands

| cmd                  | description                      |
| -------------------- | -------------------------------- |
| rails s              | Run the app on localhost:3000    |
| rails c              | Open app console                 |
| rspec                | Run all tests                    |
| yarn prettier:format | Format all `rb` and `haml` files |
| yarn prettier:check  | Check prettier format            |

## Recommended extensions for VSCode

- [Prettier](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)
- [EditorConfig](https://marketplace.visualstudio.com/items?itemName=EditorConfig.EditorConfig)

_config your settings.json_

```
{
  "editor.defaultFormatter": "esbenp.prettier-vscode",
  "editor.formatOnSave": true
}
```

## Contributing

Thank you for your interest in contributing to the project, see the [guide](./CONTRIBUTING) for more information

## Licence

This project is licensed under the [MIT](./LICENSE) License.
