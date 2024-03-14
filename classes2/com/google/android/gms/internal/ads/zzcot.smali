.class public final Lcom/google/android/gms/internal/ads/zzcot;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeoy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeoy<",
        "Ljava/util/List<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzaps()Lcom/google/android/gms/internal/ads/zzcot;
    .registers 1

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcow;->zzapu()Lcom/google/android/gms/internal/ads/zzcot;

    move-result-object v0

    return-object v0
.end method

.method public static zzapt()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzabb;->zzrg()Ljava/util/List;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzepe;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 2

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcot;->zzapt()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
