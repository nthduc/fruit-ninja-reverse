.class public final Lcom/helpshift/PluginEventBridge;
.super Ljava/lang/Object;
.source "PluginEventBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/PluginEventBridge$PluginEventsAPI;
    }
.end annotation


# static fields
.field private static pluginEventsAPI:Lcom/helpshift/PluginEventBridge$PluginEventsAPI;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPendingIntentForNotification(Landroid/content/Context;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .registers 3

    .line 25
    sget-object v0, Lcom/helpshift/PluginEventBridge;->pluginEventsAPI:Lcom/helpshift/PluginEventBridge$PluginEventsAPI;

    if-eqz v0, :cond_9

    .line 26
    invoke-interface {v0, p0, p1}, Lcom/helpshift/PluginEventBridge$PluginEventsAPI;->getPendingIntentForNotification(Landroid/content/Context;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0

    :cond_9
    return-object p1
.end method

.method public static sendMessage(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 19
    sget-object v0, Lcom/helpshift/PluginEventBridge;->pluginEventsAPI:Lcom/helpshift/PluginEventBridge$PluginEventsAPI;

    if-eqz v0, :cond_7

    .line 20
    invoke-interface {v0, p0, p1}, Lcom/helpshift/PluginEventBridge$PluginEventsAPI;->sendMessage(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public static setPluginEventsAPI(Lcom/helpshift/PluginEventBridge$PluginEventsAPI;)V
    .registers 1

    .line 15
    sput-object p0, Lcom/helpshift/PluginEventBridge;->pluginEventsAPI:Lcom/helpshift/PluginEventBridge$PluginEventsAPI;

    return-void
.end method

.method public static shouldCallFirstForegroundEvent()Z
    .registers 1

    .line 33
    sget-object v0, Lcom/helpshift/PluginEventBridge;->pluginEventsAPI:Lcom/helpshift/PluginEventBridge$PluginEventsAPI;

    if-eqz v0, :cond_9

    .line 34
    invoke-interface {v0}, Lcom/helpshift/PluginEventBridge$PluginEventsAPI;->shouldCallFirstForegroundEvent()Z

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method
