.class public final Lcom/google/android/gms/internal/ads/zzdrn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeoy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeoy<",
        "Ljava/util/concurrent/ThreadFactory;",
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

.method public static zzavn()Lcom/google/android/gms/internal/ads/zzdrn;
    .registers 1

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdrq;->zzavo()Lcom/google/android/gms/internal/ads/zzdrn;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 3

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdqz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdqz;-><init>()V

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzepe;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ThreadFactory;

    return-object v0
.end method
