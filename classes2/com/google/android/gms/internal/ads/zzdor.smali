.class public final Lcom/google/android/gms/internal/ads/zzdor;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final zzeot:Lcom/google/android/gms/internal/ads/zzdnv;

.field private final zzeou:Lcom/google/android/gms/internal/ads/zzdnw;

.field private final zzfnf:Lcom/google/android/gms/internal/ads/zzdst;

.field private final zzgha:Lcom/google/android/gms/internal/ads/zzcsp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcsp;Lcom/google/android/gms/internal/ads/zzdst;Lcom/google/android/gms/internal/ads/zzdnv;Lcom/google/android/gms/internal/ads/zzdnw;)V
    .registers 5
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdor;->zzeot:Lcom/google/android/gms/internal/ads/zzdnv;

    .line 3
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdor;->zzeou:Lcom/google/android/gms/internal/ads/zzdnw;

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdor;->zzgha:Lcom/google/android/gms/internal/ads/zzcsp;

    .line 5
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdor;->zzfnf:Lcom/google/android/gms/internal/ads/zzdst;

    return-void
.end method

.method private final zzb(Ljava/lang/String;I)V
    .registers 10

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdor;->zzeot:Lcom/google/android/gms/internal/ads/zzdnv;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzdnv;->zzhek:Z

    if-nez v0, :cond_c

    .line 17
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdor;->zzfnf:Lcom/google/android/gms/internal/ads/zzdst;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzdst;->zzes(Ljava/lang/String;)V

    return-void

    .line 19
    :cond_c
    new-instance v6, Lcom/google/android/gms/internal/ads/zzcsv;

    .line 20
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzky()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdor;->zzeou:Lcom/google/android/gms/internal/ads/zzdnw;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzdnw;->zzdtb:Ljava/lang/String;

    move-object v0, v6

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzcsv;-><init>(JLjava/lang/String;Ljava/lang/String;I)V

    .line 21
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdor;->zzgha:Lcom/google/android/gms/internal/ads/zzcsp;

    invoke-virtual {p1, v6}, Lcom/google/android/gms/internal/ads/zzcsp;->zza(Lcom/google/android/gms/internal/ads/zzcsv;)V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/util/List;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 12
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 13
    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/ads/zzdor;->zzb(Ljava/lang/String;I)V

    goto :goto_4

    :cond_14
    return-void
.end method

.method public final zzi(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 9
    sget v1, Lcom/google/android/gms/internal/ads/zzcsq;->zzgne:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzdor;->zzb(Ljava/lang/String;I)V

    goto :goto_4

    :cond_16
    return-void
.end method
