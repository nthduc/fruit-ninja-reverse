.class final Lcom/google/android/gms/internal/ads/zzahk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzahq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzahq<",
        "Lcom/google/android/gms/internal/ads/zzbgj;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 3

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbgj;

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbgj;->zzach()Lcom/google/android/gms/internal/ads/zzads;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 5
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzads;->zzsh()V

    :cond_b
    return-void
.end method
