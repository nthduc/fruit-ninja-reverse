.class final synthetic Lcom/google/android/gms/internal/ads/zzdnf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzhcu:Lcom/google/android/gms/internal/ads/zzdnc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdnc;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnf;->zzhcu:Lcom/google/android/gms/internal/ads/zzdnc;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnf;->zzhcu:Lcom/google/android/gms/internal/ads/zzdnc;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdnc;->zzhct:Lcom/google/android/gms/internal/ads/zzdnb;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdnb;->zza(Lcom/google/android/gms/internal/ads/zzdnb;)Lcom/google/android/gms/internal/ads/zzdmc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdmc;->onAdLoaded()V

    return-void
.end method
