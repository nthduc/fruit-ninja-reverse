.class final synthetic Lcom/google/android/gms/internal/ads/zzbgl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzeng:Lcom/google/android/gms/internal/ads/zzbgi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbgi;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgl;->zzeng:Lcom/google/android/gms/internal/ads/zzbgi;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgl;->zzeng:Lcom/google/android/gms/internal/ads/zzbgi;

    .line 2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbgi;->zzemq:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbgj;->zzacf()V

    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbgi;->zzemq:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgj;->zzabs()Lcom/google/android/gms/ads/internal/overlay/zze;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zze;->zzuu()V

    :cond_12
    return-void
.end method
