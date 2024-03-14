.class public final Lcom/google/android/gms/internal/ads/zzdre;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeoy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeoy<",
        "Lcom/google/android/gms/internal/ads/zzdzb;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzavc()Lcom/google/android/gms/internal/ads/zzdre;
    .registers 1

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdrd;->zzavb()Lcom/google/android/gms/internal/ads/zzdre;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 3

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdvg;->zzaxc()Lcom/google/android/gms/internal/ads/zzdvd;

    move-result-object v0

    sget v1, Lcom/google/android/gms/internal/ads/zzdvl;->zzhov:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdvd;->zzek(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdze;->zza(Ljava/util/concurrent/ExecutorService;)Lcom/google/android/gms/internal/ads/zzdzb;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 5
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzepe;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdzb;

    return-object v0
.end method
