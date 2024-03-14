.class public final Lcom/google/android/gms/internal/ads/zzdjo;
.super Lcom/google/android/gms/internal/ads/zzxf;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzw;
.implements Lcom/google/android/gms/internal/ads/zzbwb;
.implements Lcom/google/android/gms/internal/ads/zzsc;


# instance fields
.field private final zzbot:Lcom/google/android/gms/internal/ads/zzbbx;

.field private final zzbuu:Ljava/lang/String;

.field private final zzfpw:Landroid/view/ViewGroup;

.field private final zzgpt:Lcom/google/android/gms/internal/ads/zzbix;

.field private final zzgsl:Landroid/content/Context;

.field private zzgzs:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final zzgzt:Lcom/google/android/gms/internal/ads/zzdjm;

.field private final zzgzu:Lcom/google/android/gms/internal/ads/zzdkc;

.field private zzgzv:J

.field private zzgzw:Lcom/google/android/gms/internal/ads/zzbnh;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field protected zzgzx:Lcom/google/android/gms/internal/ads/zzbnv;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbix;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdjm;Lcom/google/android/gms/internal/ads/zzdkc;Lcom/google/android/gms/internal/ads/zzbbx;)V
    .registers 8

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzxf;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjo;->zzgzs:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjo;->zzfpw:Landroid/view/ViewGroup;

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdjo;->zzgpt:Lcom/google/android/gms/internal/ads/zzbix;

    .line 5
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdjo;->zzgsl:Landroid/content/Context;

    .line 6
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdjo;->zzbuu:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdjo;->zzgzt:Lcom/google/android/gms/internal/ads/zzdjm;

    .line 8
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdjo;->zzgzu:Lcom/google/android/gms/internal/ads/zzdkc;

    .line 9
    invoke-virtual {p5, p0}, Lcom/google/android/gms/internal/ads/zzdkc;->zza(Lcom/google/android/gms/internal/ads/zzbwb;)V

    .line 10
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdjo;->zzbot:Lcom/google/android/gms/internal/ads/zzbbx;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdjo;)Landroid/view/ViewGroup;
    .registers 1

    .line 129
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdjo;->zzfpw:Landroid/view/ViewGroup;

    return-object p0
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzbnv;)Lcom/google/android/gms/ads/internal/overlay/zzo;
    .registers 6

    .line 28
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbnv;->zzabc()Z

    move-result p1

    .line 29
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzctv:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 30
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 31
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 32
    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/zzr;

    invoke-direct {v1}, Lcom/google/android/gms/ads/internal/overlay/zzr;-><init>()V

    const/16 v2, 0x32

    .line 33
    iput v2, v1, Lcom/google/android/gms/ads/internal/overlay/zzr;->size:I

    const/4 v2, 0x0

    if-eqz p1, :cond_22

    move v3, v0

    goto :goto_23

    :cond_22
    const/4 v3, 0x0

    .line 34
    :goto_23
    iput v3, v1, Lcom/google/android/gms/ads/internal/overlay/zzr;->paddingLeft:I

    if-eqz p1, :cond_29

    const/4 p1, 0x0

    goto :goto_2a

    :cond_29
    move p1, v0

    .line 35
    :goto_2a
    iput p1, v1, Lcom/google/android/gms/ads/internal/overlay/zzr;->paddingRight:I

    .line 36
    iput v2, v1, Lcom/google/android/gms/ads/internal/overlay/zzr;->paddingTop:I

    .line 37
    iput v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzr;->paddingBottom:I

    .line 38
    new-instance p1, Lcom/google/android/gms/ads/internal/overlay/zzo;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjo;->zzgsl:Landroid/content/Context;

    invoke-direct {p1, v0, v1, p0}, Lcom/google/android/gms/ads/internal/overlay/zzo;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/zzr;Lcom/google/android/gms/ads/internal/overlay/zzw;)V

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdjo;Lcom/google/android/gms/internal/ads/zzbnv;)Lcom/google/android/gms/ads/internal/overlay/zzo;
    .registers 2

    .line 131
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdjo;->zza(Lcom/google/android/gms/internal/ads/zzbnv;)Lcom/google/android/gms/ads/internal/overlay/zzo;

    move-result-object p0

    return-object p0
