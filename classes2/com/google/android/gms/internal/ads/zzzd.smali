.class public Lcom/google/android/gms/internal/ads/zzzd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzzd$zza;
    }
.end annotation


# static fields
.field private static zzckj:Lcom/google/android/gms/internal/ads/zzzd;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "InternalMobileAds.class"
    .end annotation
.end field


# instance fields
.field private final lock:Ljava/lang/Object;

.field private zzcki:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;",
            ">;"
        }
    .end annotation
.end field

.field private zzckk:Lcom/google/android/gms/internal/ads/zzxs;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private zzckl:Z

.field private zzckm:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

.field private zzckn:Lcom/google/android/gms/ads/RequestConfiguration;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private zzcko:Lcom/google/android/gms/ads/initialization/InitializationStatus;

.field private zzzh:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzzd;->lock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzzd;->zzckl:Z

    .line 4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzzd;->zzzh:Z

    .line 5
    new-instance v0, Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;-><init>()V

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->build()Lcom/google/android/gms/ads/RequestConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzzd;->zzckn:Lcom/google/android/gms/ads/RequestConfiguration;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzzd;->zzcki:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzzd;Ljava/util/List;)Lcom/google/android/gms/ads/initialization/InitializationStatus;
    .registers 2

    .line 178
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzzd;->zzd(Ljava/util/List;)Lcom/google/android/gms/ads/initialization/InitializationStatus;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzzd;)Ljava/util/ArrayList;
    .registers 1

    .line 179
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzzd;->zzcki:Ljava/util/ArrayList;

    return-object p0
.end method

.method private final zza(Lcom/google/android/gms/ads/RequestConfiguration;)V
    .registers 4
    .param p1    # Lcom/google/android/gms/ads/RequestConfiguration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzd;->zzckk:Lcom/google/android/gms/internal/ads/zzxs;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaae;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzaae;-><init>(Lcom/google/android/gms/ads/RequestConfiguration;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzxs;->zza(Lcom/google/android/gms/internal/ads/zzaae;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception p1

    const-string v0, "Unable to set request configuration parcel."

    .line 163
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzzd;Z)Z
    .registers 2

    const/4 p1, 0x0

    .line 176
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzzd;->zzckl:Z

    return p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzzd;Z)Z
    .registers 2

    const/4 p1, 0x1

    .line 177
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzzd;->zzzh:Z

    return p1
.end method

.method private static zzd(Ljava/util/List;)Lcom/google/android/gms/ads/initialization/InitializationStatus;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzaiq;",
            ">;)",
            "Lcom/google/android/gms/ads/initialization/InitializationStatus;"
        }
    .end annotation

    .line 142
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 143
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzaiq;

    .line 144
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzaiq;->zzdfz:Ljava/lang/String;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzaiy;

    .line 145
    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzaiq;->zzdga:Z

    if-eqz v4, :cond_20

    sget-object v4, Lcom/google/android/gms/ads/initialization/AdapterStatus$State;->READY:Lcom/google/android/gms/ads/initialization/AdapterStatus$State;

    goto :goto_22

    :cond_20
    sget-object v4, Lcom/google/android/gms/ads/initialization/AdapterStatus$State;->NOT_READY:Lcom/google/android/gms/ads/initialization/AdapterStatus$State;

    :goto_22
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzaiq;->description:Ljava/lang/String;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzaiq;->zzdgb:I

    invoke-direct {v3, v4, v5, v1}, Lcom/google/android/gms/internal/ads/zzaiy;-><init>(Lcom/google/android/gms/ads/initialization/AdapterStatus$State;Ljava/lang/String;I)V

    .line 146
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 148
    :cond_2d
    new-instance p0, Lcom/google/android/gms/internal/ads/zzaix;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzaix;-><init>(Ljava/util/Map;)V

    return-object p0
.end method

