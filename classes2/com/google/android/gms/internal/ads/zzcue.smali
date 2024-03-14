.class final synthetic Lcom/google/android/gms/internal/ads/zzcue;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbql;


# instance fields
.field private final zzgoo:Lcom/google/android/gms/internal/ads/zzdpa;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzdpa;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcue;->zzgoo:Lcom/google/android/gms/internal/ads/zzdpa;

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/ads/zzdpa;)Lcom/google/android/gms/internal/ads/zzbql;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcue;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcue;-><init>(Lcom/google/android/gms/internal/ads/zzdpa;)V

    return-object v0
.end method


# virtual methods
.method public final getVideoController()Lcom/google/android/gms/internal/ads/zzyo;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcue;->zzgoo:Lcom/google/android/gms/internal/ads/zzdpa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdpa;->getVideoController()Lcom/google/android/gms/internal/ads/zzyo;

    move-result-object v0

    return-object v0
.end method
