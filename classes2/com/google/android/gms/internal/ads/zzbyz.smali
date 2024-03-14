.class public final Lcom/google/android/gms/internal/ads/zzbyz;
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
        "Lcom/google/android/gms/internal/ads/zzux;",
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
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbyz;->zzfwg:Lcom/google/android/gms/internal/ads/zzbys;

    return-void
.end method

.method public static zzl(Lcom/google/android/gms/internal/ads/zzbys;)Lcom/google/android/gms/internal/ads/zzbyz;
    .registers 2

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbyz;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbyz;-><init>(Lcom/google/android/gms/internal/ads/zzbys;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 3

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyz;->zzfwg:Lcom/google/android/gms/internal/ads/zzbys;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbys;->zzakl()Ljava/util/Set;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzepe;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method
