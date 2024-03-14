.class final Lcom/google/android/gms/internal/ads/zzccu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbqp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzbqp<",
        "Lcom/google/android/gms/internal/ads/zzbqu;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfqc:Lcom/google/android/gms/internal/ads/zzcep;

.field private final zzfrw:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzcta<",
            "Lcom/google/android/gms/internal/ads/zzbqu;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zzfxh:Lcom/google/android/gms/internal/ads/zzeph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Lcom/google/android/gms/internal/ads/zzbqp<",
            "Lcom/google/android/gms/internal/ads/zzboq;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zzfxi:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzcta<",
            "Lcom/google/android/gms/internal/ads/zzcdx;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zzfxj:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzcvl<",
            "Lcom/google/android/gms/internal/ads/zzcdx;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzeph;Lcom/google/android/gms/internal/ads/zzcep;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzcta<",
            "Lcom/google/android/gms/internal/ads/zzbqu;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzcta<",
            "Lcom/google/android/gms/internal/ads/zzcdx;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzcvl<",
            "Lcom/google/android/gms/internal/ads/zzcdx;",
            ">;>;",
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Lcom/google/android/gms/internal/ads/zzbqp<",
            "Lcom/google/android/gms/internal/ads/zzboq;",
            ">;>;",
            "Lcom/google/android/gms/internal/ads/zzcep;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzccu;->zzfrw:Ljava/util/Map;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzccu;->zzfxi:Ljava/util/Map;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzccu;->zzfxj:Ljava/util/Map;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzccu;->zzfxh:Lcom/google/android/gms/internal/ads/zzeph;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzccu;->zzfqc:Lcom/google/android/gms/internal/ads/zzcep;

    return-void
.end method


# virtual methods
.method public final zze(ILjava/lang/String;)Lcom/google/android/gms/internal/ads/zzcta;
    .registers 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzcta<",
            "Lcom/google/android/gms/internal/ads/zzbqu;",
            ">;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccu;->zzfrw:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcta;

    if-eqz v0, :cond_b

    return-object v0

    :cond_b
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_32

    const/4 v0, 0x4

    if-eq p1, v0, :cond_13

    return-object v1

    .line 20
    :cond_13
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzccu;->zzfxj:Ljava/util/Map;

    .line 21
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcvl;

    if-eqz p1, :cond_22

    .line 23
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbqu;->zza(Lcom/google/android/gms/internal/ads/zzcvl;)Lcom/google/android/gms/internal/ads/zzcta;

    move-result-object p1

    return-object p1

    .line 24
    :cond_22
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzccu;->zzfxi:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcta;

    if-eqz p1, :cond_31

    .line 26
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbqu;->zza(Lcom/google/android/gms/internal/ads/zzcta;)Lcom/google/android/gms/internal/ads/zzcta;

    move-result-object p1

    return-object p1

    :cond_31
    return-object v1

    .line 13
    :cond_32
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccu;->zzfqc:Lcom/google/android/gms/internal/ads/zzcep;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcep;->zzams()Lcom/google/android/gms/internal/ads/zzafs;

    move-result-object v0

    if-nez v0, :cond_3b

    return-object v1

    .line 15
    :cond_3b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccu;->zzfxh:Lcom/google/android/gms/internal/ads/zzeph;

    .line 16
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzeph;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbqp;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbqp;->zze(ILjava/lang/String;)Lcom/google/android/gms/internal/ads/zzcta;

    move-result-object p1

    if-nez p1, :cond_4a

    return-object v1

    .line 17
    :cond_4a
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbqu;->zza(Lcom/google/android/gms/internal/ads/zzcta;)Lcom/google/android/gms/internal/ads/zzcta;

    move-result-object p1

    return-object p1
.end method