.end method

.method private final zzaso()V
    .registers 6

    .line 61
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjo;->zzgzs:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 62
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjo;->zzgzx:Lcom/google/android/gms/internal/ads/zzbnv;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbnv;->zzahz()Lcom/google/android/gms/internal/ads/zzsm;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 63
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjo;->zzgzu:Lcom/google/android/gms/internal/ads/zzdkc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdjo;->zzgzx:Lcom/google/android/gms/internal/ads/zzbnv;

    .line 64
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbnv;->zzahz()Lcom/google/android/gms/internal/ads/zzsm;

    move-result-object v1

    .line 65
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdkc;->zzb(Lcom/google/android/gms/internal/ads/zzsm;)V

    .line 66
    :cond_1f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjo;->zzgzu:Lcom/google/android/gms/internal/ads/zzdkc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdkc;->onAdClosed()V

    .line 67
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjo;->zzfpw:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 68
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjo;->zzgzw:Lcom/google/android/gms/internal/ads/zzbnh;

    if-eqz v0, :cond_34

    .line 70
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzku()Lcom/google/android/gms/internal/ads/zzrg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzrg;->zzb(Lcom/google/android/gms/internal/ads/zzrh;)V

    .line 71
    :cond_34
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjo;->zzgzx:Lcom/google/android/gms/internal/ads/zzbnv;

    if-eqz v0, :cond_46

    .line 72
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzky()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzdjo;->zzgzv:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbnv;->zzfd(J)V

    .line 73
    :cond_46
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdjo;->destroy()V

    :cond_49
    return-void
.end method

.method private final zzasp()Lcom/google/android/gms/internal/ads/zzvn;
    .registers 3

    .line 75
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjo;->zzgsl:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdjo;->zzgzx:Lcom/google/android/gms/internal/ads/zzbnv;

    .line 76
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbnv;->zzahw()Lcom/google/android/gms/internal/ads/zzdnu;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 77
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdoq;->zzb(Landroid/content/Context;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzvn;

    move-result-object v0

    return-object v0
.end method

.method private static zzb(Lcom/google/android/gms/internal/ads/zzbnv;)Landroid/widget/RelativeLayout$LayoutParams;
    .registers 3

    .line 39
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    .line 40
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 41
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbnv;->zzabc()Z

    move-result p0

    if-eqz p0, :cond_14

    const/16 p0, 0xb

    goto :goto_16

    :cond_14
    const/16 p0, 0x9

    .line 43
    :goto_16
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzdjo;)Lcom/google/android/gms/internal/ads/zzbbx;
    .registers 1

    .line 130
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdjo;->zzbot:Lcom/google/android/gms/internal/ads/zzbbx;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzdjo;Lcom/google/android/gms/internal/ads/zzbnv;)V
    .registers 2

    .line 133
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdjo;->zzc(Lcom/google/android/gms/internal/ads/zzbnv;)V

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzdjo;)Lcom/google/android/gms/internal/ads/zzvn;
    .registers 1

    .line 134
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdjo;->zzasp()Lcom/google/android/gms/internal/ads/zzvn;

    move-result-object p0

    return-object p0
.end method

