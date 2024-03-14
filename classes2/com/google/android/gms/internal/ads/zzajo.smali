.class public final Lcom/google/android/gms/internal/ads/zzajo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# instance fields
.field private zzbno:I

.field private zzdgg:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzajo;->zzbno:I

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzajo;->zzdgg:Ljava/lang/String;

    .line 4
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzajo;->zzbno:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 7
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzajo;->zzbno:I

    const-string v0, ""

    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzajo;->zzdgg:Ljava/lang/String;

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajo;->zzdgg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getMediaAspectRatio()I
    .registers 2

    .line 11
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzajo;->zzbno:I

    return v0
.end method

.method public final zztf()Ljava/lang/String;
    .registers 2

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajo;->zzdgg:Ljava/lang/String;

    return-object v0
.end method
