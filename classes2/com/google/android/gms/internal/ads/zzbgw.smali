.class final Lcom/google/android/gms/internal/ads/zzbgw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzeoi:Lcom/google/android/gms/internal/ads/zzbgu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbgu;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgw;->zzeoi:Lcom/google/android/gms/internal/ads/zzbgu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgw;->zzeoi:Lcom/google/android/gms/internal/ads/zzbgu;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbgu;->zza(Lcom/google/android/gms/internal/ads/zzbgu;)Lcom/google/android/gms/internal/ads/zzbgj;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgj;->destroy()V

    return-void
.end method
