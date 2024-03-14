.class final synthetic Lcom/google/android/gms/internal/ads/zzdla;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdya;


# instance fields
.field private final zzhbh:Lcom/google/android/gms/internal/ads/zzdkz;

.field private final zzhbo:Lcom/google/android/gms/internal/ads/zzdlx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdkz;Lcom/google/android/gms/internal/ads/zzdlx;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdla;->zzhbh:Lcom/google/android/gms/internal/ads/zzdkz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdla;->zzhbo:Lcom/google/android/gms/internal/ads/zzdlx;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdla;->zzhbh:Lcom/google/android/gms/internal/ads/zzdkz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdla;->zzhbo:Lcom/google/android/gms/internal/ads/zzdlx;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdqw;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdkz;->zza(Lcom/google/android/gms/internal/ads/zzdlx;Lcom/google/android/gms/internal/ads/zzdqw;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1
.end method
