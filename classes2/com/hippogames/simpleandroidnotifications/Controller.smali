.class public Lcom/hippogames/simpleandroidnotifications/Controller;
.super Landroid/content/BroadcastReceiver;
.source "Controller.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private BuildNotification(Landroid/content/Context;Lcom/hippogames/simpleandroidnotifications/NotificationParams;Landroid/content/Intent;Landroid/app/NotificationManager;)Landroid/app/Notification;
    .registers 9

    .line 209
    iget v0, p2, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->Id:I

    const/high16 v1, 0x8000000

    invoke-static {p1, v0, p3, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p3

    .line 210
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 213
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_25

    .line 215
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p2, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->ChannelId:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 217
    iget-object v2, p2, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->ChannelId:Ljava/lang/String;

    invoke-virtual {p4, v2}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v2

    if-nez v2, :cond_2a

    .line 219
    invoke-direct {p0, p2, p4}, Lcom/hippogames/simpleandroidnotifications/Controller;->CreateChannel(Lcom/hippogames/simpleandroidnotifications/NotificationParams;Landroid/app/NotificationManager;)V

    goto :goto_2a

    .line 224
    :cond_25
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 227
    :cond_2a
    :goto_2a
    invoke-virtual {v1, p3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p3

    .line 228
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p3, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object p3

    const/4 p4, 0x1

    .line 229
    invoke-virtual {p3, p4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object p3

    .line 230
    iget-object p4, p2, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->Title:Ljava/lang/String;

    invoke-virtual {p3, p4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p3

    .line 231
    iget-object p4, p2, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->Message:Ljava/lang/String;

    invoke-virtual {p3, p4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 233
    iget-boolean p3, p2, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->Multiline:Z

    const/16 p4, 0x10

    if-eqz p3, :cond_5e

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p3, p4, :cond_5e

    .line 235
    new-instance p3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {p3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    iget-object v2, p2, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->Message:Ljava/lang/String;

    invoke-virtual {p3, v2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 238
    :cond_5e
    iget-object p3, p2, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->GroupName:Ljava/lang/String;

    invoke-static {p3}, Lcom/hippogames/simpleandroidnotifications/Controller;->IsEmpty(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_71

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-lt p3, v2, :cond_71

    .line 240
    iget-object p3, p2, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->GroupName:Ljava/lang/String;

    invoke-virtual {v1, p3}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 243
    :cond_71
    iget-boolean p3, p2, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->Sound:Z

    if-eqz p3, :cond_a9

    .line 245
    iget-object p3, p2, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->CustomSound:Ljava/lang/String;

    invoke-static {p3}, Lcom/hippogames/simpleandroidnotifications/Controller;->IsEmpty(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_86

    const/4 p3, 0x2

    invoke-static {p3}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    goto :goto_a9

    .line 246
    :cond_86
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v2, "android.resource://"

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/raw/"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->CustomSound:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 249
    :cond_a9
    :goto_a9
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt p3, v2, :cond_b4

    iget p3, p2, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->SmallIconColor:I

    invoke-virtual {v1, p3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 250
    :cond_b4
    iget-object p3, p2, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->Ticker:Ljava/lang/String;

    invoke-static {p3}, Lcom/hippogames/simpleandroidnotifications/Controller;->IsEmpty(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_c1

    iget-object p3, p2, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->Ticker:Ljava/lang/String;

    invoke-virtual {v1, p3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 251
    :cond_c1
    iget-object p3, p2, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->SmallIcon:Ljava/lang/String;

    invoke-static {p3}, Lcom/hippogames/simpleandroidnotifications/Controller;->IsEmpty(Ljava/lang/String;)Z

    move-result p3

    const-string v2, "drawable"

    if-nez p3, :cond_d8

    iget-object p3, p2, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->SmallIcon:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p3, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    invoke-virtual {v1, p3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 252
    :cond_d8
    iget-object p3, p2, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->LargeIcon:Ljava/lang/String;

    invoke-static {p3}, Lcom/hippogames/simpleandroidnotifications/Controller;->IsEmpty(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_f1

    iget-object p3, p2, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->LargeIcon:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p3, v2, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 253
    :cond_f1
    iget-boolean p1, p2, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->Vibrate:Z

    if-eqz p1, :cond_fa

    iget-object p1, p2, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->Vibration:[J

    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 254
    :cond_fa
    iget-boolean p1, p2, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->Light:Z

    if-eqz p1, :cond_107

    iget p1, p2, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->LightColor:I

    iget p3, p2, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->LightOnMs:I

    iget p2, p2, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->LightOffMs:I

    invoke-virtual {v1, p1, p3, p2}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    .line 256
    :cond_107
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p1, p4, :cond_110

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object p1

    goto :goto_114

    :cond_110
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    :goto_114
    return-object p1
.end method

.method public static CancelAllNotifications()V
    .registers 2

    .line 187
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/hippogames/simpleandroidnotifications/Storage;->GetNotificationIds(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_11

    return-void

    :cond_11
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 189
    invoke-static {v1}, Lcom/hippogames/simpleandroidnotifications/Controller;->CancelNotification(I)V

    goto :goto_a
.end method

.method public static CancelAllNotificationsEx()V
    .registers 2

    .line 195
    invoke-static {}, Lcom/hippogames/simpleandroidnotifications/Controller;->CancelAllNotifications()V

    .line 197
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 199
    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    return-void
.end method

.method public static CancelNotification(I)V
    .registers 4

    .line 170
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 171
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/hippogames/simpleandroidnotifications/Controller;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x0

    .line 172
    invoke-static {v0, p0, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const-string v2, "alarm"

    .line 173
    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 174
    invoke-virtual {v2, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 175
    invoke-static {v0, p0}, Lcom/hippogames/simpleandroidnotifications/Storage;->RemoveNotification(Landroid/content/Context;I)V

    return-void
.end method

.method public static CancelNotificationEx(I)V
    .registers 3

    .line 180
    invoke-static {p0}, Lcom/hippogames/simpleandroidnotifications/Controller;->CancelNotification(I)V

    .line 181
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 182
    invoke-virtual {v0, p0}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method private CreateChannel(Lcom/hippogames/simpleandroidnotifications/NotificationParams;Landroid/app/NotificationManager;)V
    .registers 7

    .line 261
    new-instance v0, Landroid/app/NotificationChannel;

    iget-object v1, p1, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->ChannelId:Ljava/lang/String;

    iget-object v2, p1, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->ChannelName:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 263
    iget-boolean v1, p1, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->Vibrate:Z

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 264
    iget-boolean v1, p1, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->Light:Z

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 265
    iget p1, p1, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->LightColor:I

    invoke-virtual {v0, p1}, Landroid/app/NotificationChannel;->setLightColor(I)V

    const/4 p1, 0x0

    .line 266
    invoke-virtual {v0, p1}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 268
    invoke-virtual {p2, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method private CreateStackedNotification(Landroid/content/Context;Landroid/content/Intent;Lcom/hippogames/simpleandroidnotifications/NotificationParams;)V
    .registers 14

    .line 273
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-ge v0, v1, :cond_7

    return-void

    .line 275
    :cond_7
    iget-object v0, p3, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->GroupName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    neg-int v0, v0

    .line 276
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "notification"

    .line 277
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 279
    invoke-virtual {v2}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_25
    if-lt v5, v4, :cond_ef

    .line 287
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_ee

    .line 289
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, p3, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->ChannelId:Ljava/lang/String;

    invoke-direct {v3, p1, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 291
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_43

    .line 293
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, p3, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->ChannelId:Ljava/lang/String;

    invoke-direct {v3, p1, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_48

    .line 297
    :cond_43
    new-instance v3, Landroid/app/Notification$Builder;

    invoke-direct {v3, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 300
    :goto_48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 301
    iget-object v5, p3, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->GroupSummary:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "{0}"

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 303
    new-instance v6, Landroid/app/Notification$InboxStyle;

    invoke-direct {v6}, Landroid/app/Notification$InboxStyle;-><init>()V

    .line 305
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6e
    :goto_6e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_d0

    .line 315
    invoke-virtual {v6, v5}, Landroid/app/Notification$InboxStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    .line 318
    iget-object v1, p3, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->GroupName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 319
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 320
    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 321
    iget-object v1, p3, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->GroupName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    .line 322
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 323
    iget-object v1, p3, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->SmallIcon:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "drawable"

    invoke-virtual {v4, v1, v6, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 324
    iget-object v1, p3, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->LargeIcon:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v6, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v4, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 325
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-int v1, v4

    div-int/lit16 v1, v1, 0x3e8

    const/high16 v4, 0x8000000

    invoke-static {p1, v1, p2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 327
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    const/4 p2, -0x1

    .line 329
    iput p2, p1, Landroid/app/Notification;->defaults:I

    .line 330
    iget-object p2, p3, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->GroupName:Ljava/lang/String;

    invoke-virtual {v2, p2, v0, p1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    goto :goto_ee

    .line 305
    :cond_d0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/service/notification/StatusBarNotification;

    .line 307
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-object v7, v7, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v8, "android.title"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 309
    invoke-static {v7}, Lcom/hippogames/simpleandroidnotifications/Controller;->IsEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6e

    .line 311
    invoke-virtual {v6, v7}, Landroid/app/Notification$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    goto :goto_6e

    :cond_ee
    :goto_ee
    return-void

    .line 279
    :cond_ef
    aget-object v6, v3, v5

    .line 281
    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v7

    if-eq v7, v0, :cond_114

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "g:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p3, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->GroupName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_114

    .line 283
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_114
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_25
.end method

.method private static IsEmpty(Ljava/lang/String;)Z
    .registers 1

    if-eqz p0, :cond_a

    .line 204
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    const/4 p0, 0x1

    return p0
.end method

.method public static SetNotification(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 43

    const/4 v0, 0x0

    const/4 v1, 0x1

    move/from16 v2, p6

    if-ne v2, v1, :cond_9

    const/16 v16, 0x1

    goto :goto_b

    :cond_9
    const/16 v16, 0x0

    :goto_b
    const/16 v17, 0x0

    move/from16 v2, p7

    if-ne v2, v1, :cond_14

    const/16 v18, 0x1

    goto :goto_16

    :cond_14
    const/16 v18, 0x0

    :goto_16
    const/4 v2, 0x2

    .line 27
    new-array v14, v2, [J

    fill-array-data v14, :array_56

    move/from16 v2, p8

    if-ne v2, v1, :cond_23

    const/16 v20, 0x1

    goto :goto_25

    :cond_23
    const/16 v20, 0x0

    :goto_25
    const/16 v21, 0xbb8

    const/16 v22, 0xbb8

    const v23, -0xff0100

    const/16 v27, 0x0

    const/16 v28, 0x0

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v15, 0x0

    move/from16 v2, p0

    move-wide/from16 v7, p1

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object v0, v14

    move-object/from16 v14, p5

    move-object/from16 v19, v0

    move-object/from16 v24, p9

    move-object/from16 v25, p10

    move/from16 v26, p11

    move-object/from16 v29, p12

    invoke-static/range {v2 .. v29}, Lcom/hippogames/simpleandroidnotifications/Controller;->SetNotification(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Z[JZIIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :array_56
    .array-data 8
        0x3e8
        0x3e8
    .end array-data
.end method

.method public static SetNotification(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;IIIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .registers 58

    const-string v0, ","

    move-object/from16 v1, p17

    .line 33
    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 34
    array-length v1, v0

    new-array v1, v1, [J

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 36
    :goto_d
    array-length v4, v0

    if-lt v3, v4, :cond_70

    const/4 v0, 0x1

    move/from16 v4, p7

    if-ne v4, v0, :cond_19

    move/from16 v5, p13

    const/4 v9, 0x1

    goto :goto_1c

    :cond_19
    move/from16 v5, p13

    const/4 v9, 0x0

    :goto_1c
    if-ne v5, v0, :cond_22

    move/from16 v6, p14

    const/4 v15, 0x1

    goto :goto_25

    :cond_22
    move/from16 v6, p14

    const/4 v15, 0x0

    :goto_25
    if-ne v6, v0, :cond_2c

    move/from16 v7, p16

    const/16 v16, 0x1

    goto :goto_30

    :cond_2c
    move/from16 v7, p16

    const/16 v16, 0x0

    :goto_30
    if-ne v7, v0, :cond_37

    move/from16 v8, p18

    const/16 v18, 0x1

    goto :goto_3b

    :cond_37
    move/from16 v8, p18

    const/16 v18, 0x0

    :goto_3b
    if-ne v8, v0, :cond_40

    const/16 v20, 0x1

    goto :goto_42

    :cond_40
    const/16 v20, 0x0

    :goto_42
    move/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v7, p5

    move-wide/from16 v10, p8

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v17, p15

    move-object/from16 v19, v1

    move/from16 v21, p19

    move/from16 v22, p20

    move/from16 v23, p21

    move-object/from16 v24, p22

    move-object/from16 v25, p23

    move/from16 v26, p24

    move/from16 v27, p25

    move-object/from16 v28, p26

    move-object/from16 v29, p27

    .line 41
    invoke-static/range {v2 .. v29}, Lcom/hippogames/simpleandroidnotifications/Controller;->SetNotification(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Z[JZIIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_70
    move/from16 v4, p7

    move/from16 v5, p13

    move/from16 v6, p14

    move/from16 v7, p16

    move/from16 v8, p18

    .line 38
    aget-object v9, v0, v3

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    aput-wide v9, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_d
.end method

.method public static SetNotification(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Z[JZIIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .registers 31

    .line 47
    new-instance v0, Lcom/hippogames/simpleandroidnotifications/NotificationParams;

    invoke-direct {v0}, Lcom/hippogames/simpleandroidnotifications/NotificationParams;-><init>()V

    move v1, p0

    .line 49
    iput v1, v0, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->Id:I

    move-object v1, p1

    .line 50
    iput-object v1, v0, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->GroupName:Ljava/lang/String;

    move-object v1, p2

    .line 51
    iput-object v1, v0, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->GroupSummary:Ljava/lang/String;

    move-object v1, p3

    .line 52
    iput-object v1, v0, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->ChannelId:Ljava/lang/String;

    move-object v1, p4

    .line 53
    iput-object v1, v0, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->ChannelName:Ljava/lang/String;

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p5

    iput-wide v1, v0, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->TriggerAtMillis:J

    move v1, p7

    .line 55
    iput-boolean v1, v0, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->Repeat:Z

    move-wide v1, p8

    .line 56
    iput-wide v1, v0, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->RepeatIntervalMs:J

    move-object v1, p10

    .line 57
    iput-object v1, v0, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->Title:Ljava/lang/String;

    move-object v1, p11

    .line 58
    iput-object v1, v0, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->Message:Ljava/lang/String;

    move-object v1, p12

    .line 59
    iput-object v1, v0, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->Ticker:Ljava/lang/String;

    move/from16 v1, p13

    .line 60
    iput-boolean v1, v0, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->Multiline:Z

    move/from16 v1, p14

    .line 61
    iput-boolean v1, v0, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->Sound:Z

    move-object/from16 v1, p15

    .line 62
    iput-object v1, v0, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->CustomSound:Ljava/lang/String;

    move/from16 v1, p16

    .line 63
    iput-boolean v1, v0, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->Vibrate:Z

    move-object/from16 v1, p17

    .line 64
    iput-object v1, v0, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->Vibration:[J

    move/from16 v1, p18

    .line 65
    iput-boolean v1, v0, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->Light:Z

    move/from16 v1, p19

    .line 66
    iput v1, v0, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->LightOnMs:I

    move/from16 v1, p20

    .line 67
    iput v1, v0, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->LightOffMs:I

    move/from16 v1, p21

    .line 68
    iput v1, v0, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->LightColor:I

    move-object/from16 v1, p22

    .line 69
    iput-object v1, v0, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->LargeIcon:Ljava/lang/String;

    move-object/from16 v1, p23

    .line 70
    iput-object v1, v0, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->SmallIcon:Ljava/lang/String;

    move/from16 v1, p24

    .line 71
    iput v1, v0, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->SmallIconColor:I

    move/from16 v1, p25

    .line 72
    iput v1, v0, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->ExecuteMode:I

    move-object/from16 v1, p26

    .line 73
    iput-object v1, v0, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->CallbackData:Ljava/lang/String;

    move-object/from16 v1, p27

    .line 74
    iput-object v1, v0, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->UnityClass:Ljava/lang/String;

    .line 76
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/hippogames/simpleandroidnotifications/Controller;->SetNotification(Landroid/content/Context;Lcom/hippogames/simpleandroidnotifications/NotificationParams;)V

    return-void
.end method

.method public static SetNotification(Landroid/content/Context;Lcom/hippogames/simpleandroidnotifications/NotificationParams;)V
    .registers 10

    .line 81
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_7

    return-void

    :cond_7
    const-string v0, "alarm"

    .line 83
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/AlarmManager;

    .line 84
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/hippogames/simpleandroidnotifications/Controller;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 86
    iget v2, p1, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->Id:I

    const-string v3, "Id"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 88
    iget v2, p1, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->Id:I

    const/high16 v3, 0x8000000

    invoke-static {p0, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 90
    iget-boolean v0, p1, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->Repeat:Z

    if-eqz v0, :cond_40

    .line 92
    iget v0, p1, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->ExecuteMode:I

    if-nez v0, :cond_37

    const/4 v2, 0x0

    .line 94
    iget-wide v3, p1, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->TriggerAtMillis:J

    iget-wide v5, p1, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->RepeatIntervalMs:J

    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_68

    :cond_37
    const/4 v2, 0x0

    .line 98
    iget-wide v3, p1, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->TriggerAtMillis:J

    iget-wide v5, p1, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->RepeatIntervalMs:J

    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_68

    .line 103
    :cond_40
    iget v0, p1, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->ExecuteMode:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_52

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_52

    .line 105
    iget-wide v4, p1, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->TriggerAtMillis:J

    invoke-virtual {v1, v3, v4, v5, v7}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    goto :goto_68

    .line 107
    :cond_52
    iget v0, p1, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->ExecuteMode:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_63

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v0, v2, :cond_63

    .line 109
    iget-wide v4, p1, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->TriggerAtMillis:J

    invoke-virtual {v1, v3, v4, v5, v7}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_68

    .line 113
    :cond_63
    iget-wide v4, p1, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->TriggerAtMillis:J

    invoke-virtual {v1, v3, v4, v5, v7}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 117
    :goto_68
    invoke-static {p0, p1}, Lcom/hippogames/simpleandroidnotifications/Storage;->AddNotification(Landroid/content/Context;Lcom/hippogames/simpleandroidnotifications/NotificationParams;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    const-string v0, "Id"

    const/4 v1, 0x0

    .line 122
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 123
    invoke-static {p1, p2}, Lcom/hippogames/simpleandroidnotifications/Storage;->GetNotification(Landroid/content/Context;I)Lcom/hippogames/simpleandroidnotifications/NotificationParams;

    move-result-object v0

    if-nez v0, :cond_e

    return-void

    .line 126
    :cond_e
    iget-object v1, v0, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->ChannelId:Ljava/lang/String;

    invoke-static {v1}, Lcom/hippogames/simpleandroidnotifications/Controller;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "Default"

    if-eqz v1, :cond_1a

    iput-object v2, v0, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->ChannelId:Ljava/lang/String;

    .line 127
    :cond_1a
    iget-object v1, v0, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->ChannelName:Ljava/lang/String;

    invoke-static {v1}, Lcom/hippogames/simpleandroidnotifications/Controller;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    iput-object v2, v0, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->ChannelName:Ljava/lang/String;

    .line 133
    :cond_24
    :try_start_24
    iget-object v1, v0, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->UnityClass:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_2a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_24 .. :try_end_2a} :catch_6c

    .line 141
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 143
    iget v1, v0, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->Id:I

    const-string v3, "Notification.Id"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 144
    iget-object v1, v0, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->CallbackData:Ljava/lang/String;

    const-string v3, "Notification.CallbackData"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "notification"

    .line 146
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 147
    invoke-direct {p0, p1, v0, v2, v1}, Lcom/hippogames/simpleandroidnotifications/Controller;->BuildNotification(Landroid/content/Context;Lcom/hippogames/simpleandroidnotifications/NotificationParams;Landroid/content/Intent;Landroid/app/NotificationManager;)Landroid/app/Notification;

    move-result-object v3

    .line 149
    invoke-virtual {v1, p2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 151
    iget-boolean v4, v0, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->Repeat:Z

    if-eqz v4, :cond_54

    .line 153
    invoke-virtual {v1, p2}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_57

    .line 157
    :cond_54
    invoke-static {p1, p2}, Lcom/hippogames/simpleandroidnotifications/Storage;->RemoveNotification(Landroid/content/Context;I)V

    .line 160
    :goto_57
    invoke-virtual {v1, p2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 162
    iget-object p2, v0, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->GroupName:Ljava/lang/String;

    invoke-static {p2}, Lcom/hippogames/simpleandroidnotifications/Controller;->IsEmpty(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_6b

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt p2, v1, :cond_6b

    .line 164
    invoke-direct {p0, p1, v2, v0}, Lcom/hippogames/simpleandroidnotifications/Controller;->CreateStackedNotification(Landroid/content/Context;Landroid/content/Intent;Lcom/hippogames/simpleandroidnotifications/NotificationParams;)V

    :cond_6b
    return-void

    :catch_6c
    move-exception p1

    .line 137
    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    return-void
.end method
