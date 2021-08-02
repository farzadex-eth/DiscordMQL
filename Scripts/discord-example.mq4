//+------------------------------------------------------------------+
//|                                                   testwebreq.mq4 |
//|                        Copyright 2021, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2021, Farzad Zoghi"
#property link      "email:f.zoghi@outlook.com"
#property version   "1.00"
#property strict


#define ChannelID "YOUR_CHANNEL_ID"
#define BotID "YOUR_BOT_TOKEN"

#include <discordMql.mqh>

//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
  {

// Get Messages
   Alert(discordGetMessages(BotID, ChannelID, 1, NULL, NULL, NULL));

// Send Messages
   Alert(discordSendMessage(BotID, ChannelID, "Hello World!"));

  }
//+------------------------------------------------------------------+