.method private final zzc(Lcom/google/android/gms/internal/ads/zzbnv;)V
    .registers 2

    .line 45
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzbnv;->zza(Lcom/google/android/gms/internal/ads/zzsc;)V

    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zzbnv;)Landroid/widget/RelativeLayout$LayoutParams;
    .registers 1

    .line 132
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdjo;->zzb(Lcom/google/android/gms/internal/ads/zzbnv;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zzdjo;)Lcom/google/android/gms/internal/ads/zzdkc;
    .registers 1

    .line 135
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdjo;->zzgzu:Lcom/google/android/gms/internal/ads/zzdkc;

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized destroy()V
    .registers 2

    monitor-enter p0

    :try_start_1
    const-string v0, "destroy must be called on the main UI thread."

    .line 78
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjo;->zzgzx:Lcom/google/android/gms/internal/ads/zzbnv;

    if-eqz v0, :cond_f

    .line 80
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjo;->zzgzx:Lcom/google/android/gms/internal/ads/zzbnv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbqo;->destroy()V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 81
    :cond_f
    monitor-exit p0

    return-void

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getAdMetadata()Landroid/os/Bundle;
    .registers 2

    .line 113
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final declared-synchronized getAdUnitId()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 100
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjo;->zzbuu:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getMediationAdapterClassName()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 96
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized getVideoController()Lcom/google/android/gms/internal/ads/zzyo;
    .registers 2

    monitor-enter p0

    .line 109
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized isLoading()Z
    .registers 2

    monitor-enter p0

    .line 99
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjo;->zzgzt:Lcom/google/android/gms/internal/ads/zzdjm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdjw;->isLoading()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final isReady()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final declared-synchronized pause()V
    .registers 2

    monitor-enter p0

    :try_start_1
    const-string v0, "pause must be called on the main UI thread."

    .line 82
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 83
    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized resume()V
    .registers 2

    monitor-enter p0

    :try_start_1
    const-string v0, "resume must be called on the main UI thread."

    .line 84
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 85
    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setImmersiveMode(Z)V
    .registers 2

    return-void
.end method

.method public final declared-synchronized setManualImpressionsEnabled(Z)V
    .registers 2

    monitor-enter p0

    .line 108
    monitor-exit p0

    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public final showInterstitial()V
    .registers 1

    return-void
.end method

