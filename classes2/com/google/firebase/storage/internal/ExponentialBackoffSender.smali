.class public Lcom/google/firebase/storage/internal/ExponentialBackoffSender;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-storage@@19.1.1"


# static fields
.field private static final MAXIMUM_WAIT_TIME_MILLI:I = 0x7530

.field private static final NETWORK_STATUS_POLL_INTERVAL:I = 0x3e8

.field public static final RND_MAX:I = 0xfa

.field private static final TAG:Ljava/lang/String; = "ExponenentialBackoff"

.field static clock:Lcom/google/android/gms/common/util/Clock;

.field private static final random:Ljava/util/Random;

.field static sleeper:Lcom/google/firebase/storage/internal/Sleeper;


# instance fields
.field private final authProvider:Lcom/google/firebase/auth/internal/InternalAuthProvider;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private volatile canceled:Z

.field private final context:Landroid/content/Context;

.field private retryTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 39
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;->random:Ljava/util/Random;

    .line 40
    new-instance v0, Lcom/google/firebase/storage/internal/SleeperImpl;

    invoke-direct {v0}, Lcom/google/firebase/storage/internal/SleeperImpl;-><init>()V

    sput-object v0, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;->sleeper:Lcom/google/firebase/storage/internal/Sleeper;

    .line 41
    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->getInstance()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;->clock:Lcom/google/android/gms/common/util/Clock;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/firebase/auth/internal/InternalAuthProvider;J)V
    .registers 5
    .param p2    # Lcom/google/firebase/auth/internal/InternalAuthProvider;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;->context:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;->authProvider:Lcom/google/firebase/auth/internal/InternalAuthProvider;

    .line 51
    iput-wide p3, p0, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;->retryTime:J

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    const/4 v0, 0x1

    .line 111
    iput-boolean v0, p0, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;->canceled:Z

    return-void
.end method

.method public isRetryableError(I)Z
    .registers 3

    const/16 v0, 0x1f4

    if-lt p1, v0, :cond_8

    const/16 v0, 0x258

    if-lt p1, v0, :cond_16

    :cond_8
    const/4 v0, -0x2

    if-eq p1, v0, :cond_16

    const/16 v0, 0x1ad

    if-eq p1, v0, :cond_16

    const/16 v0, 0x198

    if-ne p1, v0, :cond_14

    goto :goto_16

    :cond_14
    const/4 p1, 0x0

    goto :goto_17

    :cond_16
    :goto_16
    const/4 p1, 0x1

    :goto_17
    return p1
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    .line 115
    iput-boolean v0, p0, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;->canceled:Z

    return-void
.end method

.method public sendWithExponentialBackoff(Lcom/google/firebase/storage/network/NetworkRequest;)V
    .registers 3
    .param p1    # Lcom/google/firebase/storage/network/NetworkRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 62
    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;->sendWithExponentialBackoff(Lcom/google/firebase/storage/network/NetworkRequest;Z)V

    return-void
.end method

.method public sendWithExponentialBackoff(Lcom/google/firebase/storage/network/NetworkRequest;Z)V
    .registers 12
    .param p1    # Lcom/google/firebase/storage/network/NetworkRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "ExponenentialBackoff"

    .line 67
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v1, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;->clock:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;->retryTime:J

    add-long/2addr v1, v3

    if-eqz p2, :cond_1c

    .line 70
    iget-object v3, p0, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;->authProvider:Lcom/google/firebase/auth/internal/InternalAuthProvider;

    invoke-static {v3}, Lcom/google/firebase/storage/internal/Util;->getCurrentAuthToken(Lcom/google/firebase/auth/internal/InternalAuthProvider;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;->context:Landroid/content/Context;

    invoke-virtual {p1, v3, v4}, Lcom/google/firebase/storage/network/NetworkRequest;->performRequest(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_25

    .line 72
    :cond_1c
    iget-object v3, p0, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;->authProvider:Lcom/google/firebase/auth/internal/InternalAuthProvider;

    invoke-static {v3}, Lcom/google/firebase/storage/internal/Util;->getCurrentAuthToken(Lcom/google/firebase/auth/internal/InternalAuthProvider;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/google/firebase/storage/network/NetworkRequest;->performRequestStart(Ljava/lang/String;)V

    :goto_25
    const/16 v3, 0x3e8

    const/16 v4, 0x3e8

    .line 76
    :goto_29
    sget-object v5, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;->clock:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v5}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v5

    int-to-long v7, v4

    add-long/2addr v5, v7

    cmp-long v7, v5, v1

    if-gtz v7, :cond_99

    .line 77
    invoke-virtual {p1}, Lcom/google/firebase/storage/network/NetworkRequest;->isResultSuccess()Z

    move-result v5

    if-nez v5, :cond_99

    .line 78
    invoke-virtual {p1}, Lcom/google/firebase/storage/network/NetworkRequest;->getResultCode()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;->isRetryableError(I)Z

    move-result v5

    if-eqz v5, :cond_99

    .line 81
    :try_start_45
    sget-object v5, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;->sleeper:Lcom/google/firebase/storage/internal/Sleeper;

    sget-object v6, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;->random:Ljava/util/Random;

    const/16 v7, 0xfa

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    add-int/2addr v6, v4

    invoke-interface {v5, v6}, Lcom/google/firebase/storage/internal/Sleeper;->sleep(I)V
    :try_end_53
    .catch Ljava/lang/InterruptedException; {:try_start_45 .. :try_end_53} :catch_8d

    const/16 v5, 0x7530

    if-ge v4, v5, :cond_6d

    .line 89
    invoke-virtual {p1}, Lcom/google/firebase/storage/network/NetworkRequest;->getResultCode()I

    move-result v5

    const/4 v6, -0x2

    if-eq v5, v6, :cond_66

    mul-int/lit8 v4, v4, 0x2

    const-string v5, "network error occurred, backing off/sleeping."

    .line 91
    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6d

    :cond_66
    const-string v4, "network unavailable, sleeping."

    .line 94
    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x3e8

    .line 98
    :cond_6d
    :goto_6d
    iget-boolean v5, p0, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;->canceled:Z

    if-eqz v5, :cond_72

    return-void

    .line 101
    :cond_72
    invoke-virtual {p1}, Lcom/google/firebase/storage/network/NetworkRequest;->reset()V

    if-eqz p2, :cond_83

    .line 103
    iget-object v5, p0, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;->authProvider:Lcom/google/firebase/auth/internal/InternalAuthProvider;

    invoke-static {v5}, Lcom/google/firebase/storage/internal/Util;->getCurrentAuthToken(Lcom/google/firebase/auth/internal/InternalAuthProvider;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;->context:Landroid/content/Context;

    invoke-virtual {p1, v5, v6}, Lcom/google/firebase/storage/network/NetworkRequest;->performRequest(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_29

    .line 105
    :cond_83
    iget-object v5, p0, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;->authProvider:Lcom/google/firebase/auth/internal/InternalAuthProvider;

    invoke-static {v5}, Lcom/google/firebase/storage/internal/Util;->getCurrentAuthToken(Lcom/google/firebase/auth/internal/InternalAuthProvider;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/google/firebase/storage/network/NetworkRequest;->performRequestStart(Ljava/lang/String;)V

    goto :goto_29

    :catch_8d
    const-string p1, "thread interrupted during exponential backoff."

    .line 83
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_99
    return-void
.end method
