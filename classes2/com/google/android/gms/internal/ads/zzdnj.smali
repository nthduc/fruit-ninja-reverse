.class public final Lcom/google/android/gms/internal/ads/zzdnj;
.super Lcom/google/android/gms/internal/ads/zzavb;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final zzbuu:Ljava/lang/String;

.field private final zzfuj:Lcom/google/android/gms/internal/ads/zzdoj;

.field private final zzgsl:Landroid/content/Context;

.field private final zzhcx:Lcom/google/android/gms/internal/ads/zzdnb;

.field private final zzhcy:Lcom/google/android/gms/internal/ads/zzdmc;

.field private zzhcz:Lcom/google/android/gms/internal/ads/zzcjg;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdnb;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdmc;Lcom/google/android/gms/internal/ads/zzdoj;)V
    .registers 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzavb;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnj;->zzbuu:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdnj;->zzhcx:Lcom/google/android/gms/internal/ads/zzdnb;

    .line 4
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdnj;->zzhcy:Lcom/google/android/gms/internal/ads/zzdmc;

    .line 5
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdnj;->zzfuj:Lcom/google/android/gms/internal/ads/zzdoj;

    .line 6
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdnj;->zzgsl:Landroid/content/Context;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdnj;)Lcom/google/android/gms/internal/ads/zzcjg;
    .registers 1

    .line 74
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdnj;->zzhcz:Lcom/google/android/gms/internal/ads/zzcjg;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdnj;Lcom/google/android/gms/internal/ads/zzcjg;)Lcom/google/android/gms/internal/ads/zzcjg;
    .registers 2

    .line 75
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnj;->zzhcz:Lcom/google/android/gms/internal/ads/zzcjg;

    return-object p1
.end method

