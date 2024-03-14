.class final synthetic Lcom/google/android/gms/internal/ads/zzbeu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzol;


# instance fields
.field private final zzdtu:[B

.field private final zzelb:Lcom/google/android/gms/internal/ads/zzol;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzol;[B)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbeu;->zzelb:Lcom/google/android/gms/internal/ads/zzol;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbeu;->zzdtu:[B

    return-void
.end method


# virtual methods
.method public final zzip()Lcom/google/android/gms/internal/ads/zzom;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbeu;->zzelb:Lcom/google/android/gms/internal/ads/zzol;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbeu;->zzdtu:[B

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzol;->zzip()Lcom/google/android/gms/internal/ads/zzom;

    move-result-object v0

    .line 3
    new-instance v2, Lcom/google/android/gms/internal/ads/zzoj;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzoj;-><init>([B)V

    .line 4
    new-instance v3, Lcom/google/android/gms/internal/ads/zzbfb;

    array-length v1, v1

    invoke-direct {v3, v2, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfb;-><init>(Lcom/google/android/gms/internal/ads/zzom;ILcom/google/android/gms/internal/ads/zzom;)V

    return-object v3
.end method
