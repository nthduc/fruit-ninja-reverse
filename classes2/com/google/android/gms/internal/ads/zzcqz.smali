.class final synthetic Lcom/google/android/gms/internal/ads/zzcqz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdya;


# instance fields
.field private final zzglf:Lcom/google/android/gms/internal/ads/zzdhp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdhp;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqz;->zzglf:Lcom/google/android/gms/internal/ads/zzdhp;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqz;->zzglf:Lcom/google/android/gms/internal/ads/zzdhp;

    check-cast p1, Landroid/os/Bundle;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdhp;->zzafm()Lcom/google/android/gms/internal/ads/zzdgw;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkr()Lcom/google/android/gms/internal/ads/zzayu;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzayu;->zzd(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdgw;->zzt(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1
.end method
