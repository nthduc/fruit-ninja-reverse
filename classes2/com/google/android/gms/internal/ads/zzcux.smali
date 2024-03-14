.class final synthetic Lcom/google/android/gms/internal/ads/zzcux;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbuz;


# instance fields
.field private final zzeqk:Lcom/google/android/gms/internal/ads/zzbgj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbgj;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcux;->zzeqk:Lcom/google/android/gms/internal/ads/zzbgj;

    return-void
.end method


# virtual methods
.method public final onAdImpression()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcux;->zzeqk:Lcom/google/android/gms/internal/ads/zzbgj;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgj;->zzabw()Lcom/google/android/gms/internal/ads/zzbhv;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgj;->zzabw()Lcom/google/android/gms/internal/ads/zzbhv;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbhv;->zzabi()V

    :cond_f
    return-void
.end method
