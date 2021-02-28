## MineCraft Server on Google Cloud Platform (GCP)

This Project is to make Installation of Minecraft Server easier on the Google Cloud Platform.

### Installation

- Activate a [Google Cloud Shell](https://console.cloud.google.com/) on Google cloud.
- Clone this Repository with the command below...

```
git clone https://github.com/silver-47/minecraft-on-gcp
```

- Go Inside the Cloned Directory...

```
cd minecraft-on-gcp
```

- Make Every File Execulable...

```
chmod +x *
```

- Now Run the Installation Script with the following command...

```
./install.sh
```

Also put the correct [NGROK](https://dashboard.ngrok.com/) TOKEN in the prompt.

#### Server Commands

- To Start the Servers do the following command...

```
./startserver.sh
```

- To Stop the Servers do the following command...

```
./stopserver.sh
```

- To get the URL of the Minecraft Server from NGROK do the following command...

```
screen -r ngrok
```

- To visit the console of the Minecraft Server do the following command...

```
screen -r server
```

- To Go Back from the Current Screen you can do it using the following Keyboard Shortcuts:- CTRL+A + CTRL+D
