.class public final Lcom/google/android/gms/internal/ads/zzdrm;
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

.method public static zzavl()Lcom/google/android/gms/internal/ads/zzdrm;
    .registers 1

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdrl;->zzavk()Lcom/google/android/gms/internal/ads/zzdrm;

    move-result-object v0

    return-object v0
.end method

.method public static zzavm()Lcom/google/android/gms/internal/ads/zzdzb;
    .registers 2

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbz;->zzeeq:Lcom/google/android/gms/internal/ads/zzdzb;

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzepe;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdzb;

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 2

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdrm;->zzavm()Lcom/google/android/gms/internal/ads/zzdzb;

    move-result-object v0

    return-object v0
.end method
