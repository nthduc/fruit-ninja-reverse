.class public Lcom/hippogames/simpleandroidnotifications/RebootManager;
.super Landroid/content/BroadcastReceiver;
.source "RebootManager.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 11
    invoke-static {p1}, Lcom/hippogames/simpleandroidnotifications/Storage;->GetNotificationIds(Landroid/content/Context;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_8
    :goto_8
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    :cond_f
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 13
    invoke-static {p1, v0}, Lcom/hippogames/simpleandroidnotifications/Storage;->GetNotification(Landroid/content/Context;I)Lcom/hippogames/simpleandroidnotifications/NotificationParams;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 17
    invoke-static {p1, v0}, Lcom/hippogames/simpleandroidnotifications/Controller;->SetNotification(Landroid/content/Context;Lcom/hippogames/simpleandroidnotifications/NotificationParams;)V

    goto :goto_8
.end method
