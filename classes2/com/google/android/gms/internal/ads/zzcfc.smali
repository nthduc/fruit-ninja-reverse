.class public final Lcom/google/android/gms/internal/ads/zzcfc;
.super Lcom/google/android/gms/internal/ads/zzaeh;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;
.implements Lcom/google/android/gms/internal/ads/zzcgc;


# static fields
.field public static final zzgba:[Ljava/lang/String;


# instance fields
.field private zzbnw:Landroid/widget/FrameLayout;

.field private zzckt:Lcom/google/android/gms/internal/ads/zzadz;

.field private zzdqc:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final zzeem:I

.field private zzepb:Z

.field private zzgaw:Lcom/google/android/gms/internal/ads/zzcdx;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private zzgax:Lcom/google/android/gms/internal/ads/zzqq;

.field private final zzgaz:Ljava/lang/String;

.field private zzgbb:Landroid/widget/FrameLayout;

.field private zzgbc:Lcom/google/android/gms/internal/ads/zzdzb;

.field private zzgbd:Landroid/view/View;

.field private zzgbe:Lcom/google/android/gms/dynamic/IObjectWrapper;

.field private zzgbf:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "2011"

    const-string v1, "1009"

    const-string v2, "3010"

    .line 152
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcfc;->zzgba:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;I)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaeh;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfc;->zzdqc:Ljava/util/Map;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfc;->zzgbe:Lcom/google/android/gms/dynamic/IObjectWrapper;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcfc;->zzepb:Z

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfc;->zzgbb:Landroid/widget/FrameLayout;

    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcfc;->zzbnw:Landroid/widget/FrameLayout;

    .line 7
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzcfc;->zzeem:I

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "com.google.android.gms.ads.formats.NativeContentAdView"

    .line 10
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_29

    const-string p2, "1007"

    goto :goto_3b

    :cond_29
    const-string p3, "com.google.android.gms.ads.formats.NativeAppInstallAdView"

    .line 12
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_34

    const-string p2, "2009"

    goto :goto_3b

    :cond_34
    const-string p3, "com.google.android.gms.ads.formats.UnifiedNativeAdView"

    .line 14
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    const-string p2, "3012"

    .line 16
    :goto_3b
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcfc;->zzgaz:Ljava/lang/String;

    .line 17
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzlo()Lcom/google/android/gms/internal/ads/zzbco;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzbco;->zza(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 18
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzlo()Lcom/google/android/gms/internal/ads/zzbco;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzbco;->zza(Landroid/view/View;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 19
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbbz;->zzeet:Lcom/google/android/gms/internal/ads/zzdzb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcfc;->zzgbc:Lcom/google/android/gms/internal/ads/zzdzb;

    .line 21
    new-instance p2, Lcom/google/android/gms/internal/ads/zzqq;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcfc;->zzgbb:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfc;->zzgbb:Landroid/widget/FrameLayout;

    invoke-direct {p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzqq;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 22
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcfc;->zzgax:Lcom/google/android/gms/internal/ads/zzqq;

    .line 23
    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 24
    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final declared-synchronized zzanh()V
    .registers 3

    monitor-enter p0

    .line 62
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfc;->zzgbc:Lcom/google/android/gms/internal/ads/zzdzb;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcfb;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcfb;-><init>(Lcom/google/android/gms/internal/ads/zzcfc;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdzb;->execute(Ljava/lang/Runnable;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 63
    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized destroy()V
    .registers 3

    monitor-enter p0

    .line 64
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcfc;->zzepb:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_31

    if-eqz v0, :cond_7

    .line 65
    monitor-exit p0

    return-void

    .line 66
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfc;->zzgaw:Lcom/google/android/gms/internal/ads/zzcdx;

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 67
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfc;->zzgaw:Lcom/google/android/gms/internal/ads/zzcdx;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzcdx;->zzb(Lcom/google/android/gms/internal/ads/zzcgc;)V

    .line 68
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfc;->zzgaw:Lcom/google/android/gms/internal/ads/zzcdx;

    .line 69
    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfc;->zzdqc:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 70
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfc;->zzgbb:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 71
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfc;->zzbnw:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 72
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfc;->zzdqc:Ljava/util/Map;

    .line 73
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfc;->zzgbb:Landroid/widget/FrameLayout;

    .line 74
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfc;->zzbnw:Landroid/widget/FrameLayout;

    .line 75
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfc;->zzgbd:Landroid/view/View;

    .line 76
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfc;->zzgax:Lcom/google/android/gms/internal/ads/zzqq;

    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcfc;->zzepb:Z
    :try_end_2f
    .catchall {:try_start_7 .. :try_end_2f} :catchall_31

    .line 78
    monitor-exit p0

    return-void

    :catchall_31
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onClick(Landroid/view/View;)V
    .registers 9

    monitor-enter p0

    .line 80
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfc;->zzgaw:Lcom/google/android/gms/internal/ads/zzcdx;

    if-eqz v0, :cond_1e

    .line 81
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfc;->zzgaw:Lcom/google/android/gms/internal/ads/zzcdx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcdx;->cancelUnconfirmedClick()V

    .line 82
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfc;->zzgaw:Lcom/google/android/gms/internal/ads/zzcdx;

    .line 83
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfc;->zzgbb:Landroid/widget/FrameLayout;

    .line 84
    move-object v3, v0

    check-cast v3, Landroid/widget/FrameLayout;

    .line 85
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcfc;->zzanc()Ljava/util/Map;

    move-result-object v4

    .line 86
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcfc;->zzand()Ljava/util/Map;

    move-result-object v5

    const/4 v6, 0x0

    move-object v2, p1

    .line 87
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzcdx;->zza(Landroid/view/View;Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    .line 88
    :cond_1e
    monitor-exit p0

    return-void

    :catchall_20
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onGlobalLayout()V
    .registers 6

    monitor-enter p0

    .line 100
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfc;->zzgaw:Lcom/google/android/gms/internal/ads/zzcdx;

    if-eqz v0, :cond_1e

    .line 101
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfc;->zzgaw:Lcom/google/android/gms/internal/ads/zzcdx;

    .line 102
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfc;->zzgbb:Landroid/widget/FrameLayout;

    .line 103
    check-cast v1, Landroid/widget/FrameLayout;

    .line 104
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcfc;->zzanc()Ljava/util/Map;

    move-result-object v2

    .line 105
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcfc;->zzand()Ljava/util/Map;

    move-result-object v3

    .line 106
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcfc;->zzgbb:Landroid/widget/FrameLayout;

    .line 107
    check-cast v4, Landroid/widget/FrameLayout;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzcdx;->zzz(Landroid/view/View;)Z

    move-result v4

    .line 108
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzcdx;->zzb(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    .line 109
    :cond_1e
    monitor-exit p0

    return-void

    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onScrollChanged()V
    .registers 6

    monitor-enter p0

    .line 110
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfc;->zzgaw:Lcom/google/android/gms/internal/ads/zzcdx;

    if-eqz v0, :cond_1e

    .line 111
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfc;->zzgaw:Lcom/google/android/gms/internal/ads/zzcdx;

    .line 112
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfc;->zzgbb:Landroid/widget/FrameLayout;

    .line 113
    check-cast v1, Landroid/widget/FrameLayout;

    .line 114
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcfc;->zzanc()Ljava/util/Map;

    move-result-object v2

    .line 115
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcfc;->zzand()Ljava/util/Map;

    move-result-object v3

    .line 116
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcfc;->zzgbb:Landroid/widget/FrameLayout;

    .line 117
    check-cast v4, Landroid/widget/FrameLayout;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzcdx;->zzz(Landroid/view/View;)Z

    move-result v4

    .line 118
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzcdx;->zzb(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    .line 119
    :cond_1e
    monitor-exit p0

    return-void

    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    monitor-enter p0

    .line 89
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfc;->zzgaw:Lcom/google/android/gms/internal/ads/zzcdx;

    if-eqz v0, :cond_e

    .line 90
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfc;->zzgaw:Lcom/google/android/gms/internal/ads/zzcdx;

    .line 91
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfc;->zzgbb:Landroid/widget/FrameLayout;

    .line 92
    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzcdx;->zza(Landroid/view/View;Landroid/view/MotionEvent;Landroid/view/View;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_11

    :cond_e
    const/4 p1, 0x0

    .line 93
    monitor-exit p0

    return p1

    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 3

    monitor-enter p0

    .line 46
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcfc;->zzepb:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_4a

    if-eqz v0, :cond_7

    .line 47
    monitor-exit p0

    return-void

    .line 48
    :cond_7
    :try_start_7
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    .line 49
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzcdx;

    if-nez v0, :cond_16

    const-string p1, "Not an instance of native engine. This is most likely a transient error"

    .line 50
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfe(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_4a

    .line 51
    monitor-exit p0

    return-void

    .line 52
    :cond_16
    :try_start_16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfc;->zzgaw:Lcom/google/android/gms/internal/ads/zzcdx;

    if-eqz v0, :cond_1f

    .line 53
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfc;->zzgaw:Lcom/google/android/gms/internal/ads/zzcdx;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzcdx;->zzb(Lcom/google/android/gms/internal/ads/zzcgc;)V

    .line 54
    :cond_1f
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcfc;->zzanh()V

    .line 55
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcdx;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfc;->zzgaw:Lcom/google/android/gms/internal/ads/zzcdx;

    .line 56
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfc;->zzgaw:Lcom/google/android/gms/internal/ads/zzcdx;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzcdx;->zza(Lcom/google/android/gms/internal/ads/zzcgc;)V

    .line 57
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfc;->zzgaw:Lcom/google/android/gms/internal/ads/zzcdx;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfc;->zzgbb:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzcdx;->zzaa(Landroid/view/View;)V

    .line 58
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfc;->zzgaw:Lcom/google/android/gms/internal/ads/zzcdx;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfc;->zzbnw:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzcdx;->zzab(Landroid/view/View;)V

    .line 59
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcfc;->zzgbf:Z

    if-eqz p1, :cond_48

    .line 60
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfc;->zzgaw:Lcom/google/android/gms/internal/ads/zzcdx;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcdx;->zzalx()Lcom/google/android/gms/internal/ads/zzced;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfc;->zzckt:Lcom/google/android/gms/internal/ads/zzadz;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzced;->zza(Lcom/google/android/gms/internal/ads/zzadz;)V
    :try_end_48
    .catchall {:try_start_16 .. :try_end_48} :catchall_4a

    .line 61
    :cond_48
    monitor-exit p0

    return-void

    :catchall_4a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzadz;)V
    .registers 3

    monitor-enter p0

    .line 136
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcfc;->zzepb:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1b

    if-eqz v0, :cond_7

    .line 137
    monitor-exit p0

    return-void

    :cond_7
    const/4 v0, 0x1

    .line 138
    :try_start_8
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcfc;->zzgbf:Z

    .line 139
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfc;->zzckt:Lcom/google/android/gms/internal/ads/zzadz;

    .line 140
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfc;->zzgaw:Lcom/google/android/gms/internal/ads/zzcdx;

    if-eqz v0, :cond_19

    .line 141
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfc;->zzgaw:Lcom/google/android/gms/internal/ads/zzcdx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcdx;->zzalx()Lcom/google/android/gms/internal/ads/zzced;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzced;->zza(Lcom/google/android/gms/internal/ads/zzadz;)V
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1b

    .line 142
    :cond_19
    monitor-exit p0

    return-void

    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zza(Ljava/lang/String;Landroid/view/View;Z)V
    .registers 5

    monitor-enter p0

    .line 28
    :try_start_1
    iget-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzcfc;->zzepb:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_41

    if-eqz p3, :cond_7

    .line 29
    monitor-exit p0

    return-void

    :cond_7
    if-nez p2, :cond_10

    .line 31
    :try_start_9
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcfc;->zzdqc:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_41

    monitor-exit p0

    return-void

    .line 32
    :cond_10
    :try_start_10
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcfc;->zzdqc:Ljava/util/Map;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "1098"

    .line 33
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3f

    const-string p3, "3011"

    .line 34
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2b

    goto :goto_3f

    .line 36
    :cond_2b
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzcfc;->zzeem:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbau;->zzdi(I)Z

    move-result p1

    if-eqz p1, :cond_36

    .line 37
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_36
    const/4 p1, 0x1

    .line 38
    invoke-virtual {p2, p1}, Landroid/view/View;->setClickable(Z)V

    .line 39
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_3d
    .catchall {:try_start_10 .. :try_end_3d} :catchall_41

    .line 40
    monitor-exit p0

    return-void

    .line 35
    :cond_3f
    :goto_3f
    monitor-exit p0

    return-void

    :catchall_41
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final synthetic zzahx()Landroid/view/View;
    .registers 2

    .line 144
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfc;->zzgbb:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public final zzana()Landroid/widget/FrameLayout;
    .registers 2

    .line 124
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfc;->zzbnw:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public final zzanb()Lcom/google/android/gms/internal/ads/zzqq;
    .registers 2

    .line 125
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfc;->zzgax:Lcom/google/android/gms/internal/ads/zzqq;

    return-object v0
.end method

.method public final declared-synchronized zzanc()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    .line 120
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfc;->zzdqc:Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzand()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    .line 121
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfc;->zzdqc:Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzane()Ljava/util/Map;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    .line 122
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized zzanf()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 123
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfc;->zzgaz:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzang()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfc;->zzgbe:Lcom/google/android/gms/dynamic/IObjectWrapper;

    return-object v0
.end method

.method final synthetic zzani()V
    .registers 5

    .line 146
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfc;->zzgbd:Landroid/view/View;

    if-nez v0, :cond_1d

    .line 147
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfc;->zzgbb:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfc;->zzgbd:Landroid/view/View;

    .line 148
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfc;->zzgbd:Landroid/view/View;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    :cond_1d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfc;->zzgbb:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfc;->zzgbd:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eq v0, v1, :cond_2e

    .line 150
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfc;->zzgbb:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfc;->zzgbd:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_2e
    return-void
.end method

.method public final declared-synchronized zzb(Ljava/lang/String;Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 4

    monitor-enter p0

    .line 26
    :try_start_1
    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzcfc;->zza(Ljava/lang/String;Landroid/view/View;Z)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 27
    monitor-exit p0

    return-void

    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzc(Lcom/google/android/gms/dynamic/IObjectWrapper;I)V
    .registers 3

    monitor-enter p0

    .line 79
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized zzcs(Ljava/lang/String;)Lcom/google/android/gms/dynamic/IObjectWrapper;
    .registers 2

    monitor-enter p0

    .line 41
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzcfc;->zzgf(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object p1

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zze(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 3

    monitor-enter p0

    .line 126
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfc;->zzgaw:Lcom/google/android/gms/internal/ads/zzcdx;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcdx;->setClickConfirmingView(Landroid/view/View;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 127
    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzf(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 3

    .line 133
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MotionEvent;

    .line 134
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfc;->zzgbb:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzcfc;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public final declared-synchronized zzg(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 3

    monitor-enter p0

    .line 128
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcfc;->zzepb:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_b

    if-eqz v0, :cond_7

    .line 129
    monitor-exit p0

    return-void

    .line 130
    :cond_7
    :try_start_7
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfc;->zzgbe:Lcom/google/android/gms/dynamic/IObjectWrapper;
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_b

    .line 131
    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzgf(Ljava/lang/String;)Landroid/view/View;
    .registers 4

    monitor-enter p0

    .line 42
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcfc;->zzepb:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1c

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 43
    monitor-exit p0

    return-object v1

    .line 44
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfc;->zzdqc:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_1c

    if-nez p1, :cond_14

    .line 45
    monitor-exit p0

    return-object v1

    :cond_14
    :try_start_14
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_1c

    monitor-exit p0

    return-object p1

    :catchall_1c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzsi()Lorg/json/JSONObject;
    .registers 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 94
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfc;->zzgaw:Lcom/google/android/gms/internal/ads/zzcdx;

    if-eqz v0, :cond_19

    .line 95
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfc;->zzgaw:Lcom/google/android/gms/internal/ads/zzcdx;

    .line 96
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfc;->zzgbb:Landroid/widget/FrameLayout;

    .line 97
    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcfc;->zzanc()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcfc;->zzand()Ljava/util/Map;

    move-result-object v3

    .line 98
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcdx;->zza(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_1c

    monitor-exit p0

    return-object v0

    :cond_19
    const/4 v0, 0x0

    .line 99
    monitor-exit p0

    return-object v0

    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method
