.class public final Lcom/google/firebase/iid/zza;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-iid@@20.1.7"

# interfaces
.implements Lcom/google/firebase/iid/zzb;


# static fields
.field private static final zza:Ljava/lang/Object;

.field private static zzb:Lcom/google/firebase/iid/zzbh;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field


# instance fields
.field private final zzc:Landroid/content/Context;

.field private final zzd:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/firebase/iid/zza;->zza:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/iid/zza;->zzc:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/firebase/iid/zza;->zzd:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static final synthetic zza(Landroid/content/Context;Landroid/content/Intent;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 31
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastO()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 32
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x192

    if-eq v0, v1, :cond_15

    goto :goto_24

    .line 34
    :cond_15
    invoke-static {p0, p1}, Lcom/google/firebase/iid/zza;->zzb(Landroid/content/Context;Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    .line 35
    invoke-static {}, Lcom/google/firebase/iid/zzh;->zza()Ljava/util/concurrent/Executor;

    move-result-object p1

    sget-object p2, Lcom/google/firebase/iid/zze;->zza:Lcom/google/android/gms/tasks/Continuation;

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/tasks/Task;->continueWith(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0

    :cond_24
    :goto_24
    return-object p2
.end method

.method private static zza(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/iid/zzbh;
    .registers 4

    .line 25
    sget-object v0, Lcom/google/firebase/iid/zza;->zza:Ljava/lang/Object;

    monitor-enter v0

    .line 26
    :try_start_3
    sget-object v1, Lcom/google/firebase/iid/zza;->zzb:Lcom/google/firebase/iid/zzbh;

    if-nez v1, :cond_e

    .line 27
    new-instance v1, Lcom/google/firebase/iid/zzbh;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/iid/zzbh;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v1, Lcom/google/firebase/iid/zza;->zzb:Lcom/google/firebase/iid/zzbh;

    .line 28
    :cond_e
    sget-object p0, Lcom/google/firebase/iid/zza;->zzb:Lcom/google/firebase/iid/zzbh;

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    .line 29
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method static final synthetic zza(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/Integer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 39
    invoke-static {}, Lcom/google/firebase/iid/zzaw;->zza()Lcom/google/firebase/iid/zzaw;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/iid/zzaw;->zza(Landroid/content/Context;Landroid/content/Intent;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static final synthetic zza(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Integer;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p0, -0x1

    .line 30
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static zzb(Landroid/content/Context;Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "FirebaseInstanceId"

    const/4 v1, 0x3

    .line 19
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "Binding to service"

    .line 20
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    const-string v0, "com.google.firebase.MESSAGING_EVENT"

    .line 21
    invoke-static {p0, v0}, Lcom/google/firebase/iid/zza;->zza(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/iid/zzbh;

    move-result-object p0

    .line 22
    invoke-virtual {p0, p1}, Lcom/google/firebase/iid/zzbh;->zza(Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    .line 23
    invoke-static {}, Lcom/google/firebase/iid/zzh;->zza()Ljava/util/concurrent/Executor;

    move-result-object p1

    sget-object v0, Lcom/google/firebase/iid/zzf;->zza:Lcom/google/android/gms/tasks/Continuation;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/tasks/Task;->continueWith(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method static final synthetic zzb(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Integer;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 p0, 0x193

    .line 38
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final zza(Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "gcm.rawData64"

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_15

    .line 7
    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    const-string v3, "rawData"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 8
    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 9
    :cond_15
    iget-object v0, p0, Lcom/google/firebase/iid/zza;->zzc:Landroid/content/Context;

    .line 10
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastO()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_2a

    .line 11
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x1a

    if-lt v1, v4, :cond_2a

    const/4 v1, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v1, 0x0

    .line 12
    :goto_2b
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v4

    const/high16 v5, 0x10000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_35

    const/4 v2, 0x1

    :cond_35
    if-eqz v1, :cond_3e

    if-nez v2, :cond_3e

    .line 14
    invoke-static {v0, p1}, Lcom/google/firebase/iid/zza;->zzb(Landroid/content/Context;Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 15
    :cond_3e
    iget-object v1, p0, Lcom/google/firebase/iid/zza;->zzd:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/google/firebase/iid/zzd;

    invoke-direct {v2, v0, p1}, Lcom/google/firebase/iid/zzd;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 16
    invoke-static {v1, v2}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    .line 17
    iget-object v2, p0, Lcom/google/firebase/iid/zza;->zzd:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/google/firebase/iid/zzc;

    invoke-direct {v3, v0, p1}, Lcom/google/firebase/iid/zzc;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
