# Dotfiles

My personal desktop configuration.

## Run

My configuration is done through ansible.

To install ansible run:

```bash
./install.sh
```

Then run:

```bash
ansible-playbook desktop.yml --ask-become-pass
```

## Manual Configuration

After running ansible there are still some things that need manual configuration:

* Ensuring that the date/time format is correct (usually set to U.S. instead of international)
* Remapping caps-lock to control
  * Done using gnome-tweaks
* Logging into various services:
  * 1Password
  * Googgle
  * Zulip
  * etc.
* Configuring vscodium:
  * install various extensions
  * rust-analyzer: set the target-dir for `cargo check` to `$HOME/.rust-analyzer
  * set format on save to true
