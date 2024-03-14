.class final synthetic Lcom/google/android/gms/ads/internal/overlay/zzd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbhu;


# instance fields
.field private final zzdom:Lcom/google/android/gms/ads/internal/overlay/zze;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/overlay/zze;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzdom:Lcom/google/android/gms/ads/internal/overlay/zze;

    return-void
.end method


# virtual methods
.method public final zzai(Z)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzdom:Lcom/google/android/gms/ads/internal/overlay/zze;

    .line 2
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    if-eqz v0, :cond_b

    .line 3
    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbgj;->zzuy()V

    :cond_b
    return-void
.end method
