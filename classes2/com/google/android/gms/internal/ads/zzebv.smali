.class public final Lcom/google/android/gms/internal/ads/zzebv;
.super Lcom/google/android/gms/internal/ads/zzeag;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzeag<",
        "Lcom/google/android/gms/internal/ads/zzefr;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 5

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzefr;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzeai;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzebu;

    const-class v3, Lcom/google/android/gms/internal/ads/zzdzv;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzebu;-><init>(Ljava/lang/Class;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzeag;-><init>(Ljava/lang/Class;[Lcom/google/android/gms/internal/ads/zzeai;)V

    return-void
.end method


# virtual methods
.method public final getKeyType()Ljava/lang/String;
    .registers 2

    const-string v0, "type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey"

    return-object v0
.end method

.method public final zzayo()Lcom/google/android/gms/internal/ads/zzefb$zza;
    .registers 2

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/zzefb$zza;->zzhzp:Lcom/google/android/gms/internal/ads/zzefb$zza;

    return-object v0
.end method

.method public final zzayr()Lcom/google/android/gms/internal/ads/zzeaf;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzeaf<",
            "Lcom/google/android/gms/internal/ads/zzefu;",
            "Lcom/google/android/gms/internal/ads/zzefr;",
            ">;"
        }
    .end annotation

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzebx;

    const-class v1, Lcom/google/android/gms/internal/ads/zzefu;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzebx;-><init>(Lcom/google/android/gms/internal/ads/zzebv;Ljava/lang/Class;)V

    return-object v0
.end method

.method public final synthetic zze(Lcom/google/android/gms/internal/ads/zzelj;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 6
    check-cast p1, Lcom/google/android/gms/internal/ads/zzefr;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzefr;->getVersion()I

    move-result p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzeht;->zzy(II)V

    return-void
.end method

.method public final synthetic zzr(Lcom/google/android/gms/internal/ads/zzeip;)Lcom/google/android/gms/internal/ads/zzelj;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzekj;
        }
    .end annotation

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzejm;->zzbft()Lcom/google/android/gms/internal/ads/zzejm;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzefr;->zzv(Lcom/google/android/gms/internal/ads/zzeip;Lcom/google/android/gms/internal/ads/zzejm;)Lcom/google/android/gms/internal/ads/zzefr;

    move-result-object p1

    return-object p1
.end method