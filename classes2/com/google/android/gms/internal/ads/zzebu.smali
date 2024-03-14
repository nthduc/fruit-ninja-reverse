.class final Lcom/google/android/gms/internal/ads/zzebu;
.super Lcom/google/android/gms/internal/ads/zzeai;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzeai<",
        "Lcom/google/android/gms/internal/ads/zzdzv;",
        "Lcom/google/android/gms/internal/ads/zzefr;",
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
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzefr;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzefr;->zzbcy()Lcom/google/android/gms/internal/ads/zzefu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzefu;->zzbdb()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeaj;->zzhj(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzeak;

    move-result-object v1

    .line 5
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzeak;->zzhl(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdzv;

    move-result-object v0

    .line 6
    new-instance v1, Lcom/google/android/gms/internal/ads/zzebs;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzefr;->zzbcy()Lcom/google/android/gms/internal/ads/zzefu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzefu;->zzbdc()Lcom/google/android/gms/internal/ads/zzefe;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzebs;-><init>(Lcom/google/android/gms/internal/ads/zzefe;Lcom/google/android/gms/internal/ads/zzdzv;)V

    return-object v1
.end method
