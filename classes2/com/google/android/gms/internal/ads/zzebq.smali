.class final Lcom/google/android/gms/internal/ads/zzebq;
.super Lcom/google/android/gms/internal/ads/zzeai;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzeai<",
        "Lcom/google/android/gms/internal/ads/zzdzv;",
        "Lcom/google/android/gms/internal/ads/zzefn;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzeai;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final synthetic zzag(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzefn;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzefn;->zzbcs()Lcom/google/android/gms/internal/ads/zzefq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzefq;->zzbcv()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzeaj;->zzhj(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzeak;

    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzeak;->zzhl(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdzv;

    move-result-object p1

    return-object p1
.end method