.method private final zzg(Landroid/content/Context;)V
    .registers 4
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzd;->zzckk:Lcom/google/android/gms/internal/ads/zzxs;

    if-nez v0, :cond_16

    .line 167
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpu()Lcom/google/android/gms/internal/ads/zzvx;

    move-result-object v0

    .line 168
    new-instance v1, Lcom/google/android/gms/internal/ads/zzwj;

    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzwj;-><init>(Lcom/google/android/gms/internal/ads/zzvx;Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 170
    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzwn;->zzd(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    .line 171
    check-cast p1, Lcom/google/android/gms/internal/ads/zzxs;

    .line 172
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzd;->zzckk:Lcom/google/android/gms/internal/ads/zzxs;

    :cond_16
    return-void
.end method

.method public static zzqw()Lcom/google/android/gms/internal/ads/zzzd;
    .registers 2

    .line 9
    const-class v0, Lcom/google/android/gms/internal/ads/zzzd;

    monitor-enter v0

    .line 10
    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzzd;->zzckj:Lcom/google/android/gms/internal/ads/zzzd;

    if-nez v1, :cond_e

    .line 11
    new-instance v1, Lcom/google/android/gms/internal/ads/zzzd;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzzd;-><init>()V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzzd;->zzckj:Lcom/google/android/gms/internal/ads/zzzd;

    .line 12
    :cond_e
    sget-object v1, Lcom/google/android/gms/internal/ads/zzzd;->zzckj:Lcom/google/android/gms/internal/ads/zzzd;

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    .line 13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method


# virtual methods
.method public final disableMediationAdapterInitialization(Landroid/content/Context;)V
    .registers 3

    .line 135
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzd;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 136
    :try_start_3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzzd;->zzg(Landroid/content/Context;)V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_13

    .line 137
    :try_start_6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzzd;->zzckk:Lcom/google/android/gms/internal/ads/zzxs;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzxs;->zzqj()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_c
    .catchall {:try_start_6 .. :try_end_b} :catchall_13

    goto :goto_11

    :catch_c
    :try_start_c
    const-string p1, "Unable to disable mediation adapter initialization."

    .line 140
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzfc(Ljava/lang/String;)V

    .line 141
    :goto_11
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_13

    throw p1
.end method

.method public final getInitializationStatus()Lcom/google/android/gms/ads/initialization/InitializationStatus;
    .registers 4

    .line 126
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzd;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 127
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzzd;->zzckk:Lcom/google/android/gms/internal/ads/zzxs;

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    const-string v2, "MobileAds.initialize() must be called prior to getting initialization status."

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_2b

    .line 128
    :try_start_f
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzzd;->zzcko:Lcom/google/android/gms/ads/initialization/InitializationStatus;

    if-eqz v1, :cond_17

    .line 129
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzzd;->zzcko:Lcom/google/android/gms/ads/initialization/InitializationStatus;
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_15} :catch_23
    .catchall {:try_start_f .. :try_end_15} :catchall_2b

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_2b

    return-object v1

    .line 130
    :cond_17
    :try_start_17
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzzd;->zzckk:Lcom/google/android/gms/internal/ads/zzxs;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzxs;->zzqi()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzzd;->zzd(Ljava/util/List;)Lcom/google/android/gms/ads/initialization/InitializationStatus;

    move-result-object v1
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_21} :catch_23
    .catchall {:try_start_17 .. :try_end_21} :catchall_2b

    :try_start_21
    monitor-exit v0

    return-object v1

    :catch_23
    const-string v1, "Unable to get Initialization status."

    .line 132
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzfc(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 133
    monitor-exit v0

    return-object v1

    :catchall_2b
    move-exception v1

    .line 134
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_21 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method public final getRequestConfiguration()Lcom/google/android/gms/ads/RequestConfiguration;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzd;->zzckn:Lcom/google/android/gms/ads/RequestConfiguration;

    return-object v0
.end method

.method public final getRewardedVideoAdInstance(Landroid/content/Context;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;
    .registers 6

    .line 57
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzd;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 58
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzzd;->zzckm:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    if-eqz v1, :cond_b

    .line 59
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzzd;->zzckm:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    monitor-exit v0

    return-object p1

    .line 60
    :cond_b
    new-instance v1, Lcom/google/android/gms/internal/ads/zzanc;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzanc;-><init>()V

    .line 61
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpu()Lcom/google/android/gms/internal/ads/zzvx;

    move-result-object v2

    .line 62
    new-instance v3, Lcom/google/android/gms/internal/ads/zzwk;

    invoke-direct {v3, v2, p1, v1}, Lcom/google/android/gms/internal/ads/zzwk;-><init>(Lcom/google/android/gms/internal/ads/zzvx;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzanb;)V

    const/4 v1, 0x0

    .line 64
    invoke-virtual {v3, p1, v1}, Lcom/google/android/gms/internal/ads/zzwn;->zzd(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object v1

    .line 65
    check-cast v1, Lcom/google/android/gms/internal/ads/zzaud;

    .line 67
    new-instance v2, Lcom/google/android/gms/internal/ads/zzauo;

    invoke-direct {v2, p1, v1}, Lcom/google/android/gms/internal/ads/zzauo;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaud;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzzd;->zzckm:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    .line 68
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzzd;->zzckm:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    monitor-exit v0

    return-object p1

    :catchall_2b
    move-exception p1

    .line 69
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw p1
.end method

.method public final getVersionString()Ljava/lang/String;
    .registers 4

    .line 112
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzd;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 113
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzzd;->zzckk:Lcom/google/android/gms/internal/ads/zzxs;

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    const-string v2, "MobileAds.initialize() must be called prior to getting version string."

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_25

    .line 114
    :try_start_f
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzzd;->zzckk:Lcom/google/android/gms/internal/ads/zzxs;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzxs;->getVersionString()Ljava/lang/String;

    move-result-object v1

    .line 115
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdwf;->zzhi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_19} :catch_1b
    .catchall {:try_start_f .. :try_end_19} :catchall_25

    :try_start_19
    monitor-exit v0

    return-object v1

    :catch_1b
    move-exception v1

    const-string v2, "Unable to get version string."

    .line 117
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v1, ""

    .line 118
    monitor-exit v0

    return-object v1

    :catchall_25
    move-exception v1

    .line 119
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_19 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public final openDebugMenu(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    .line 105
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzd;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 106
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzzd;->zzckk:Lcom/google/android/gms/internal/ads/zzxs;

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    const-string v2, "MobileAds.initialize() must be called prior to opening debug menu."

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_21

    .line 107
    :try_start_f
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzzd;->zzckk:Lcom/google/android/gms/internal/ads/zzxs;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzxs;->zzb(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_18} :catch_19
    .catchall {:try_start_f .. :try_end_18} :catchall_21

    goto :goto_1f

    :catch_19
    move-exception p1

    :try_start_1a
    const-string p2, "Unable to open debug menu."

    .line 110
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 111
    :goto_1f
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_1a .. :try_end_23} :catchall_21

    throw p1
.end method

.method public final registerRtbAdapter(Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;",
            ">;)V"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzd;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 121
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzzd;->zzckk:Lcom/google/android/gms/internal/ads/zzxs;

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzxs;->zzci(Ljava/lang/String;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_c} :catch_f
    .catchall {:try_start_3 .. :try_end_c} :catchall_d

    goto :goto_15

    :catchall_d
    move-exception p1

    goto :goto_17

    :catch_f
    move-exception p1

    :try_start_10
    const-string v1, "Unable to register RtbAdapter"

    .line 124
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 125
    :goto_15
    monitor-exit v0

    return-void

    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_d

    throw p1
.end method

.method public final setAppMuted(Z)V
    .registers 5

    .line 88
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzd;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 89
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzzd;->zzckk:Lcom/google/android/gms/internal/ads/zzxs;

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    const-string v2, "MobileAds.initialize() must be called prior to setting app muted state."

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_1d

    .line 90
    :try_start_f
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzzd;->zzckk:Lcom/google/android/gms/internal/ads/zzxs;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzxs;->setAppMuted(Z)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_15
    .catchall {:try_start_f .. :try_end_14} :catchall_1d

    goto :goto_1b

    :catch_15
    move-exception p1

    :try_start_16
    const-string v1, "Unable to set app mute state."

    .line 93
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    :goto_1b
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method public final setAppVolume(F)V
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    cmpg-float v2, v2, p1

    if-gtz v2, :cond_f

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_f

    const/4 v2, 0x1

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    :goto_10
    const-string v3, "The app volume must be a value between 0 and 1 inclusive."

    .line 70
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 71
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzzd;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 72
    :try_start_18
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzzd;->zzckk:Lcom/google/android/gms/internal/ads/zzxs;

    if-eqz v3, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    const-string v1, "MobileAds.initialize() must be called prior to setting the app volume."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_31

    .line 73
    :try_start_23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzd;->zzckk:Lcom/google/android/gms/internal/ads/zzxs;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzxs;->setAppVolume(F)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_28} :catch_29
    .catchall {:try_start_23 .. :try_end_28} :catchall_31

    goto :goto_2f

    :catch_29
    move-exception p1

    :try_start_2a
    const-string v0, "Unable to set app volume."

    .line 76
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    :goto_2f
    monitor-exit v2

    return-void

    :catchall_31
    move-exception p1

    monitor-exit v2
    :try_end_33
    .catchall {:try_start_2a .. :try_end_33} :catchall_31

    throw p1
.end method

.method public final setRequestConfiguration(Lcom/google/android/gms/ads/RequestConfiguration;)V
    .registers 6
    .param p1    # Lcom/google/android/gms/ads/RequestConfiguration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    const-string v1, "Null passed to setRequestConfiguration."

    .line 150
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 151
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzd;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 152
    :try_start_d
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzzd;->zzckn:Lcom/google/android/gms/ads/RequestConfiguration;

    .line 153
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzd;->zzckn:Lcom/google/android/gms/ads/RequestConfiguration;

    .line 154
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzzd;->zzckk:Lcom/google/android/gms/internal/ads/zzxs;

    if-nez v2, :cond_17

    .line 155
    monitor-exit v0

    return-void

    .line 156
    :cond_17
    invoke-virtual {v1}, Lcom/google/android/gms/ads/RequestConfiguration;->getTagForChildDirectedTreatment()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/ads/RequestConfiguration;->getTagForChildDirectedTreatment()I

    move-result v3

    if-ne v2, v3, :cond_2b

    .line 157
    invoke-virtual {v1}, Lcom/google/android/gms/ads/RequestConfiguration;->getTagForUnderAgeOfConsent()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/RequestConfiguration;->getTagForUnderAgeOfConsent()I

    move-result v2

    if-eq v1, v2, :cond_2e

    .line 158
    :cond_2b
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzzd;->zza(Lcom/google/android/gms/ads/RequestConfiguration;)V

    .line 159
    :cond_2e
    monitor-exit v0

    return-void

    :catchall_30
    move-exception p1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_d .. :try_end_32} :catchall_30

    throw p1
.end method

.method public final zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;)V
    .registers 8

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzd;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 15
    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzzd;->zzckl:Z

    if-eqz v1, :cond_14

    if-eqz p3, :cond_12

    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzzd;->zzqw()Lcom/google/android/gms/internal/ads/zzzd;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzzd;->zzcki:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    :cond_12
    monitor-exit v0

    return-void

    .line 19
    :cond_14
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzzd;->zzzh:Z

    if-eqz v1, :cond_23

    if-eqz p3, :cond_21

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzzd;->getInitializationStatus()Lcom/google/android/gms/ads/initialization/InitializationStatus;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;->onInitializationComplete(Lcom/google/android/gms/ads/initialization/InitializationStatus;)V

    .line 22
    :cond_21
    monitor-exit v0

    return-void

    :cond_23
    const/4 v1, 0x1

    .line 23
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzzd;->zzckl:Z

    if-eqz p3, :cond_31

    .line 25
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzzd;->zzqw()Lcom/google/android/gms/internal/ads/zzzd;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzzd;->zzcki:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_c7

    :cond_31
    if-eqz p1, :cond_bf

    .line 28
    :try_start_33
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzamt;->zztr()Lcom/google/android/gms/internal/ads/zzamt;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzamt;->zzd(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Thread;

    .line 29
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzzd;->zzg(Landroid/content/Context;)V

    if-eqz p3, :cond_4a

    .line 31
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzzd;->zzckk:Lcom/google/android/gms/internal/ads/zzxs;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzzd$zza;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/android/gms/internal/ads/zzzd$zza;-><init>(Lcom/google/android/gms/internal/ads/zzzd;Lcom/google/android/gms/internal/ads/zzzg;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzxs;->zza(Lcom/google/android/gms/internal/ads/zzait;)V

    .line 32
    :cond_4a
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzzd;->zzckk:Lcom/google/android/gms/internal/ads/zzxs;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzanc;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzanc;-><init>()V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzxs;->zza(Lcom/google/android/gms/internal/ads/zzanb;)V

    .line 33
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzzd;->zzckk:Lcom/google/android/gms/internal/ads/zzxs;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzxs;->initialize()V

    .line 34
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzzd;->zzckk:Lcom/google/android/gms/internal/ads/zzxs;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzzc;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/internal/ads/zzzc;-><init>(Lcom/google/android/gms/internal/ads/zzzd;Landroid/content/Context;)V

    .line 35
    invoke-static {v2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    .line 36
    invoke-interface {v1, p2, v2}, Lcom/google/android/gms/internal/ads/zzxs;->zza(Ljava/lang/String;Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 37
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzzd;->zzckn:Lcom/google/android/gms/ads/RequestConfiguration;

    invoke-virtual {p2}, Lcom/google/android/gms/ads/RequestConfiguration;->getTagForChildDirectedTreatment()I

    move-result p2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_78

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzzd;->zzckn:Lcom/google/android/gms/ads/RequestConfiguration;

    .line 38
    invoke-virtual {p2}, Lcom/google/android/gms/ads/RequestConfiguration;->getTagForUnderAgeOfConsent()I

    move-result p2

    if-eq p2, v1, :cond_7d

    .line 39
    :cond_78
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzzd;->zzckn:Lcom/google/android/gms/ads/RequestConfiguration;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzzd;->zza(Lcom/google/android/gms/ads/RequestConfiguration;)V

    .line 40
    :cond_7d
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzabb;->initialize(Landroid/content/Context;)V

    .line 41
    sget-object p1, Lcom/google/android/gms/internal/ads/zzabb;->zzcuq:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 42
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object p1

    .line 43
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_bd

    .line 45
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzzd;->getVersionString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "0"

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_bd

    const-string p1, "Google Mobile Ads SDK initialization functionality unavailable for this session. Ad requests can be made at any time."

    .line 47
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzfc(Ljava/lang/String;)V

    .line 49
    new-instance p1, Lcom/google/android/gms/internal/ads/zzze;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzze;-><init>(Lcom/google/android/gms/internal/ads/zzzd;)V

    .line 50
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzd;->zzcko:Lcom/google/android/gms/ads/initialization/InitializationStatus;

    if-eqz p3, :cond_bd

    .line 52
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbbg;->zzaah:Landroid/os/Handler;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzzf;

    invoke-direct {p2, p0, p3}, Lcom/google/android/gms/internal/ads/zzzf;-><init>(Lcom/google/android/gms/internal/ads/zzzd;Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_b6
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_b6} :catch_b7
    .catchall {:try_start_33 .. :try_end_b6} :catchall_c7

    goto :goto_bd

    :catch_b7
    move-exception p1

    :try_start_b8
    const-string p2, "MobileAdsSettingManager initialization failed"

    .line 55
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    :cond_bd
    :goto_bd
    monitor-exit v0

    return-void

    .line 27
    :cond_bf
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Context cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_c7
    move-exception p1

    .line 56
    monitor-exit v0
    :try_end_c9
    .catchall {:try_start_b8 .. :try_end_c9} :catchall_c7

    throw p1
.end method

.method final synthetic zza(Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;)V
    .registers 3

    .line 174
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzd;->zzcko:Lcom/google/android/gms/ads/initialization/InitializationStatus;

    invoke-interface {p1, v0}, Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;->onInitializationComplete(Lcom/google/android/gms/ads/initialization/InitializationStatus;)V

    return-void
.end method

.method public final zzqg()F
    .registers 5

    .line 79
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzd;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 80
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzzd;->zzckk:Lcom/google/android/gms/internal/ads/zzxs;

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v1, :cond_b

    .line 81
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1a

    return v2

    .line 82
    :cond_b
    :try_start_b
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzzd;->zzckk:Lcom/google/android/gms/internal/ads/zzxs;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzxs;->zzqg()F

    move-result v2
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_11} :catch_12
    .catchall {:try_start_b .. :try_end_11} :catchall_1a

    goto :goto_18

    :catch_12
    move-exception v1

    :try_start_13
    const-string v3, "Unable to get app volume."

    .line 85
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    :goto_18
    monitor-exit v0

    return v2

    :catchall_1a
    move-exception v1

    .line 87
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public final zzqh()Z
    .registers 5

    .line 96
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzd;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 97
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzzd;->zzckk:Lcom/google/android/gms/internal/ads/zzxs;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 98
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_19

    return v2

    .line 99
    :cond_a
    :try_start_a
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzzd;->zzckk:Lcom/google/android/gms/internal/ads/zzxs;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzxs;->zzqh()Z

    move-result v2
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_10} :catch_11
    .catchall {:try_start_a .. :try_end_10} :catchall_19

    goto :goto_17

    :catch_11
    move-exception v1

    :try_start_12
    const-string v3, "Unable to get app mute state."

    .line 102
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    :goto_17
    monitor-exit v0

    return v2

    :catchall_19
    move-exception v1

    .line 104
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_19

    throw v1
.end method
