.class public final Lcom/google/firebase/iid/zzaw;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-iid@@20.1.7"


# static fields
.field private static zza:Lcom/google/firebase/iid/zzaw;


# instance fields
.field private zzb:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private zzc:Ljava/lang/Boolean;

.field private zzd:Ljava/lang/Boolean;

.field private final zze:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/firebase/iid/zzaw;->zzb:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/google/firebase/iid/zzaw;->zzc:Ljava/lang/Boolean;

    .line 7
    iput-object v0, p0, Lcom/google/firebase/iid/zzaw;->zzd:Ljava/lang/Boolean;

    .line 8
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/iid/zzaw;->zze:Ljava/util/Queue;

    return-void
.end method

.method public static declared-synchronized zza()Lcom/google/firebase/iid/zzaw;
    .registers 2

    const-class v0, Lcom/google/firebase/iid/zzaw;

    monitor-enter v0

    .line 1
    :try_start_3
    sget-object v1, Lcom/google/firebase/iid/zzaw;->zza:Lcom/google/firebase/iid/zzaw;

    if-nez v1, :cond_e

    .line 2
    new-instance v1, Lcom/google/firebase/iid/zzaw;

    invoke-direct {v1}, Lcom/google/firebase/iid/zzaw;-><init>()V

    sput-object v1, Lcom/google/firebase/iid/zzaw;->zza:Lcom/google/firebase/iid/zzaw;

    .line 3
    :cond_e
    sget-object v1, Lcom/google/firebase/iid/zzaw;->zza:Lcom/google/firebase/iid/zzaw;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private final zzb(Landroid/content/Context;Landroid/content/Intent;)I
    .registers 8

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/iid/zzaw;->zzc(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FirebaseInstanceId"

    if-eqz v0, :cond_30

    const/4 v2, 0x3

    .line 19
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_29

    const-string v2, "Restricting intent to a specific service: "

    .line 20
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_20

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_26

    :cond_20
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_26
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    :cond_29
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    :cond_30
    :try_start_30
    invoke-virtual {p0, p1}, Lcom/google/firebase/iid/zzaw;->zza(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 23
    invoke-static {p1, p2}, Lcom/google/firebase/iid/zzbd;->zza(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p1

    goto :goto_44

    .line 24
    :cond_3b
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p1

    const-string p2, "Missing wake lock permission, service start may be delayed"

    .line 25
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_44
    if-nez p1, :cond_4e

    const-string p1, "Error while delivering the message: ServiceIntent not found."

    .line 27
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4b
    .catch Ljava/lang/SecurityException; {:try_start_30 .. :try_end_4b} :catch_76
    .catch Ljava/lang/IllegalStateException; {:try_start_30 .. :try_end_4b} :catch_50

    const/16 p1, 0x194

    return p1

    :cond_4e
    const/4 p1, -0x1

    return p1

    :catch_50
    move-exception p1

    .line 34
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, 0x2d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Failed to start service while in background: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x192

    return p1

    :catch_76
    move-exception p1

    const-string p2, "Error while delivering the message to the serviceIntent"

    .line 31
    invoke-static {v1, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 p1, 0x191

    return p1
.end method

.method private final declared-synchronized zzc(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;
    .registers 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 36
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/iid/zzaw;->zzb:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 37
    iget-object p1, p0, Lcom/google/firebase/iid/zzaw;->zzb:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_a2

    monitor-exit p0

    return-object p1

    .line 38
    :cond_9
    :try_start_9
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_99

    .line 39
    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v1, :cond_1b

    goto/16 :goto_99

    .line 42
    :cond_1b
    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_62

    iget-object v1, p2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    if-nez v1, :cond_2e

    goto :goto_62

    .line 46
    :cond_2e
    iget-object v0, p2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_51

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_57

    :cond_51
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_57
    iput-object p1, p0, Lcom/google/firebase/iid/zzaw;->zzb:Ljava/lang/String;

    goto :goto_5e

    .line 48
    :cond_5a
    iget-object p1, p2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/firebase/iid/zzaw;->zzb:Ljava/lang/String;

    .line 49
    :goto_5e
    iget-object p1, p0, Lcom/google/firebase/iid/zzaw;->zzb:Ljava/lang/String;
    :try_end_60
    .catchall {:try_start_9 .. :try_end_60} :catchall_a2

    monitor-exit p0

    return-object p1

    :cond_62
    :goto_62
    :try_start_62
    const-string p1, "FirebaseInstanceId"

    .line 44
    iget-object v1, p2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object p2, p2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x5e

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Error resolving target intent service, skipping classname enforcement. Resolved service was: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_97
    .catchall {:try_start_62 .. :try_end_97} :catchall_a2

    .line 45
    monitor-exit p0

    return-object v0

    :cond_99
    :goto_99
    :try_start_99
    const-string p1, "FirebaseInstanceId"

    const-string p2, "Failed to resolve target intent service, skipping classname enforcement"

    .line 40
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a0
    .catchall {:try_start_99 .. :try_end_a0} :catchall_a2

    .line 41
    monitor-exit p0

    return-object v0

    :catchall_a2
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final zza(Landroid/content/Context;Landroid/content/Intent;)I
    .registers 5
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const-string v0, "FirebaseInstanceId"

    const/4 v1, 0x3

    .line 11
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "Starting service"

    .line 12
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :cond_e
    iget-object v0, p0, Lcom/google/firebase/iid/zzaw;->zze:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 14
    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.google.firebase.MESSAGING_EVENT"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/iid/zzaw;->zzb(Landroid/content/Context;Landroid/content/Intent;)I

    move-result p1

    return p1
.end method

.method final zza(Landroid/content/Context;)Z
    .registers 3

    .line 50
    iget-object v0, p0, Lcom/google/firebase/iid/zzaw;->zzc:Ljava/lang/Boolean;

    if-nez v0, :cond_15

    const-string v0, "android.permission.WAKE_LOCK"

    .line 52
    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/iid/zzaw;->zzc:Ljava/lang/Boolean;

    .line 53
    :cond_15
    iget-object p1, p0, Lcom/google/firebase/iid/zzaw;->zzc:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2b

    const/4 p1, 0x3

    const-string v0, "FirebaseInstanceId"

    .line 54
    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2b

    const-string p1, "Missing Permission: android.permission.WAKE_LOCK this should normally be included by the manifest merger, but may needed to be manually added to your manifest"

    .line 55
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_2b
    iget-object p1, p0, Lcom/google/firebase/iid/zzaw;->zzc:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public final zzb()Landroid/content/Intent;
    .registers 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/google/firebase/iid/zzaw;->zze:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method

.method final zzb(Landroid/content/Context;)Z
    .registers 3

    .line 57
    iget-object v0, p0, Lcom/google/firebase/iid/zzaw;->zzd:Ljava/lang/Boolean;

    if-nez v0, :cond_15

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    .line 59
    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/iid/zzaw;->zzd:Ljava/lang/Boolean;

    .line 60
    :cond_15
    iget-object p1, p0, Lcom/google/firebase/iid/zzaw;->zzc:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2b

    const/4 p1, 0x3

    const-string v0, "FirebaseInstanceId"

    .line 61
    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2b

    const-string p1, "Missing Permission: android.permission.ACCESS_NETWORK_STATE this should normally be included by the manifest merger, but may needed to be manually added to your manifest"

    .line 62
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_2b
    iget-object p1, p0, Lcom/google/firebase/iid/zzaw;->zzd:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method
