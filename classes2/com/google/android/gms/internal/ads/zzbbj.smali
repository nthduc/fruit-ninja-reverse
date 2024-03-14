.class final Lcom/google/android/gms/internal/ads/zzbbj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbbl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbbg;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzes(Ljava/lang/String;)V
    .registers 3

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbbi;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzbbi;-><init>(Lcom/google/android/gms/internal/ads/zzbbj;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbi;->start()V

    return-void
.end method