.method public final stopLoading()V
    .registers 1

    return-void
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzaak;)V
    .registers 2

    monitor-enter p0

    .line 110
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzaby;)V
    .registers 2

    monitor-enter p0

    .line 111
    monitor-exit p0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzari;)V
    .registers 2

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzaro;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzaug;)V
    .registers 2

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzsh;)V
    .registers 3

    .line 86
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjo;->zzgzu:Lcom/google/android/gms/internal/ads/zzdkc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdkc;->zzb(Lcom/google/android/gms/internal/ads/zzsh;)V

    return-void
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzvn;)V
    .registers 2

    monitor-enter p0

    :try_start_1
    const-string p1, "setAdSize must be called on the main UI thread."

    .line 94
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 95
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzvs;)V
    .registers 3

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjo;->zzgzt:Lcom/google/android/gms/internal/ads/zzdjm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdjw;->zza(Lcom/google/android/gms/internal/ads/zzvs;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzwo;)V
    .registers 2

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzwt;)V
    .registers 2

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzxj;)V
    .registers 2

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzxk;)V
    .registers 2

    return-void
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzxq;)V
    .registers 2

    monitor-enter p0

    .line 107
    monitor-exit p0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzyi;)V
    .registers 2

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzyu;)V
    .registers 2

    return-void
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzvg;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string v0, "loadAd must be called on the main UI thread."

    .line 16
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 17
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkr()Lcom/google/android/gms/internal/ads/zzayu;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjo;->zzgsl:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayu;->zzbe(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzvg;->zzcho:Lcom/google/android/gms/internal/ads/zzuy;

    if-nez v0, :cond_29

    const-string p1, "Failed to load the ad because app ID is missing."

    .line 18
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfc(Ljava/lang/String;)V

    .line 19
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdjo;->zzgzu:Lcom/google/android/gms/internal/ads/zzdkc;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdpg;->zzhfz:Lcom/google/android/gms/internal/ads/zzdpg;

    const/4 v2, 0x0

    .line 20
    invoke-static {v0, v2, v2}, Lcom/google/android/gms/internal/ads/zzdpe;->zza(Lcom/google/android/gms/internal/ads/zzdpg;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzva;)Lcom/google/android/gms/internal/ads/zzva;

    move-result-object v0

    .line 21
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzdkc;->zzk(Lcom/google/android/gms/internal/ads/zzva;)V
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_4c

    .line 22
    monitor-exit p0

    return v1

    .line 23
    :cond_29
    :try_start_29
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdjo;->isLoading()Z

    move-result v0
    :try_end_2d
    .catchall {:try_start_29 .. :try_end_2d} :catchall_4c

    if-eqz v0, :cond_31

    .line 24
    monitor-exit p0

    return v1

    .line 25
    :cond_31
    :try_start_31
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjo;->zzgzs:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdjt;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdjt;-><init>(Lcom/google/android/gms/internal/ads/zzdjo;)V

    .line 27
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdjo;->zzgzt:Lcom/google/android/gms/internal/ads/zzdjm;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdjo;->zzbuu:Ljava/lang/String;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzdjs;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zzdjs;-><init>(Lcom/google/android/gms/internal/ads/zzdjo;)V

    invoke-virtual {v1, p1, v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzdjw;->zza(Lcom/google/android/gms/internal/ads/zzvg;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdad;Lcom/google/android/gms/internal/ads/zzdag;)Z

    move-result p1
    :try_end_4a
    .catchall {:try_start_31 .. :try_end_4a} :catchall_4c

    monitor-exit p0

    return p1

    :catchall_4c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzajx()V
    .registers 5

    .line 51
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjo;->zzgzx:Lcom/google/android/gms/internal/ads/zzbnv;

    if-nez v0, :cond_5

    return-void

    .line 53
    :cond_5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzky()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdjo;->zzgzv:J

    .line 54
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjo;->zzgzx:Lcom/google/android/gms/internal/ads/zzbnv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbnv;->zzaho()I

    move-result v0

    if-gtz v0, :cond_18

    return-void

    .line 57
    :cond_18
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbnh;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdjo;->zzgpt:Lcom/google/android/gms/internal/ads/zzbix;

    .line 58
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbix;->zzadj()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzky()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbnh;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/common/util/Clock;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzdjo;->zzgzw:Lcom/google/android/gms/internal/ads/zzbnh;

    .line 59
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdjo;->zzgzw:Lcom/google/android/gms/internal/ads/zzbnh;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdjq;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzdjq;-><init>(Lcom/google/android/gms/internal/ads/zzdjo;)V

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzbnh;->zza(ILjava/lang/Runnable;)V

    return-void
.end method

.method final synthetic zzasq()V
    .registers 3

    .line 126
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjo;->zzgpt:Lcom/google/android/gms/internal/ads/zzbix;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbix;->zzadi()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdjr;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdjr;-><init>(Lcom/google/android/gms/internal/ads/zzdjo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method final synthetic zzasr()V
    .registers 1

    .line 128
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdjo;->zzaso()V

    return-void
.end method

.method public final zzbp(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public final zzke()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .registers 2

    const-string v0, "getAdFrame must be called on the main UI thread."

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjo;->zzfpw:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized zzkf()V
    .registers 1

    monitor-enter p0

    .line 106
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized zzkg()Lcom/google/android/gms/internal/ads/zzvn;
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string v0, "getAdSize must be called on the main UI thread."

    .line 88
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjo;->zzgzx:Lcom/google/android/gms/internal/ads/zzbnv;

    if-eqz v0, :cond_1c

    .line 90
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjo;->zzgsl:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdjo;->zzgzx:Lcom/google/android/gms/internal/ads/zzbnv;

    .line 91
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbnv;->zzahw()Lcom/google/android/gms/internal/ads/zzdnu;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 92
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdoq;->zzb(Landroid/content/Context;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzvn;

    move-result-object v0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1f

    monitor-exit p0

    return-object v0

    :cond_1c
    const/4 v0, 0x0

    .line 93
    monitor-exit p0

    return-object v0

    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzkh()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 97
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized zzki()Lcom/google/android/gms/internal/ads/zzyn;
    .registers 2

    monitor-enter p0

    .line 98
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzkj()Lcom/google/android/gms/internal/ads/zzxk;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzkk()Lcom/google/android/gms/internal/ads/zzwt;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzmt()V
    .registers 1

    .line 49
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdjo;->zzaso()V

    return-void
.end method

.method public final zzus()V
    .registers 1

    .line 47
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdjo;->zzaso()V

    return-void
.end method
