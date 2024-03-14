.class public final Lcom/google/android/gms/internal/ads/zzdqn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdT:",
        "Lcom/google/android/gms/internal/ads/zzbqo;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final zzhbu:Lcom/google/android/gms/internal/ads/zzdpz;

.field public final zzhiu:Lcom/google/android/gms/internal/ads/zzdqs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdqs<",
            "TAdT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdpz;Lcom/google/android/gms/internal/ads/zzdqs;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdpz;",
            "Lcom/google/android/gms/internal/ads/zzdqs<",
            "TAdT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqn;->zzhbu:Lcom/google/android/gms/internal/ads/zzdpz;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdqn;->zzhiu:Lcom/google/android/gms/internal/ads/zzdqs;

    return-void
.end method
