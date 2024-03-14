.class final synthetic Lcom/google/android/gms/internal/ads/zzdqr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdya;


# instance fields
.field private final zzhix:Lcom/google/android/gms/internal/ads/zzdqs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdqs;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqr;->zzhix:Lcom/google/android/gms/internal/ads/zzdqs;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqr;->zzhix:Lcom/google/android/gms/internal/ads/zzdqs;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdqk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdqs;->zzc(Lcom/google/android/gms/internal/ads/zzdqk;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1
.end method
