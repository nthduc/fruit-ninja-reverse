.class final synthetic Lcom/google/android/gms/internal/ads/zzbro;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdya;


# instance fields
.field private final zzfsw:Lcom/google/android/gms/internal/ads/zzcqi;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzcqi;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbro;->zzfsw:Lcom/google/android/gms/internal/ads/zzcqi;

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/ads/zzcqi;)Lcom/google/android/gms/internal/ads/zzdya;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbro;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbro;-><init>(Lcom/google/android/gms/internal/ads/zzcqi;)V

    return-object v0
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbro;->zzfsw:Lcom/google/android/gms/internal/ads/zzcqi;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzatc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcqi;->zzh(Lcom/google/android/gms/internal/ads/zzatc;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1
.end method
