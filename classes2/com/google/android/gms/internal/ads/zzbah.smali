.class public final Lcom/google/android/gms/internal/ads/zzbah;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final zzecp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzecq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private final zzecr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbah;->zzecp:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbah;->zzecq:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbah;->zzecr:Ljava/util/List;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzbah;)Ljava/util/List;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbah;->zzecq:Ljava/util/List;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzbah;)Ljava/util/List;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbah;->zzecp:Ljava/util/List;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzbah;)Ljava/util/List;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbah;->zzecr:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final zza(Ljava/lang/String;DD)Lcom/google/android/gms/internal/ads/zzbah;
    .registers 12

    const/4 v0, 0x0

    .line 6
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbah;->zzecp:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_30

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbah;->zzecr:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 8
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbah;->zzecq:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    cmpg-double v5, p2, v1

    if-ltz v5, :cond_30

    cmpl-double v5, v1, p2

    if-nez v5, :cond_2d

    cmpg-double v1, p4, v3

    if-ltz v1, :cond_30

    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 13
    :cond_30
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbah;->zzecp:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 14
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbah;->zzecr:Ljava/util/List;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 15
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbah;->zzecq:Ljava/util/List;

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-object p0
.end method

.method public final zzyi()Lcom/google/android/gms/internal/ads/zzbac;
    .registers 3

    .line 17
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbac;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzbac;-><init>(Lcom/google/android/gms/internal/ads/zzbah;Lcom/google/android/gms/internal/ads/zzbaf;)V

    return-object v0
.end method
