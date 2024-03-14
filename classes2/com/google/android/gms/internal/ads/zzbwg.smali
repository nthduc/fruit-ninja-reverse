.class public final Lcom/google/android/gms/internal/ads/zzbwg;
.super Lcom/google/android/gms/internal/ads/zzbyr;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbuz;
.implements Lcom/google/android/gms/internal/ads/zzbwb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzbyr<",
        "Lcom/google/android/gms/internal/ads/zzbwl;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzbuz;",
        "Lcom/google/android/gms/internal/ads/zzbwb;"
    }
.end annotation


# instance fields
.field private final zzfmx:Lcom/google/android/gms/internal/ads/zzdnv;

.field private zzfuy:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Ljava/util/Set;Lcom/google/android/gms/internal/ads/zzdnv;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/zzcab<",
            "Lcom/google/android/gms/internal/ads/zzbwl;",
            ">;>;",
            "Lcom/google/android/gms/internal/ads/zzdnv;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbyr;-><init>(Ljava/util/Set;)V

    .line 2
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbwg;->zzfuy:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbwg;->zzfmx:Lcom/google/android/gms/internal/ads/zzdnv;

    return-void
.end method

.method private final zzajy()V
    .registers 4

    .line 11
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzcxt:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwg;->zzfuy:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 14
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwg;->zzfmx:Lcom/google/android/gms/internal/ads/zzdnv;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdnv;->zzheg:Lcom/google/android/gms/internal/ads/zzvp;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwg;->zzfmx:Lcom/google/android/gms/internal/ads/zzdnv;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdnv;->zzheg:Lcom/google/android/gms/internal/ads/zzvp;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzvp;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_33

    .line 15
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbwj;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbwj;-><init>(Lcom/google/android/gms/internal/ads/zzbwg;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbyr;->zza(Lcom/google/android/gms/internal/ads/zzbyt;)V

    :cond_33
    return-void
.end method


# virtual methods
.method public final onAdImpression()V
    .registers 3

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwg;->zzfmx:Lcom/google/android/gms/internal/ads/zzdnv;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzdnv;->zzhdj:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwg;->zzfmx:Lcom/google/android/gms/internal/ads/zzdnv;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzdnv;->zzhdj:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwg;->zzfmx:Lcom/google/android/gms/internal/ads/zzdnv;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzdnv;->zzhdj:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_18

    .line 6
    :cond_15
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbwg;->zzajy()V

    :cond_18
    return-void
.end method

.method final synthetic zza(Lcom/google/android/gms/internal/ads/zzbwl;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwg;->zzfmx:Lcom/google/android/gms/internal/ads/zzdnv;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdnv;->zzheg:Lcom/google/android/gms/internal/ads/zzvp;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzbwl;->zzb(Lcom/google/android/gms/internal/ads/zzvp;)V

    return-void
.end method

.method public final zzajx()V
    .registers 3

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwg;->zzfmx:Lcom/google/android/gms/internal/ads/zzdnv;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzdnv;->zzhdj:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbwg;->zzajy()V

    :cond_a
    return-void
.end method
