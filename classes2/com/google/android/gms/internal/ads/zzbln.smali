.class public final Lcom/google/android/gms/internal/ads/zzbln;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeoy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeoy<",
        "Lcom/google/android/gms/internal/ads/zzth;",
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

.method public static zzagv()Lcom/google/android/gms/internal/ads/zzth;
    .registers 2

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzth;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzth;-><init>()V

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzepe;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzth;

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 2

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbln;->zzagv()Lcom/google/android/gms/internal/ads/zzth;

    move-result-object v0

    return-object v0
.end method
