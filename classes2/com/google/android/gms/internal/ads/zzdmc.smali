.class public final Lcom/google/android/gms/internal/ads/zzdmc;
.super Lcom/google/android/gms/ads/reward/AdMetadataListener;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbuh;
.implements Lcom/google/android/gms/internal/ads/zzbui;
.implements Lcom/google/android/gms/internal/ads/zzbuv;
.implements Lcom/google/android/gms/internal/ads/zzbvs;
.implements Lcom/google/android/gms/internal/ads/zzbwl;
.implements Lcom/google/android/gms/internal/ads/zzdls;


# instance fields
.field private final zzhao:Lcom/google/android/gms/internal/ads/zzdpw;

.field private final zzhcg:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/ads/reward/AdMetadataListener;",
            ">;"
        }
    .end annotation
.end field

.field private final zzhch:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/ads/zzavg;",
            ">;"
        }
    .end annotation
.end field

.field private final zzhci:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/ads/zzavd;",
            ">;"
        }
    .end annotation
.end field

.field private final zzhcj:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/ads/zzaug;",
            ">;"
        }
    .end annotation
.end field

.field private final zzhck:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/ads/zzavl;",
            ">;"
        }
    .end annotation
.end field

.field private final zzhcl:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/ads/zzaub;",
            ">;"
        }
    .end annotation
.end field

.field private final zzhcm:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/ads/zzyi;",
            ">;"
        }
    .end annotation
.end field

.field private zzhcn:Lcom/google/android/gms/internal/ads/zzdmc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdpw;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/reward/AdMetadataListener;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmc;->zzhcg:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmc;->zzhch:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmc;->zzhci:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmc;->zzhcj:Ljava/util/concurrent/atomic/AtomicReference;

    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmc;->zzhck:Ljava/util/concurrent/atomic/AtomicReference;

    .line 7
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmc;->zzhcl:Ljava/util/concurrent/atomic/AtomicReference;

    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmc;->zzhcm:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmc;->zzhcn:Lcom/google/android/gms/internal/ads/zzdmc;

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmc;->zzhao:Lcom/google/android/gms/internal/ads/zzdpw;

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzdmc;)Lcom/google/android/gms/internal/ads/zzdmc;
    .registers 3

    .line 12
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdmc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdmc;->zzhao:Lcom/google/android/gms/internal/ads/zzdpw;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzdmc;-><init>(Lcom/google/android/gms/internal/ads/zzdpw;)V

    .line 13
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzdmc;->zzb(Lcom/google/android/gms/internal/ads/zzdls;)V

    return-object v0
.end method


# virtual methods
.method public final onAdClosed()V
    .registers 4

    move-object v0, p0

    .line 46
    :goto_1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdmc;->zzhcn:Lcom/google/android/gms/internal/ads/zzdmc;

    if-eqz v1, :cond_7

    move-object v0, v1

    goto :goto_1

    .line 48
    :cond_7
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdmc;->zzhao:Lcom/google/android/gms/internal/ads/zzdpw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdpw;->onAdClosed()V

    .line 49
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdmc;->zzhci:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdmu;->zzhaw:Lcom/google/android/gms/internal/ads/zzdlk;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzdll;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdlk;)V

    .line 50
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdmc;->zzhcj:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdmx;->zzhaw:Lcom/google/android/gms/internal/ads/zzdlk;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdll;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdlk;)V

    return-void
.end method

.method public final onAdLeftApplication()V
    .registers 3

    move-object v0, p0

    .line 52
    :goto_1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdmc;->zzhcn:Lcom/google/android/gms/internal/ads/zzdmc;

    if-eqz v1, :cond_7

    move-object v0, v1

    goto :goto_1

    .line 54
    :cond_7
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdmc;->zzhcj:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdmw;->zzhaw:Lcom/google/android/gms/internal/ads/zzdlk;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdll;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdlk;)V

    return-void
.end method

.method public final onAdLoaded()V
    .registers 4

    move-object v0, p0

    .line 29
    :goto_1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdmc;->zzhcn:Lcom/google/android/gms/internal/ads/zzdmc;

    if-eqz v1, :cond_7

    move-object v0, v1

    goto :goto_1

    .line 31
    :cond_7
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdmc;->zzhch:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdmf;->zzhaw:Lcom/google/android/gms/internal/ads/zzdlk;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzdll;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdlk;)V

    .line 32
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdmc;->zzhcj:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdme;->zzhaw:Lcom/google/android/gms/internal/ads/zzdlk;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdll;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdlk;)V

    return-void
.end method

.method public final onAdMetadataChanged()V
    .registers 3

    .line 76
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmc;->zzhcn:Lcom/google/android/gms/internal/ads/zzdmc;

    if-eqz v0, :cond_8

    .line 77
    invoke-virtual {v0}, Lcom/google/android/gms/ads/reward/AdMetadataListener;->onAdMetadataChanged()V

    return-void

    .line 79
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmc;->zzhcg:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdmp;->zzhaw:Lcom/google/android/gms/internal/ads/zzdlk;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdll;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdlk;)V

    return-void
.end method

