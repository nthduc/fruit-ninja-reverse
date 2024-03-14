.class public final Lcom/google/android/gms/ads/query/ReportingInfo$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/query/ReportingInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final zzhlu:Lcom/google/android/gms/internal/ads/zzasb;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzasb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzasb;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/query/ReportingInfo$Builder;->zzhlu:Lcom/google/android/gms/internal/ads/zzasb;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/ads/query/ReportingInfo$Builder;->zzhlu:Lcom/google/android/gms/internal/ads/zzasb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzasb;->zzk(Landroid/view/View;)Lcom/google/android/gms/internal/ads/zzasb;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/query/ReportingInfo$Builder;)Lcom/google/android/gms/internal/ads/zzasb;
    .registers 1

    .line 8
    iget-object p0, p0, Lcom/google/android/gms/ads/query/ReportingInfo$Builder;->zzhlu:Lcom/google/android/gms/internal/ads/zzasb;

    return-object p0
.end method


# virtual methods
.method public final build()Lcom/google/android/gms/ads/query/ReportingInfo;
    .registers 3
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 7
    new-instance v0, Lcom/google/android/gms/ads/query/ReportingInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/query/ReportingInfo;-><init>(Lcom/google/android/gms/ads/query/ReportingInfo$Builder;Lcom/google/android/gms/ads/query/zza;)V

    return-object v0
.end method

.method public final setAssetViews(Ljava/util/Map;)Lcom/google/android/gms/ads/query/ReportingInfo$Builder;
    .registers 3
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)",
            "Lcom/google/android/gms/ads/query/ReportingInfo$Builder;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/ads/query/ReportingInfo$Builder;->zzhlu:Lcom/google/android/gms/internal/ads/zzasb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzasb;->zzh(Ljava/util/Map;)Lcom/google/android/gms/internal/ads/zzasb;

    return-object p0
.end method
