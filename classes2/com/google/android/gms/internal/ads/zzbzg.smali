.class public final Lcom/google/android/gms/internal/ads/zzbzg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeoy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeoy<",
        "Ljava/util/Set<",
        "Lcom/google/android/gms/internal/ads/zzcab<",
        "Lcom/google/android/gms/internal/ads/zzbvs;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field private final zzfwg:Lcom/google/android/gms/internal/ads/zzbys;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbys;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbzg;->zzfwg:Lcom/google/android/gms/internal/ads/zzbys;

    return-void
.end method

.method public static zzs(Lcom/google/android/gms/internal/ads/zzbys;)Lcom/google/android/gms/internal/ads/zzbzg;
    .registers 2

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbzg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbzg;-><init>(Lcom/google/android/gms/internal/ads/zzbys;)V

    return-object v0
.end method

.method public static zzt(Lcom/google/android/gms/internal/ads/zzbys;)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzbys;",
            ")",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/zzcab<",
            "Lcom/google/android/gms/internal/ads/zzbvs;",
            ">;>;"
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbys;->zzakg()Ljava/util/Set;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzepe;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 2

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbzg;->zzfwg:Lcom/google/android/gms/internal/ads/zzbys;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbzg;->zzt(Lcom/google/android/gms/internal/ads/zzbys;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
