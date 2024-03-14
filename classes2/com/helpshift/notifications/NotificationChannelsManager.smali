.class public Lcom/helpshift/notifications/NotificationChannelsManager;
.super Ljava/lang/Object;
.source "NotificationChannelsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/notifications/NotificationChannelsManager$NotificationChannelType;
    }
.end annotation


# static fields
.field private static final DEFAULT_CHANNEL_ID:Ljava/lang/String; = "helpshift_default_channel_id"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/helpshift/notifications/NotificationChannelsManager;->context:Landroid/content/Context;

    return-void
.end method

.method private deleteDefaultNotificationChannel()V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/helpshift/notifications/NotificationChannelsManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/helpshift/util/ApplicationUtil;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    if-eqz v0, :cond_13

    const-string v1, "helpshift_default_channel_id"

    .line 113
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 114
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method private ensureDefaultNotificationChannelCreated()V
    .registers 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/helpshift/notifications/NotificationChannelsManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/helpshift/util/ApplicationUtil;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    if-eqz v0, :cond_58

    const-string v1, "helpshift_default_channel_id"

    .line 65
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v2

    if-nez v2, :cond_58

    .line 68
    iget-object v2, p0, Lcom/helpshift/notifications/NotificationChannelsManager;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/helpshift/R$string;->hs__default_notification_channel_name:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 69
    iget-object v3, p0, Lcom/helpshift/notifications/NotificationChannelsManager;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/helpshift/R$string;->hs__default_notification_channel_desc:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 71
    new-instance v4, Landroid/app/NotificationChannel;

    const/4 v5, 0x3

    invoke-direct {v4, v1, v2, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 72
    invoke-virtual {v4, v3}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 74
    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 75
    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getCoreApi()Lcom/helpshift/CoreApi;

    move-result-object v2

    invoke-interface {v2}, Lcom/helpshift/CoreApi;->getSDKConfigurationDM()Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    move-result-object v2

    const-string v3, "notificationSoundId"

    invoke-virtual {v2, v3}, Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 74
    invoke-static {v1, v2}, Lcom/helpshift/util/AssetsUtil;->getNotificationSoundUri(Landroid/content/Context;Ljava/lang/Integer;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_55

    .line 77
    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 79
    :cond_55
    invoke-virtual {v0, v4}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_58
    return-void
.end method

.method private getActiveChannelId(Lcom/helpshift/notifications/NotificationChannelsManager$NotificationChannelType;)Ljava/lang/String;
    .registers 3

    .line 38
    sget-object v0, Lcom/helpshift/notifications/NotificationChannelsManager$1;->$SwitchMap$com$helpshift$notifications$NotificationChannelsManager$NotificationChannelType:[I

    invoke-virtual {p1}, Lcom/helpshift/notifications/NotificationChannelsManager$NotificationChannelType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_10

    .line 40
    invoke-direct {p0}, Lcom/helpshift/notifications/NotificationChannelsManager;->getActiveSupportNotificationChannel()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 43
    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method private getActiveSupportNotificationChannel()Ljava/lang/String;
    .registers 3

    .line 49
    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getCoreApi()Lcom/helpshift/CoreApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/helpshift/CoreApi;->getSDKConfigurationDM()Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    move-result-object v0

    const-string v1, "supportNotificationChannelId"

    invoke-virtual {v0, v1}, Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-static {v0}, Lcom/helpshift/util/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 51
    invoke-direct {p0}, Lcom/helpshift/notifications/NotificationChannelsManager;->ensureDefaultNotificationChannelCreated()V

    const-string v0, "helpshift_default_channel_id"

    goto :goto_1d

    .line 55
    :cond_1a
    invoke-direct {p0}, Lcom/helpshift/notifications/NotificationChannelsManager;->deleteDefaultNotificationChannel()V

    :goto_1d
    return-object v0
.end method


# virtual methods
.method public attachChannelId(Landroid/app/Notification;Lcom/helpshift/notifications/NotificationChannelsManager$NotificationChannelType;)Landroid/app/Notification;
    .registers 5

    .line 120
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1f

    iget-object v0, p0, Lcom/helpshift/notifications/NotificationChannelsManager;->context:Landroid/content/Context;

    .line 121
    invoke-static {v0}, Lcom/helpshift/util/ApplicationUtil;->getTargetSDKVersion(Landroid/content/Context;)I

    move-result v0

    if-lt v0, v1, :cond_1f

    .line 124
    iget-object v0, p0, Lcom/helpshift/notifications/NotificationChannelsManager;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 125
    invoke-direct {p0, p2}, Lcom/helpshift/notifications/NotificationChannelsManager;->getActiveChannelId(Lcom/helpshift/notifications/NotificationChannelsManager$NotificationChannelType;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 126
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    :cond_1f
    return-object p1
.end method

.method public checkAndUpdateDefaultChannelInfo()V
    .registers 9

    .line 85
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_59

    iget-object v0, p0, Lcom/helpshift/notifications/NotificationChannelsManager;->context:Landroid/content/Context;

    .line 86
    invoke-static {v0}, Lcom/helpshift/util/ApplicationUtil;->getTargetSDKVersion(Landroid/content/Context;)I

    move-result v0

    if-lt v0, v1, :cond_59

    const-string v0, "helpshift_default_channel_id"

    .line 88
    iget-object v1, p0, Lcom/helpshift/notifications/NotificationChannelsManager;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/helpshift/util/ApplicationUtil;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v1

    if-eqz v1, :cond_59

    .line 90
    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v2

    if-eqz v2, :cond_59

    .line 92
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v3

    .line 93
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    move-result-object v4

    .line 94
    iget-object v5, p0, Lcom/helpshift/notifications/NotificationChannelsManager;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/helpshift/R$string;->hs__default_notification_channel_name:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 95
    iget-object v6, p0, Lcom/helpshift/notifications/NotificationChannelsManager;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/helpshift/R$string;->hs__default_notification_channel_desc:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 96
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 97
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_59

    .line 98
    :cond_4a
    new-instance v3, Landroid/app/NotificationChannel;

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v2

    invoke-direct {v3, v0, v5, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 99
    invoke-virtual {v3, v6}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v1, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_59
    return-void
.end method
