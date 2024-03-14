.class public Lcom/google/firebase/messaging/MessageForwardingService;
.super Landroid/app/IntentService;
.source "MessageForwardingService.java"


# static fields
.field public static final ACTION_REMOTE_INTENT:Ljava/lang/String; = "com.google.android.c2dm.intent.RECEIVE"

.field private static final TAG:Ljava/lang/String; = "FIREBASE_MSG_FWDR"


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "FIREBASE_MSG_FWDR"

    .line 34
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static handleIntent(Landroid/content/Context;Landroid/content/Intent;Lcom/google/firebase/messaging/cpp/MessageWriter;)V
    .registers 8

    const-string v0, "(null)"

    if-nez p1, :cond_7

    const-string v1, "null intent"

    goto :goto_13

    .line 51
    :cond_7
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_f

    move-object v1, v0

    goto :goto_13

    :cond_f
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    :goto_13
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "onHandleIntent "

    if-eqz v2, :cond_24

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_29

    :cond_24
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_29
    const-string v2, "FIREBASE_MSG_FWDR"

    .line 46
    invoke-static {v2, v1}, Lcom/google/firebase/messaging/cpp/DebugLogging;->log(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_9f

    .line 53
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9f

    .line 54
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9f

    .line 55
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "extras: "

    if-nez v1, :cond_4b

    goto :goto_4f

    .line 56
    :cond_4b
    invoke-virtual {v1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4f
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_5e

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_63

    :cond_5e
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_63
    invoke-static {v2, v0}, Lcom/google/firebase/messaging/cpp/DebugLogging;->log(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_9f

    .line 58
    new-instance v0, Lcom/google/firebase/messaging/RemoteMessage;

    invoke-direct {v0, v1}, Lcom/google/firebase/messaging/RemoteMessage;-><init>(Landroid/os/Bundle;)V

    const-string v1, "message: "

    .line 60
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_82

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_88

    :cond_82
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    :goto_88
    invoke-static {v2, v1}, Lcom/google/firebase/messaging/cpp/DebugLogging;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {v0}, Lcom/google/firebase/messaging/RemoteMessage;->getFrom()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9f

    invoke-virtual {v0}, Lcom/google/firebase/messaging/RemoteMessage;->getMessageId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9f

    const/4 v1, 0x1

    .line 63
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p0, v0, v1, p1}, Lcom/google/firebase/messaging/cpp/MessageWriter;->writeMessage(Landroid/content/Context;Lcom/google/firebase/messaging/RemoteMessage;ZLandroid/net/Uri;)V

    :cond_9f
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 3

    .line 40
    invoke-static {}, Lcom/google/firebase/messaging/cpp/MessageWriter;->defaultInstance()Lcom/google/firebase/messaging/cpp/MessageWriter;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/firebase/messaging/MessageForwardingService;->handleIntent(Landroid/content/Context;Landroid/content/Intent;Lcom/google/firebase/messaging/cpp/MessageWriter;)V

    return-void
.end method
