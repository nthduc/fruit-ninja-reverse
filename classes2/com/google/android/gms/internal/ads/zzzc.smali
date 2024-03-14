.class final synthetic Lcom/google/android/gms/internal/ads/zzzc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzckg:Lcom/google/android/gms/internal/ads/zzzd;

.field private final zzckh:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzzd;Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzc;->zzckg:Lcom/google/android/gms/internal/ads/zzzd;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzzc;->zzckh:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzc;->zzckg:Lcom/google/android/gms/internal/ads/zzzd;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzzc;->zzckh:Landroid/content/Context;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzzd;->getRewardedVideoAdInstance(Landroid/content/Context;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    return-void
.end method
