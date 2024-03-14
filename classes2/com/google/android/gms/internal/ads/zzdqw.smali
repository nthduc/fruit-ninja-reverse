.class public final Lcom/google/android/gms/internal/ads/zzdqw;
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
.field public final zzhbz:Lcom/google/android/gms/internal/ads/zzdqk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdqk<",
            "TAdT;>;"
        }
    .end annotation
.end field

.field public final zzhjh:Lcom/google/android/gms/internal/ads/zzdqy;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdqk;Lcom/google/android/gms/internal/ads/zzdqy;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdqk<",
            "TAdT;>;",
            "Lcom/google/android/gms/internal/ads/zzdqy;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqw;->zzhbz:Lcom/google/android/gms/internal/ads/zzdqk;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdqw;->zzhjh:Lcom/google/android/gms/internal/ads/zzdqy;

    return-void
.end method
