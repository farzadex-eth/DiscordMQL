# DiscordMQL
Send/Receive Messages between MetaTrader and Discord

**Important : _You should create a discord bot and add it to your desired channels_**
* This is a good tutorial to show you how to create a bot and invite it to channels : https://discordpy.readthedocs.io/en/stable/discord.html
* To get a Channel ID Go to your Discord Settings > Advanced > Enable Developer Mode. Then right click on a channel and copy the ID
* I used the webrequest functions for this project. You can get it seperately from [here](https://github.com/farzadzoghi/SimpleWebRequestMQL), but it is included in this project too. 

## Usage

* Copy the mqh files to "MetaTrader4 DataFolder/MQL4/Include/"
* (Optional) Copy the example script file to "MetaTrader4 DataFolder/MQL4/Script/"

### Send Message
```string discordSendMessage(string botId, string channelId, string message)```
* botId has to be your Bot Token from Discord Developer
* channelId is the Channel ID of the channel you invited the bot

### Get Message
```string discordGetMessages(string botId, string channelId, int limit = 0, string before = NULL, string after = NULL, string around = NULL)```
* botId and channelId are the same as the ones in send function
* limit   : if you keep it 0, it gets all the messages but you can specify a number between 1-100
* before/after/around   : input should be a string of a message id. (default is NULL)
* for more info you can read [discord documents](https://discord.com/developers/docs/resources/channel#get-channel-messages)

