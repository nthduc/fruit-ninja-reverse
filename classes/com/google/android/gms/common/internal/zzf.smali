.class final Lcom/google/android/gms/common/internal/zzf;
.super Lcom/google/android/gms/common/internal/GmsClientSupervisor;
.source "com.google.android.gms:play-services-basement@@17.3.0"


# instance fields
.field private final zza:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;",
            "Lcom/google/android/gms/common/internal/zzh;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "connectionStatus"
    .end annotation
.end field

.field private final zzb:Landroid/content/Context;

.field private final zzc:Landroid/os/Handler;

.field private final zzd:Lcom/google/android/gms/common/stats/ConnectionTracker;

.field private final zze:J

.field private final zzf:J


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/GmsClientSupervisor;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zza:Ljava/util/HashMap;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzb:Landroid/content/Context;

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/common/zzi;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/common/internal/zzg;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/common/internal/zzg;-><init>(Lcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/internal/zze;)V

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/common/zzi;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzc:Landroid/os/Handler;

    .line 5
    invoke-static {}, Lcom/google/android/gms/common/stats/ConnectionTracker;->getInstance()Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzf;->zzd:Lcom/google/android/gms/common/stats/ConnectionTracker;

    const-wide/16 v0, 0x1388

    .line 6
    iput-wide v0, p0, Lcom/google/android/gms/common/internal/zzf;->zze:J

    const-wide/32 v0, 0x493e0

    .line 7
    iput-wide v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzf:J

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/common/internal/zzf;)Ljava/util/HashMap;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzf;->zza:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/common/internal/zzf;)Landroid/os/Handler;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzf;->zzc:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/common/internal/zzf;)Landroid/content/Context;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzf;->zzb:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/common/internal/zzf;)Lcom/google/android/gms/common/stats/ConnectionTracker;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzf;->zzd:Lcom/google/android/gms/common/stats/ConnectionTracker;

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/common/internal/zzf;)J
    .registers 3

    .line 46
    iget-wide v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzf:J

    return-wide v0
.end method


# virtual methods
.method protected final zza(Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;Landroid/content/ServiceConnection;Ljava/lang/String;)Z
    .registers 8

    const-string v0, "ServiceConnection must not be null"

    .line 9
    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zza:Ljava/util/HashMap;

    monitor-enter v0

    .line 14
    :try_start_8
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzf;->zza:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/internal/zzh;

    if-nez v1, :cond_23

    .line 16
    new-instance v1, Lcom/google/android/gms/common/internal/zzh;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/common/internal/zzh;-><init>(Lcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;)V

    .line 17
    invoke-virtual {v1, p2, p2, p3}, Lcom/google/android/gms/common/internal/zzh;->zza(Landroid/content/ServiceConnection;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    .line 18
    invoke-virtual {v1, p3}, Lcom/google/android/gms/common/internal/zzh;->zza(Ljava/lang/String;)V

    .line 19
    iget-object p2, p0, Lcom/google/android/gms/common/internal/zzf;->zza:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4c

    .line 20
    :cond_23
    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzf;->zzc:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 21
    invoke-virtual {v1, p2}, Lcom/google/android/gms/common/internal/zzh;->zza(Landroid/content/ServiceConnection;)Z

    move-result v2

    if-nez v2, :cond_52

    .line 23
    invoke-virtual {v1, p2, p2, p3}, Lcom/google/android/gms/common/internal/zzh;->zza(Landroid/content/ServiceConnection;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    .line 24
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/zzh;->zzb()I

    move-result p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_41

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3d

    goto :goto_4c

    .line 27
    :cond_3d
    invoke-virtual {v1, p3}, Lcom/google/android/gms/common/internal/zzh;->zza(Ljava/lang/String;)V

    goto :goto_4c

    .line 25
    :cond_41
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/zzh;->zze()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/zzh;->zzd()Landroid/os/IBinder;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 28
    :goto_4c
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/zzh;->zza()Z

    move-result p1

    monitor-exit v0

    return p1

    .line 22
    :cond_52
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x51

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Trying to bind a GmsServiceConnection that was already connected before.  config="

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_77
    move-exception p1

    .line 29
    monitor-exit v0
    :try_end_79
    .catchall {:try_start_8 .. :try_end_79} :catchall_77

    throw p1
.end method

.method protected final zzb(Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;Landroid/content/ServiceConnection;Ljava/lang/String;)V
    .registers 7

    const-string v0, "ServiceConnection must not be null"

    .line 30
    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zza:Ljava/util/HashMap;

    monitor-enter v0

    .line 32
    :try_start_8
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzf;->zza:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/internal/zzh;

    if-eqz v1, :cond_56

    .line 35
    invoke-virtual {v1, p2}, Lcom/google/android/gms/common/internal/zzh;->zza(Landroid/content/ServiceConnection;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 37
    invoke-virtual {v1, p2, p3}, Lcom/google/android/gms/common/internal/zzh;->zza(Landroid/content/ServiceConnection;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/zzh;->zzc()Z

    move-result p2

    if-eqz p2, :cond_2f

    .line 39
    iget-object p2, p0, Lcom/google/android/gms/common/internal/zzf;->zzc:Landroid/os/Handler;

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 40
    iget-object p2, p0, Lcom/google/android/gms/common/internal/zzf;->zzc:Landroid/os/Handler;

    iget-wide v1, p0, Lcom/google/android/gms/common/internal/zzf;->zze:J

    invoke-virtual {p2, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 41
    :cond_2f
    monitor-exit v0

    return-void

    .line 36
    :cond_31
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x4c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Trying to unbind a GmsServiceConnection  that was not bound before.  config="

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 34
    :cond_56
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x32

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Nonexistent connection status for service config: "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_7b
    move-exception p1

    .line 41
    monitor-exit v0
    :try_end_7d
    .catchall {:try_start_8 .. :try_end_7d} :catchall_7b

    throw p1
.end method
