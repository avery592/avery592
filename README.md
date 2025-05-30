+++
+++

<img src="profile.webp" width=50% alt="A person sits in a dimly lit room facing away. In front of them are four computer monitors displaying code. Beyond that a window opens up to show a cyberpunk city skyline at night.">

Your friendly neighborhood cypherpunk anarchist software developer 🏴. I like Rust 🦀 and Nix ❄️. Use Tor 🧅, use SimpleX 🗨, use Monero 🪙.

# 🪪 Cryptographic Identity
You can verify you're talking to me or that I wrote something (like this
document!) with SSH signatures. The following SSH fingerprint is mine, and
all my git commits are signed with it:
```
SHA256:avery1FYMMQQsL00uBtkTn1yLej4kZ+M7cdttNchWeQ
```
And here is the corresponding public key file:
```
ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIC/emPms+RPqHCckMTkE7pemmV4MW3eMBMHsRwZ/pDUw
```

## ✒️ Signatures
To verify something was signed by me, add the following line to `~/.ssh/allowed_signers`:
```
avery@avery.st ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIC/emPms+RPqHCckMTkE7pemmV4MW3eMBMHsRwZ/pDUw
```

### 🛠️ Git Signatures
Git will now verify commit signatures, for example in my `mrr` project:
```
$ git log --show-signature
commit 215a002a33a4f1beb4a266d09231e66d1bb774f8 (HEAD -> main, origin/main)
Good "git" signature for avery@avery.st with ED25519 key SHA256:avery1FYMMQQsL00uBtkTn1yLej4kZ+M7cdttNchWeQ
Author: Avery <avery@avery.st>
Date:   Sun Apr 20 17:37:14 2025 -0500

    Implement vanity SSH key generator
```

### 📄 File/Message Signatures
If I send you a file `message` with a corresponding signature file
`message.sig`, you can verify it as follows:
```
$ ssh-keygen -Y verify -f ~/.ssh/authorized_signers -I avery@avery.st -n file -s file.md.sig < file.md
Good "file" signature for avery@avery.st with ED25519 key SHA256:avery1FYMMQQsL00uBtkTn1yLej4kZ+M7cdttNchWeQ
```

More information about SSH signatures for arbitrary files can be found
[here][0].

## 🗝️ Encryption
### 🗨 Private Messages
If you need to reach out to me privately, please contact me on [SimpleX][1]
for secure, end-to-end encrypted messaging.

<img src="simplex-address.webp" width=25% alt="My SimpleX address as a QR code">

### ✉️ Email
If you must contact me some other way, like over email, you can also encrypt a
message to my SSH key using a tool like [rage][2]. If you put my public key in
a file called `avery.pub` with the following contents:
```
ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIC/emPms+RPqHCckMTkE7pemmV4MW3eMBMHsRwZ/pDUw
```

Then the following command given a file `message` encrypts the contents to a
file called `message.age` that only my private SSH key can decrypt:
```
$ rage -R avery.pub message > message.age
```

Attach `message.age` in your email to me and leave the body of your email and
the subject line empty to minimize metadata.

## ❓ Why not PGP?
I've chosen to use SSH over PGP because it is widely considered secure by
cryptographers [unlike PGP][3], and has good tools for signatures in git,
making it an attractive foundation for cryptographic identity for a developer
like myself.

# 🐘 Fediverse
You can <a rel="me" href="https://kolektiva.social/@avery">follow me</a> on Mastodon.

# 🐱 GitHub
You can <a rel="me" href="https://github.com/avery592">follow me</a> on GitHub.

# 🪙 Tips
If you like what I do, you can easily [send Monero][4] to the following address:
`47averyEStBZhvddZqJPVPRXC9NRxT56vXwpRxSXHLrf6r4WDJdnGCbFPnqgn1noQmfLhZfgcWZiqWbgwjWoFkCLBtkq2iB`.

<img src="monero-address.webp" width=25% alt="My Monero address as a QR code">

[0]: https://www.agwa.name/blog/post/ssh_signatures
[1]: https://simplex.chat/contact#/?v=2-7&smp=smp%3A%2F%2Fhejn2gVIqNU6xjtGM3OwQeuk8ZEbDXVJXAlnSBJBWUA%3D%40smp16.simplex.im%2F1OEUQxz8c4HJKA9_ve-4WMf2iptN6BvV%23%2F%3Fv%3D1-3%26dh%3DMCowBQYDK2VuAyEARRx2AqVbSeJ3-_HSE5D-MvBfqG2BpJIF28apdMPuHTY%253D%26srv%3Dp3ktngodzi6qrf7w64mmde3syuzrv57y55hxabqcq3l5p6oi7yzze6qd.onion
[2]: https://github.com/str4d/rage
[3]: https://www.latacora.com/blog/2019/07/16/the-pgp-problem/
[4]: https://trocador.app/anonpay/?ticker_to=xmr&network_to=Mainnet&address=47averyEStBZhvddZqJPVPRXC9NRxT56vXwpRxSXHLrf6r4WDJdnGCbFPnqgn1noQmfLhZfgcWZiqWbgwjWoFkCLBtkq2iB&donation=True&simple_mode=True&name=Avery&email=avery@avery.st&ticker_from=xmr&network_from=Mainnet&bgcolor=000000ff