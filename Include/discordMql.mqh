//+------------------------------------------------------------------+
// (C) 2021 Farzad Zoghi (f.zoghi@outlook.com) ----------------------+
//+------------------------------------------------------------------+

// Get messages from discord channels and send messages to channels on discord

#property copyright "Copyright 2021, Farzad Zoghi"
#property link      "email:f.zoghi@outlook.com"
#property strict

#include <webrequest.mqh>

//+------------------------------------------------------------------+
//| Send Message                                                     |
//+------------------------------------------------------------------+
string discordSendMessage(string botId, string channelId, string message)
  {

   string url = StringFormat("discordapp.com/api/channels/%s/messages", channelId);
   string data = "content="+message;
   string headers = StringFormat("Content-Type: application/x-www-form-urlencoded\r\nAuthorization : Bot %s\r\nUser-Agent: mt4/1.0.0", botId);
   string response = postRequest(url, data, headers);

   return response;
  }

//+------------------------------------------------------------------+
//| Get Message                                                     |
//+------------------------------------------------------------------+
string discordGetMessages(string botId, string channelId, int limit = 0, string before = NULL, string after = NULL, string around = NULL)
  {

   string url = StringFormat("discordapp.com/api/channels/%s/messages", channelId);
   string field[4];
   field[0] = (limit > 0) ? ("limit="+IntegerToString(limit)) : ("");
   field[1] = (before != NULL) ? ("before="+before) : ("");
   field[2] = (after != NULL) ? ("after="+after) : ("");
   field[3] = (around != NULL) ? ("around="+around) : ("");
   string params = "";
   for(int i=0; i<4; i++)
     {
      string prefix = (StringLen(params) > 0) ? ("&") : ("");
      params += (StringLen(field[i]) > 0) ? (prefix+field[i]) : ("");
     }

   string headers = StringFormat("Content-Type: application/x-www-form-urlencoded\r\nAuthorization : Bot %s\r\nUser-Agent: mt4/1.0.0", botId);
   string response = getRequest(url, params, headers);

   return response;
  }
//+------------------------------------------------------------------+
