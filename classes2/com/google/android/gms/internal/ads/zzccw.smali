.class public Lcom/google/android/gms/internal/ads/zzccw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final zzfqc:Lcom/google/android/gms/internal/ads/zzcep;

.field private final zzfxl:Lcom/google/android/gms/internal/ads/zzwt;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcep;Lcom/google/android/gms/internal/ads/zzwt;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzccw;->zzfqc:Lcom/google/android/gms/internal/ads/zzcep;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzccw;->zzfxl:Lcom/google/android/gms/internal/ads/zzwt;

    return-void
.end method


# virtual methods
.method public final zzalh()Lcom/google/android/gms/internal/ads/zzcep;
    .registers 2

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccw;->zzfqc:Lcom/google/android/gms/internal/ads/zzcep;

    return-object v0
.end method

.method public final zzali()Lcom/google/android/gms/internal/ads/zzwt;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccw;->zzfxl:Lcom/google/android/gms/internal/ads/zzwt;

    return-object v0
.end method
