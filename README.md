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
* Logging into various services:
  * 1Password
  * Googgle
  * Zulip
  * etc.
* Remapping caps-lock to control
  * Done using gnome-tweaks

