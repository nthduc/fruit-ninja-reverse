.class final synthetic Lcom/google/android/gms/internal/ads/zzcuf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbql;


# instance fields
.field private final zzgop:Lcom/google/android/gms/internal/ads/zzctc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzctc;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcuf;->zzgop:Lcom/google/android/gms/internal/ads/zzctc;

    return-void
.end method


# virtual methods
.method public final getVideoController()Lcom/google/android/gms/internal/ads/zzyo;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcuf;->zzgop:Lcom/google/android/gms/internal/ads/zzctc;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcug;->zza(Lcom/google/android/gms/internal/ads/zzctc;)Lcom/google/android/gms/internal/ads/zzyo;

    move-result-object v0

    return-object v0
.end method
