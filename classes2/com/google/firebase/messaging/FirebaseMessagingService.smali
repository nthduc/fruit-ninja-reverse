.class public Lcom/google/firebase/messaging/FirebaseMessagingService;
.super Lcom/google/firebase/messaging/zzf;
.source "com.google.firebase:firebase-messaging@@20.1.7"


# static fields
.field private static final zza:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 111
    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    sput-object v0, Lcom/google/firebase/messaging/FirebaseMessagingService;->zza:Ljava/util/Queue;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/messaging/zzf;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeletedMessages()V
    .registers 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    return-void
.end method

.method public onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V
    .registers 2
    .param p1    # Lcom/google/firebase/messaging/RemoteMessage;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    return-void
.end method

.method public onMessageSent(Ljava/lang/String;)V
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    return-void
.end method

.method public onNewToken(Ljava/lang/String;)V
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    return-void
.end method

.method public onSendError(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    return-void
.end method

.method protected final zza(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 2

    .line 7
    invoke-static {}, Lcom/google/firebase/iid/zzaw;->zza()Lcom/google/firebase/iid/zzaw;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/iid/zzaw;->zzb()Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Landroid/content/Intent;)Z
    .registers 4

    .line 8
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.firebase.messaging.NOTIFICATION_OPEN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string v0, "pending_intent"

    .line 10
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    if-eqz v0, :cond_21

    .line 12
    :try_start_16
    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_19
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_21

    :catch_1a
    const-string v0, "FirebaseMessaging"

    const-string v1, "Notification pending intent canceled"

    .line 15
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :cond_21
    :goto_21
    invoke-static {p1}, Lcom/google/firebase/messaging/zzr;->zzd(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 17
    invoke-static {p1}, Lcom/google/firebase/messaging/zzr;->zza(Landroid/content/Intent;)V

    :cond_2a
    const/4 p1, 0x1

    return p1

    :cond_2c
    const/4 p1, 0x0

    return p1
.end method

.method public final zzc(Landroid/content/Intent;)V
    .registers 14

    .line 20
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.c2dm.intent.RECEIVE"

    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "FirebaseMessaging"

    if-nez v1, :cond_59

    const-string v1, "com.google.firebase.messaging.RECEIVE_DIRECT_BOOT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_59

    :cond_17
    const-string v1, "com.google.firebase.messaging.NOTIFICATION_DISMISS"

    .line 104
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 105
    invoke-static {p1}, Lcom/google/firebase/messaging/zzr;->zzd(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 106
    invoke-static {p1}, Lcom/google/firebase/messaging/zzr;->zzb(Landroid/content/Intent;)V

    return-void

    :cond_29
    const-string v1, "com.google.firebase.messaging.NEW_TOKEN"

    .line 107
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    const-string v0, "token"

    .line 108
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onNewToken(Ljava/lang/String;)V

    return-void

    :cond_3b
    const-string v0, "Unknown intent action: "

    .line 109
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_50

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_55

    :cond_50
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_55
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_58
    return-void

    :cond_59
    :goto_59
    const-string v0, "google.message_id"

    .line 23
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v3, :cond_6c

    .line 26
    invoke-static {v4}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v3

    goto :goto_7c

    .line 27
    :cond_6c
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 28
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-static {p0}, Lcom/google/firebase/iid/zzab;->zza(Landroid/content/Context;)Lcom/google/firebase/iid/zzab;

    move-result-object v6

    .line 30
    invoke-virtual {v6, v5, v3}, Lcom/google/firebase/iid/zzab;->zza(ILandroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;

    move-result-object v3

    .line 33
    :goto_7c
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x3

    const/4 v9, 0x0

    if-eqz v6, :cond_87

    :goto_85
    const/4 v1, 0x0

    goto :goto_c5

    .line 35
    :cond_87
    sget-object v6, Lcom/google/firebase/messaging/FirebaseMessagingService;->zza:Ljava/util/Queue;

    invoke-interface {v6, v1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b0

    .line 36
    invoke-static {v2, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_ae

    const-string v6, "Received duplicate message: "

    .line 37
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_a6

    invoke-virtual {v6, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_ab

    :cond_a6
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_ab
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ae
    const/4 v1, 0x1

    goto :goto_c5

    .line 39
    :cond_b0
    sget-object v6, Lcom/google/firebase/messaging/FirebaseMessagingService;->zza:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->size()I

    move-result v6

    const/16 v10, 0xa

    if-lt v6, v10, :cond_bf

    .line 40
    sget-object v6, Lcom/google/firebase/messaging/FirebaseMessagingService;->zza:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 41
    :cond_bf
    sget-object v6, Lcom/google/firebase/messaging/FirebaseMessagingService;->zza:Ljava/util/Queue;

    invoke-interface {v6, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_85

    :goto_c5
    if-nez v1, :cond_1ca

    const-string v1, "message_type"

    .line 45
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "gcm"

    if-nez v1, :cond_d2

    move-object v1, v6

    :cond_d2
    const/4 v10, -0x1

    .line 48
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_200

    goto :goto_100

    :sswitch_db
    const-string v6, "send_event"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_100

    const/4 v9, 0x2

    goto :goto_101

    :sswitch_e5
    const-string v6, "send_error"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_100

    const/4 v9, 0x3

    goto :goto_101

    :sswitch_ef
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_100

    goto :goto_101

    :sswitch_f6
    const-string v6, "deleted_messages"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_100

    const/4 v9, 0x1

    goto :goto_101

    :cond_100
    :goto_100
    const/4 v9, -0x1

    :goto_101
    if-eqz v9, :cond_14f

    if-eq v9, v7, :cond_14a

    if-eq v9, v5, :cond_141

    if-eq v9, v8, :cond_125

    const-string p1, "Received message with unknown type: "

    .line 96
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_11a

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_120

    :cond_11a
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    :goto_120
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1ca

    .line 88
    :cond_125
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_131

    const-string v0, "message_id"

    .line 90
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    :cond_131
    new-instance v1, Lcom/google/firebase/messaging/SendException;

    const-string v4, "error"

    .line 93
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/google/firebase/messaging/SendException;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onSendError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_1ca

    .line 84
    :cond_141
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onMessageSent(Ljava/lang/String;)V

    goto/16 :goto_1ca

    .line 82
    :cond_14a
    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onDeletedMessages()V

    goto/16 :goto_1ca

    .line 49
    :cond_14f
    invoke-static {p1}, Lcom/google/firebase/messaging/zzr;->zzd(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_158

    .line 50
    invoke-static {p1, v4}, Lcom/google/firebase/messaging/zzr;->zza(Landroid/content/Intent;Lcom/google/android/datatransport/Transport;)V

    .line 51
    :cond_158
    invoke-static {p1}, Lcom/google/firebase/messaging/zzr;->zze(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_17b

    .line 52
    sget-object v0, Lcom/google/firebase/messaging/FirebaseMessaging;->zza:Lcom/google/android/datatransport/TransportFactory;

    if-eqz v0, :cond_176

    .line 55
    const-class v1, Ljava/lang/String;

    const-string v4, "json"

    .line 56
    invoke-static {v4}, Lcom/google/android/datatransport/Encoding;->of(Ljava/lang/String;)Lcom/google/android/datatransport/Encoding;

    move-result-object v4

    sget-object v5, Lcom/google/firebase/messaging/zzp;->zza:Lcom/google/android/datatransport/Transformer;

    const-string v6, "FCM_CLIENT_EVENT_LOGGING"

    .line 57
    invoke-interface {v0, v6, v1, v4, v5}, Lcom/google/android/datatransport/TransportFactory;->getTransport(Ljava/lang/String;Ljava/lang/Class;Lcom/google/android/datatransport/Encoding;Lcom/google/android/datatransport/Transformer;)Lcom/google/android/datatransport/Transport;

    move-result-object v0

    .line 58
    invoke-static {p1, v0}, Lcom/google/firebase/messaging/zzr;->zza(Landroid/content/Intent;Lcom/google/android/datatransport/Transport;)V

    goto :goto_17b

    :cond_176
    const-string v0, "TransportFactory is null. Skip exporting message delivery metrics to Big Query"

    .line 60
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_17b
    :goto_17b
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_186

    .line 64
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_186
    const-string v1, "androidx.contentpager.content.wakelockid"

    .line 65
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 66
    invoke-static {v0}, Lcom/google/firebase/messaging/zzt;->zza(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_1c2

    .line 67
    new-instance v1, Lcom/google/firebase/messaging/zzt;

    invoke-direct {v1, v0}, Lcom/google/firebase/messaging/zzt;-><init>(Landroid/os/Bundle;)V

    .line 68
    new-instance v4, Lcom/google/android/gms/common/util/concurrent/NamedThreadFactory;

    const-string v5, "Firebase-Messaging-Network-Io"

    invoke-direct {v4, v5}, Lcom/google/android/gms/common/util/concurrent/NamedThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    .line 70
    new-instance v5, Lcom/google/firebase/messaging/zzc;

    invoke-direct {v5, p0, v1, v4}, Lcom/google/firebase/messaging/zzc;-><init>(Landroid/content/Context;Lcom/google/firebase/messaging/zzt;Ljava/util/concurrent/Executor;)V

    .line 71
    :try_start_1a6
    invoke-virtual {v5}, Lcom/google/firebase/messaging/zzc;->zza()Z

    move-result v1
    :try_end_1aa
    .catchall {:try_start_1a6 .. :try_end_1aa} :catchall_1bd

    if-eqz v1, :cond_1b0

    .line 72
    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    goto :goto_1ca

    .line 74
    :cond_1b0
    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 78
    invoke-static {p1}, Lcom/google/firebase/messaging/zzr;->zzd(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1c2

    .line 79
    invoke-static {p1}, Lcom/google/firebase/messaging/zzr;->zzc(Landroid/content/Intent;)V

    goto :goto_1c2

    :catchall_1bd
    move-exception p1

    .line 76
    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 77
    throw p1

    .line 80
    :cond_1c2
    :goto_1c2
    new-instance p1, Lcom/google/firebase/messaging/RemoteMessage;

    invoke-direct {p1, v0}, Lcom/google/firebase/messaging/RemoteMessage;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V

    .line 98
    :cond_1ca
    :goto_1ca
    :try_start_1ca
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 99
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v3, v0, v1, p1}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_1d7
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1ca .. :try_end_1d7} :catch_1dc
    .catch Ljava/lang/InterruptedException; {:try_start_1ca .. :try_end_1d7} :catch_1da
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1ca .. :try_end_1d7} :catch_1d8

    return-void

    :catch_1d8
    move-exception p1

    goto :goto_1dd

    :catch_1da
    move-exception p1

    goto :goto_1dd

    :catch_1dc
    move-exception p1

    .line 102
    :goto_1dd
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x14

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Message ack failed: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :sswitch_data_200
    .sparse-switch
        -0x7aedf14e -> :sswitch_f6
        0x18f11 -> :sswitch_ef
        0x308f3e91 -> :sswitch_e5
        0x3090df23 -> :sswitch_db
    .end sparse-switch
.end method
