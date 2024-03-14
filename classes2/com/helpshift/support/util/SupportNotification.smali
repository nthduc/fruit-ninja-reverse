.class public final Lcom/helpshift/support/util/SupportNotification;
.super Ljava/lang/Object;
.source "SupportNotification.java"


# static fields
.field public static final APP_NAME:Ljava/lang/String; = "app_name"

.field public static final BUNGLE_ARG_NOTIFICATION_CONVERSATION_ID:Ljava/lang/String; = "conversationIdInPush"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createNotification(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;ILjava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;
    .registers 11

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Creating Support notification : \n Id : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n Title : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n Message count : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Helpshift_SupportNotif"

    invoke-static {v1, v0}, Lcom/helpshift/util/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getCoreApi()Lcom/helpshift/CoreApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/helpshift/CoreApi;->getDelegate()Lcom/helpshift/delegate/UIThreadDelegateDecorator;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/helpshift/delegate/UIThreadDelegateDecorator;->didReceiveNotification(I)V

    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/helpshift/R$plurals;->hs__notification_content_title:I

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 42
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 41
    invoke-virtual {v0, v1, p3, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 43
    invoke-static {p0}, Lcom/helpshift/util/ApplicationUtil;->getLogoResourceValue(Landroid/content/Context;)I

    move-result v0

    .line 46
    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getCoreApi()Lcom/helpshift/CoreApi;

    move-result-object v1

    invoke-interface {v1}, Lcom/helpshift/CoreApi;->getSDKConfigurationDM()Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    move-result-object v1

    const-string v3, "notificationIconId"

    invoke-virtual {v1, v3}, Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 47
    invoke-static {p0, v1}, Lcom/helpshift/util/AssetsUtil;->resourceExists(Landroid/content/Context;Ljava/lang/Integer;)Z

    move-result v3

    if-eqz v3, :cond_61

    .line 48
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 51
    :cond_61
    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getCoreApi()Lcom/helpshift/CoreApi;

    move-result-object v1

    invoke-interface {v1}, Lcom/helpshift/CoreApi;->getSDKConfigurationDM()Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    move-result-object v1

    const-string v3, "notificationLargeIconId"

    invoke-virtual {v1, v3}, Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 52
    invoke-static {p0, v1}, Lcom/helpshift/util/AssetsUtil;->resourceExists(Landroid/content/Context;Ljava/lang/Integer;)Z

    move-result v3

    if-eqz v3, :cond_82

    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v3, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_83

    :cond_82
    const/4 v1, 0x0

    :goto_83
    if-eqz p2, :cond_8e

    .line 58
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    goto :goto_8f

    :cond_8e
    const/4 p2, 0x0

    .line 61
    :goto_8f
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/helpshift/support/activities/ParentActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v4, 0x10000000

    .line 62
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v4, "support_mode"

    .line 63
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "conversationIdInPush"

    .line 64
    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p1, "isRoot"

    .line 65
    invoke-virtual {v3, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 67
    invoke-static {p0, p2, v3, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 66
    invoke-static {p0, p1}, Lcom/helpshift/PluginEventBridge;->getPendingIntentForNotification(Landroid/content/Context;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    move-result-object p1

    .line 70
    new-instance p2, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {p2, p0}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 71
    invoke-virtual {p2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 72
    invoke-virtual {p2, p4}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 73
    invoke-virtual {p2, p3}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 74
    invoke-virtual {p2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 75
    invoke-virtual {p2, v2}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    if-eqz v1, :cond_cb

    .line 78
    invoke-virtual {p2, v1}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    .line 81
    :cond_cb
    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 82
    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getCoreApi()Lcom/helpshift/CoreApi;

    move-result-object p3

    invoke-interface {p3}, Lcom/helpshift/CoreApi;->getSDKConfigurationDM()Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    move-result-object p3

    const-string p4, "notificationSoundId"

    invoke-virtual {p3, p4}, Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p3

    .line 81
    invoke-static {p1, p3}, Lcom/helpshift/util/AssetsUtil;->getNotificationSoundUri(Landroid/content/Context;Ljava/lang/Integer;)Landroid/net/Uri;

    move-result-object p1

    const-string p3, "android.permission.VIBRATE"

    if-nez p1, :cond_f5

    .line 84
    invoke-static {p0, p3}, Lcom/helpshift/util/ApplicationUtil;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_f0

    const/4 p0, -0x1

    .line 85
    invoke-virtual {p2, p0}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_107

    :cond_f0
    const/4 p0, 0x5

    .line 88
    invoke-virtual {p2, p0}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_107

    .line 93
    :cond_f5
    invoke-virtual {p2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$Builder;

    .line 94
    invoke-static {p0, p3}, Lcom/helpshift/util/ApplicationUtil;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_103

    const/4 p0, 0x6

    .line 95
    invoke-virtual {p2, p0}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_107

    :cond_103
    const/4 p0, 0x4

    .line 99
    invoke-virtual {p2, p0}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    :goto_107
    return-object p2
.end method
