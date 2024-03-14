.class public final Lcom/google/android/gms/internal/ads/zzamt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# static fields
.field private static zzdjg:Lcom/google/android/gms/internal/ads/zzamt;


# instance fields
.field private zzdjh:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>()V
    .registers 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzdjh:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private static zza(Landroid/content/Context;Lcom/google/android/gms/measurement/api/AppMeasurementSdk;)V
    .registers 4

    :try_start_0
    const-string v0, "com.google.android.gms.ads.measurement.DynamiteMeasurementManager"

    .line 17
    sget-object v1, Lcom/google/android/gms/internal/ads/zzamy;->zzbxx:Lcom/google/android/gms/internal/ads/zzbbs;

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzbbt;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbbs;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbis;

    .line 18
    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzamu;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzamu;-><init>(Lcom/google/android/gms/measurement/api/AppMeasurementSdk;)V

    invoke-interface {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzbis;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbiq;)V
    :try_end_16
    .catch Lcom/google/android/gms/internal/ads/zzbbv; {:try_start_0 .. :try_end_16} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_16} :catch_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_17

    return-void

    :catch_17
    move-exception p0

    goto :goto_1c

    :catch_19
    move-exception p0

    goto :goto_1c

    :catch_1b
    move-exception p0

    :goto_1c
    const-string p1, "#007 Could not call remote method."

    .line 21
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic zze(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 33
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzabb;->initialize(Landroid/content/Context;)V

    .line 34
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 35
    sget-object v1, Lcom/google/android/gms/internal/ads/zzabb;->zzcns:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 37
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v1

    .line 38
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "measurementEnabled"

    .line 39
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "FA-Ads"

    const-string v2, "am"

    .line 41
    invoke-static {p0, v1, v2, p1, v0}, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->getInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    move-result-object p1

    .line 42
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzamt;->zza(Landroid/content/Context;Lcom/google/android/gms/measurement/api/AppMeasurementSdk;)V

    return-void
.end method

.method private static zzn(Landroid/content/Context;)Z
    .registers 2

    .line 23
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const-string v0, "com.google.firebase.analytics.FirebaseAnalytics"

    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_9} :catch_b

    const/4 p0, 0x1

    return p0

    :catch_b
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic zzo(Landroid/content/Context;)V
    .registers 3

    .line 27
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzabb;->initialize(Landroid/content/Context;)V

    .line 28
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzcnx:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 29
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 30
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzamt;->zzn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 31
    invoke-static {p0}, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzamt;->zza(Landroid/content/Context;Lcom/google/android/gms/measurement/api/AppMeasurementSdk;)V

    :cond_22
    return-void
.end method

.method public static zztr()Lcom/google/android/gms/internal/ads/zzamt;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzamt;->zzdjg:Lcom/google/android/gms/internal/ads/zzamt;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzamt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzamt;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzamt;->zzdjg:Lcom/google/android/gms/internal/ads/zzamt;

    .line 3
    :cond_b
    sget-object v0, Lcom/google/android/gms/internal/ads/zzamt;->zzdjg:Lcom/google/android/gms/internal/ads/zzamt;

    return-object v0
.end method


# virtual methods
.method public final zzd(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Thread;
    .registers 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzdjh:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 p1, 0x0

    return-object p1

    .line 9
    :cond_c
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzamw;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzamw;-><init>(Lcom/google/android/gms/internal/ads/zzamt;Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 10
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-object v0
.end method

.method public final zzm(Landroid/content/Context;)Ljava/lang/Thread;
    .registers 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzdjh:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 p1, 0x0

    return-object p1

    .line 14
    :cond_c
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzamv;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzamv;-><init>(Lcom/google/android/gms/internal/ads/zzamt;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 15
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-object v0
.end method
