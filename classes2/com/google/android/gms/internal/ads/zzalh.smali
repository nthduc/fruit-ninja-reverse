.class final Lcom/google/android/gms/internal/ads/zzalh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbck;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzbck<",
        "Lcom/google/android/gms/internal/ads/zzalp;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzali;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zzh(Ljava/lang/Object;)V
    .registers 3

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzalp;

    const-string v0, "Ending javascript session."

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzei(Ljava/lang/String;)V

    .line 4
    check-cast p1, Lcom/google/android/gms/internal/ads/zzals;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzals;->zzto()V

    return-void
.end method