.method public final onAdOpened()V
    .registers 4

    move-object v0, p0

    .line 41
    :goto_1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdmc;->zzhcn:Lcom/google/android/gms/internal/ads/zzdmc;

    if-eqz v1, :cond_7

    move-object v0, v1

    goto :goto_1

    .line 43
    :cond_7
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdmc;->zzhci:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdms;->zzhaw:Lcom/google/android/gms/internal/ads/zzdlk;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzdll;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdlk;)V

    .line 44
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdmc;->zzhcj:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdmv;->zzhaw:Lcom/google/android/gms/internal/ads/zzdlk;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdll;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdlk;)V

    return-void
.end method

.method public final onRewardedVideoCompleted()V
    .registers 3

    move-object v0, p0

    .line 67
    :goto_1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdmc;->zzhcn:Lcom/google/android/gms/internal/ads/zzdmc;

    if-eqz v1, :cond_7

    move-object v0, v1

    goto :goto_1

    .line 69
    :cond_7
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdmc;->zzhcj:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdmk;->zzhaw:Lcom/google/android/gms/internal/ads/zzdlk;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdll;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdlk;)V

    return-void
.end method

.method public final onRewardedVideoStarted()V
    .registers 3

    move-object v0, p0

    .line 56
    :goto_1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdmc;->zzhcn:Lcom/google/android/gms/internal/ads/zzdmc;

    if-eqz v1, :cond_7

    move-object v0, v1

    goto :goto_1

    .line 58
    :cond_7
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdmc;->zzhcj:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdmh;->zzhaw:Lcom/google/android/gms/internal/ads/zzdlk;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdll;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdlk;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/ads/reward/AdMetadataListener;)V
    .registers 3

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmc;->zzhcg:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzatw;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    move-object v0, p0

    .line 60
    :goto_1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdmc;->zzhcn:Lcom/google/android/gms/internal/ads/zzdmc;

    if-eqz v1, :cond_7

    move-object v0, v1

    goto :goto_1

    .line 62
    :cond_7
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdmc;->zzhci:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdmg;

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/ads/zzdmg;-><init>(Lcom/google/android/gms/internal/ads/zzatw;)V

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzdll;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdlk;)V

    .line 63
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdmc;->zzhck:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdmj;

    invoke-direct {v2, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdmj;-><init>(Lcom/google/android/gms/internal/ads/zzatw;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzdll;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdlk;)V

    .line 64
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdmc;->zzhcj:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdmi;

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/ads/zzdmi;-><init>(Lcom/google/android/gms/internal/ads/zzatw;)V

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzdll;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdlk;)V

    .line 65
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdmc;->zzhcl:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdml;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdml;-><init>(Lcom/google/android/gms/internal/ads/zzatw;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdll;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdlk;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzaub;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmc;->zzhcl:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzaug;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmc;->zzhcj:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzavd;)V
    .registers 3

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmc;->zzhci:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzavg;)V
    .registers 3

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmc;->zzhch:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzavl;)V
    .registers 3

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmc;->zzhck:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzdls;)V
    .registers 2

    .line 85
    check-cast p1, Lcom/google/android/gms/internal/ads/zzdmc;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmc;->zzhcn:Lcom/google/android/gms/internal/ads/zzdmc;

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzvp;)V
    .registers 4
    .param p1    # Lcom/google/android/gms/internal/ads/zzvp;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v0, p0

    .line 81
    :goto_1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdmc;->zzhcn:Lcom/google/android/gms/internal/ads/zzdmc;

    if-eqz v1, :cond_7

    move-object v0, v1

    goto :goto_1

    .line 83
    :cond_7
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdmc;->zzhcm:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdmo;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzdmo;-><init>(Lcom/google/android/gms/internal/ads/zzvp;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdll;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdlk;)V

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzyi;)V
    .registers 3

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmc;->zzhcm:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzj(Lcom/google/android/gms/internal/ads/zzva;)V
    .registers 5

    move-object v0, p0

    .line 71
    :goto_1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdmc;->zzhcn:Lcom/google/android/gms/internal/ads/zzdmc;

    if-eqz v1, :cond_7

    move-object v0, v1

    goto :goto_1

    .line 73
    :cond_7
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdmc;->zzhci:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdmn;

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/ads/zzdmn;-><init>(Lcom/google/android/gms/internal/ads/zzva;)V

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzdll;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdlk;)V

    .line 74
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdmc;->zzhci:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdmm;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzdmm;-><init>(Lcom/google/android/gms/internal/ads/zzva;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdll;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdlk;)V

    return-void
.end method

.method public final zzk(Lcom/google/android/gms/internal/ads/zzva;)V
    .registers 6

    move-object v0, p0

    .line 34
    :goto_1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdmc;->zzhcn:Lcom/google/android/gms/internal/ads/zzdmc;

    if-eqz v1, :cond_7

    move-object v0, v1

    goto :goto_1

    .line 36
    :cond_7
    iget v1, p1, Lcom/google/android/gms/internal/ads/zzva;->errorCode:I

    .line 37
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzdmc;->zzhch:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzdmr;

    invoke-direct {v3, p1}, Lcom/google/android/gms/internal/ads/zzdmr;-><init>(Lcom/google/android/gms/internal/ads/zzva;)V

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzdll;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdlk;)V

    .line 38
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzdmc;->zzhch:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdmq;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzdmq;-><init>(I)V

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ads/zzdll;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdlk;)V

    .line 39
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzdmc;->zzhcj:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdmt;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzdmt;-><init>(I)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzdll;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdlk;)V

    return-void
.end method
