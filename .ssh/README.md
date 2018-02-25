# SSH

To create an SSH public/private pair:

```
ssh-keygen
```

To save SSH identity in OSX Keychain run
```
ssh-add -K ~/.ssh/[your-private-key]
```
then created config file for MacOS Sierra onwards
(Sourced from [https://apple.stackexchange.com/a/250572/260292](https://apple.stackexchange.com/a/250572/260292))

To ssh into a terminal:

```
ssh user@ipaddress
```

To ssh into a terminal with a specific private key

```
ssh -i ~/path/to/file user@ipaddress
```