.method private final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzvg;Lcom/google/android/gms/internal/ads/zzavg;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string v0, "#008 Must be called on the main UI thread."

    .line 60
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnj;->zzhcy:Lcom/google/android/gms/internal/ads/zzdmc;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzdmc;->zzb(Lcom/google/android/gms/internal/ads/zzavg;)V

    .line 62
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkr()Lcom/google/android/gms/internal/ads/zzayu;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdnj;->zzgsl:Landroid/content/Context;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayu;->zzbe(Landroid/content/Context;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2d

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzvg;->zzcho:Lcom/google/android/gms/internal/ads/zzuy;

    if-nez p2, :cond_2d

    const-string p1, "Failed to load the ad because app ID is missing."

    .line 63
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfc(Ljava/lang/String;)V

    .line 64
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnj;->zzhcy:Lcom/google/android/gms/internal/ads/zzdmc;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzdpg;->zzhfz:Lcom/google/android/gms/internal/ads/zzdpg;

    .line 65
    invoke-static {p2, v0, v0}, Lcom/google/android/gms/internal/ads/zzdpe;->zza(Lcom/google/android/gms/internal/ads/zzdpg;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzva;)Lcom/google/android/gms/internal/ads/zzva;

    move-result-object p2

    .line 66
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdmc;->zzk(Lcom/google/android/gms/internal/ads/zzva;)V
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_4b

    .line 67
    monitor-exit p0

    return-void

    .line 68
    :cond_2d
    :try_start_2d
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdnj;->zzhcz:Lcom/google/android/gms/internal/ads/zzcjg;
    :try_end_2f
    .catchall {:try_start_2d .. :try_end_2f} :catchall_4b

    if-eqz p2, :cond_33

    .line 69
    monitor-exit p0

    return-void

    .line 70
    :cond_33
    :try_start_33
    new-instance p2, Lcom/google/android/gms/internal/ads/zzdmy;

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzdmy;-><init>(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnj;->zzhcx:Lcom/google/android/gms/internal/ads/zzdnb;

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ads/zzdnb;->zzea(I)V

    .line 72
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzdnj;->zzhcx:Lcom/google/android/gms/internal/ads/zzdnb;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnj;->zzbuu:Ljava/lang/String;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdnl;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdnl;-><init>(Lcom/google/android/gms/internal/ads/zzdnj;)V

    invoke-virtual {p3, p1, v0, p2, v1}, Lcom/google/android/gms/internal/ads/zzdnb;->zza(Lcom/google/android/gms/internal/ads/zzvg;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdad;Lcom/google/android/gms/internal/ads/zzdag;)Z
    :try_end_49
    .catchall {:try_start_33 .. :try_end_49} :catchall_4b

    .line 73
    monitor-exit p0

    return-void

    :catchall_4b
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final getAdMetadata()Landroid/os/Bundle;
    .registers 2

    const-string v0, "#008 Must be called on the main UI thread."

    .line 40
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnj;->zzhcz:Lcom/google/android/gms/internal/ads/zzcjg;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcjg;->getAdMetadata()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_e
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final declared-synchronized getMediationAdapterClassName()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 24
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnj;->zzhcz:Lcom/google/android/gms/internal/ads/zzcjg;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnj;->zzhcz:Lcom/google/android/gms/internal/ads/zzcjg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbqo;->zzaix()Lcom/google/android/gms/internal/ads/zzbty;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnj;->zzhcz:Lcom/google/android/gms/internal/ads/zzcjg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbqo;->zzaix()Lcom/google/android/gms/internal/ads/zzbty;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbty;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_1c

    monitor-exit p0

    return-object v0

    :cond_19
    const/4 v0, 0x0

    .line 26
    monitor-exit p0

    return-object v0

    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final isLoaded()Z
    .registers 2

    const-string v0, "#008 Must be called on the main UI thread."

    .line 27
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnj;->zzhcz:Lcom/google/android/gms/internal/ads/zzcjg;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcjg;->zzanu()Z

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, 0x1

    return v0

    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string v0, "#008 Must be called on the main UI thread."

    .line 14
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnj;->zzhcz:Lcom/google/android/gms/internal/ads/zzcjg;

    if-nez v0, :cond_1d

    const-string p1, "Rewarded can not be shown before loaded"

    .line 16
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfe(Ljava/lang/String;)V

    .line 17
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnj;->zzhcy:Lcom/google/android/gms/internal/ads/zzdmc;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzdpg;->zzhge:Lcom/google/android/gms/internal/ads/zzdpg;

    const/4 v0, 0x0

    .line 18
    invoke-static {p2, v0, v0}, Lcom/google/android/gms/internal/ads/zzdpe;->zza(Lcom/google/android/gms/internal/ads/zzdpg;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzva;)Lcom/google/android/gms/internal/ads/zzva;

    move-result-object p2

    .line 19
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdmc;->zzj(Lcom/google/android/gms/internal/ads/zzva;)V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_2a

    .line 20
    monitor-exit p0

    return-void

    .line 21
    :cond_1d
    :try_start_1d
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnj;->zzhcz:Lcom/google/android/gms/internal/ads/zzcjg;

    invoke-virtual {v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzcjg;->zzb(ZLandroid/app/Activity;)Z
    :try_end_28
    .catchall {:try_start_1d .. :try_end_28} :catchall_2a

    .line 23
    monitor-exit p0

    return-void

    :catchall_2a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzavd;)V
    .registers 3

    const-string v0, "#008 Must be called on the main UI thread."

    .line 29
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnj;->zzhcy:Lcom/google/android/gms/internal/ads/zzdmc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdmc;->zzb(Lcom/google/android/gms/internal/ads/zzavd;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzavl;)V
    .registers 3

    const-string v0, "#008 Must be called on the main UI thread."

    .line 32
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnj;->zzhcy:Lcom/google/android/gms/internal/ads/zzdmc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdmc;->zzb(Lcom/google/android/gms/internal/ads/zzavl;)V

    return-void
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzavt;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    const-string v0, "#008 Must be called on the main UI thread."

    .line 44
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnj;->zzfuj:Lcom/google/android/gms/internal/ads/zzdoj;

    .line 46
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzavt;->zzdvz:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdoj;->zzdvz:Ljava/lang/String;

    .line 47
    sget-object v1, Lcom/google/android/gms/internal/ads/zzabb;->zzcon:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 48
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v1

    .line 49
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 50
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzavt;->zzdwa:Ljava/lang/String;

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzdoj;->zzdwa:Ljava/lang/String;
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 51
    :cond_22
    monitor-exit p0

    return-void

    :catchall_24
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzvg;Lcom/google/android/gms/internal/ads/zzavg;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 8
    :try_start_1
    sget v0, Lcom/google/android/gms/internal/ads/zzdoc;->zzheq:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzdnj;->zza(Lcom/google/android/gms/internal/ads/zzvg;Lcom/google/android/gms/internal/ads/zzavg;I)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 9
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzyh;)V
    .registers 4

    if-nez p1, :cond_9

    .line 36
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnj;->zzhcy:Lcom/google/android/gms/internal/ads/zzdmc;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzdmc;->zza(Lcom/google/android/gms/ads/reward/AdMetadataListener;)V

    return-void

    .line 38
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnj;->zzhcy:Lcom/google/android/gms/internal/ads/zzdmc;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdni;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzdni;-><init>(Lcom/google/android/gms/internal/ads/zzdnj;Lcom/google/android/gms/internal/ads/zzyh;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdmc;->zza(Lcom/google/android/gms/ads/reward/AdMetadataListener;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzyi;)V
    .registers 3

    const-string v0, "setOnPaidEventListener must be called on the main UI thread."

    .line 57
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnj;->zzhcy:Lcom/google/android/gms/internal/ads/zzdmc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdmc;->zzc(Lcom/google/android/gms/internal/ads/zzyi;)V

    return-void
.end method

.method public final declared-synchronized zzb(Lcom/google/android/gms/internal/ads/zzvg;Lcom/google/android/gms/internal/ads/zzavg;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 10
    :try_start_1
    sget v0, Lcom/google/android/gms/internal/ads/zzdoc;->zzher:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzdnj;->zza(Lcom/google/android/gms/internal/ads/zzvg;Lcom/google/android/gms/internal/ads/zzavg;I)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 11
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzh(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 12
    :try_start_2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzdnj;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Z)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 13
    monitor-exit p0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzki()Lcom/google/android/gms/internal/ads/zzyn;
    .registers 3

    .line 52
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzcxl:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 53
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 54
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    return-object v1

    .line 56
    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnj;->zzhcz:Lcom/google/android/gms/internal/ads/zzcjg;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbqo;->zzaix()Lcom/google/android/gms/internal/ads/zzbty;

    move-result-object v0

    return-object v0

    :cond_1d
    return-object v1
.end method

.method public final zzqz()Lcom/google/android/gms/internal/ads/zzaux;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "#008 Must be called on the main UI thread."

    .line 42
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnj;->zzhcz:Lcom/google/android/gms/internal/ads/zzcjg;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcjg;->zzqz()Lcom/google/android/gms/internal/ads/zzaux;

    move-result-object v0

    return-object v0

    :cond_e
    const/4 v0, 0x0

    return-object v0
.end method
