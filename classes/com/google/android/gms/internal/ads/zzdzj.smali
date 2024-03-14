.class public final Lcom/google/android/gms/internal/ads/zzdzj;
.super Lcom/google/android/gms/internal/ads/zzdxq$zzh;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzdxq$zzh<",
        "TV;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdxq$zzh;-><init>()V

    return-void
.end method

.method public static zzayi()Lcom/google/android/gms/internal/ads/zzdzj;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/android/gms/internal/ads/zzdzj<",
            "TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdzj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdzj;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final set(Ljava/lang/Object;)Z
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzdxq$zzh;->set(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final setException(Ljava/lang/Throwable;)Z
    .registers 2

    .line 3
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzdxq$zzh;->setException(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method
