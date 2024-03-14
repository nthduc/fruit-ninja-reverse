.class public Lcom/google/android/gms/ads/query/QueryInfo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# instance fields
.field private final zzhls:Lcom/google/android/gms/internal/ads/zzzj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzzj;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/ads/query/QueryInfo;->zzhls:Lcom/google/android/gms/internal/ads/zzzj;

    return-void
.end method

.method public static generate(Landroid/content/Context;Lcom/google/android/gms/ads/AdFormat;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;)V
    .registers 5
    .param p2    # Lcom/google/android/gms/ads/AdRequest;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaru;

    if-nez p2, :cond_6

    const/4 p2, 0x0

    goto :goto_a

    .line 8
    :cond_6
    invoke-virtual {p2}, Lcom/google/android/gms/ads/AdRequest;->zzdr()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object p2

    :goto_a
    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaru;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdFormat;Lcom/google/android/gms/internal/ads/zzyw;)V

    .line 9
    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ads/zzaru;->zza(Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;)V

    return-void
.end method


# virtual methods
.method public getQuery()Ljava/lang/String;
    .registers 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/ads/query/QueryInfo;->zzhls:Lcom/google/android/gms/internal/ads/zzzj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzzj;->getQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQueryBundle()Landroid/os/Bundle;
    .registers 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/ads/query/QueryInfo;->zzhls:Lcom/google/android/gms/internal/ads/zzzj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzzj;->getQueryBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .registers 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 6
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzzj;->zza(Lcom/google/android/gms/ads/query/QueryInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
