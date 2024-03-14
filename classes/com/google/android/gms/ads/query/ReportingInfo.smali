.class public final Lcom/google/android/gms/ads/query/ReportingInfo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/query/ReportingInfo$Builder;
    }
.end annotation


# instance fields
.field private final zzhlt:Lcom/google/android/gms/internal/ads/zzarw;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/ads/query/ReportingInfo$Builder;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzarw;

    invoke-static {p1}, Lcom/google/android/gms/ads/query/ReportingInfo$Builder;->zza(Lcom/google/android/gms/ads/query/ReportingInfo$Builder;)Lcom/google/android/gms/internal/ads/zzasb;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzarw;-><init>(Lcom/google/android/gms/internal/ads/zzasb;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/query/ReportingInfo;->zzhlt:Lcom/google/android/gms/internal/ads/zzarw;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/ads/query/ReportingInfo$Builder;Lcom/google/android/gms/ads/query/zza;)V
    .registers 3

    .line 10
    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/query/ReportingInfo;-><init>(Lcom/google/android/gms/ads/query/ReportingInfo$Builder;)V

    return-void
.end method


# virtual methods
.method public final reportTouchEvent(Landroid/view/MotionEvent;)V
    .registers 3
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/ads/query/ReportingInfo;->zzhlt:Lcom/google/android/gms/internal/ads/zzarw;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzarw;->reportTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public final updateClickUrl(Landroid/net/Uri;Lcom/google/android/gms/ads/query/UpdateClickUrlCallback;)V
    .registers 4
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/ads/query/ReportingInfo;->zzhlt:Lcom/google/android/gms/internal/ads/zzarw;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzarw;->updateClickUrl(Landroid/net/Uri;Lcom/google/android/gms/ads/query/UpdateClickUrlCallback;)V

    return-void
.end method

.method public final updateImpressionUrls(Ljava/util/List;Lcom/google/android/gms/ads/query/UpdateImpressionUrlsCallback;)V
    .registers 4
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/google/android/gms/ads/query/UpdateImpressionUrlsCallback;",
            ")V"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/ads/query/ReportingInfo;->zzhlt:Lcom/google/android/gms/internal/ads/zzarw;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzarw;->updateImpressionUrls(Ljava/util/List;Lcom/google/android/gms/ads/query/UpdateImpressionUrlsCallback;)V

    return-void
.end method
