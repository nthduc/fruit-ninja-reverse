.class public final Lcom/google/android/gms/ads/MobileAds$Settings;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/MobileAds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Settings"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final zzadk:Lcom/google/android/gms/internal/ads/zzzh;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzzh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzzh;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/MobileAds$Settings;->zzadk:Lcom/google/android/gms/internal/ads/zzzh;

    return-void
.end method


# virtual methods
.method public final getTrackingId()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final isGoogleAnalyticsEnabled()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public final setGoogleAnalyticsEnabled(Z)Lcom/google/android/gms/ads/MobileAds$Settings;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public final setTrackingId(Ljava/lang/String;)Lcom/google/android/gms/ads/MobileAds$Settings;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method
