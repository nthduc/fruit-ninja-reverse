.class public final Lcom/google/android/gms/ads/mediation/VersionInfo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# instance fields
.field private final zzerx:I

.field private final zzery:I

.field private final zzerz:I


# direct methods
.method public constructor <init>(III)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/ads/mediation/VersionInfo;->zzerx:I

    .line 3
    iput p2, p0, Lcom/google/android/gms/ads/mediation/VersionInfo;->zzery:I

    .line 4
    iput p3, p0, Lcom/google/android/gms/ads/mediation/VersionInfo;->zzerz:I

    return-void
.end method


# virtual methods
.method public final getMajorVersion()I
    .registers 2

    .line 6
    iget v0, p0, Lcom/google/android/gms/ads/mediation/VersionInfo;->zzerx:I

    return v0
.end method

.method public final getMicroVersion()I
    .registers 2

    .line 8
    iget v0, p0, Lcom/google/android/gms/ads/mediation/VersionInfo;->zzerz:I

    return v0
.end method

.method public final getMinorVersion()I
    .registers 2

    .line 7
    iget v0, p0, Lcom/google/android/gms/ads/mediation/VersionInfo;->zzery:I

    return v0
.end method
