IKEv2 Server
========

```bash
docker run \
  --cap-add=NET_ADMIN \
  -p 500:500/udp \
  -p 4500:4500/udp \
  -e "HOST=<SERVER_IP>OR<FQDN>" \
  -e "HOSTNAME=<SERVER_NAME> \
  simnalamburt/ikev2-server
```

## Usage

### 1. Start the IKEv2 VPN Server


### 2. Generate the .mobileconfig (for iOS / macOS) to the current path

    docker exec -it vpn-server generate-mobileconfig > ikev2-vpn.mobileconfig

Transfer the generated `ikev2-vpn.mobileconfig` file to your local computer via SSH tunnel (`scp`) or any other secure methods.

## Technical Details

Upon container creation, a *shared secret* was generated for authentication purpose, no *certificate*, *username*, or *password* was ever used, simple life!

## License

Copyright (c) 2018 Mengdi Gao, Nebukad93,  This software is licensed under the [MIT License](LICENSE).

---

\* IKEv2 protocol requires iOS 8 or later, macOS 10.11 El Capitan or later.

\* Install for **iOS 8 or later** or when your AirDrop fails: Send an E-mail to your iOS device with the `.mobileconfig` file as attachment, then tap the attachment to bring up and finish the **Install Profile** screen.
