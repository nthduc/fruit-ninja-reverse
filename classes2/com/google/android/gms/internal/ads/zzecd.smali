.class final Lcom/google/android/gms/internal/ads/zzecd;
.super Lcom/google/android/gms/internal/ads/zzeaf;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzeaf<",
        "Lcom/google/android/gms/internal/ads/zzeeh;",
        "Lcom/google/android/gms/internal/ads/zzeel;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzhwb:Lcom/google/android/gms/internal/ads/zzecb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzecb;Ljava/lang/Class;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzecd;->zzhwb:Lcom/google/android/gms/internal/ads/zzecb;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzeaf;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final synthetic zzc(Lcom/google/android/gms/internal/ads/zzelj;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 26
    check-cast p1, Lcom/google/android/gms/internal/ads/zzeeh;

    .line 27
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeeh;->zzbaq()Lcom/google/android/gms/internal/ads/zzeei;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzecj;->zza(Lcom/google/android/gms/internal/ads/zzeei;)V

    return-void
.end method

.method public final synthetic zzd(Lcom/google/android/gms/internal/ads/zzelj;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzeeh;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeeh;->zzbaq()Lcom/google/android/gms/internal/ads/zzeei;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeei;->zzbas()Lcom/google/android/gms/internal/ads/zzeep;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeep;->zzbbf()Lcom/google/android/gms/internal/ads/zzeeq;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzecj;->zza(Lcom/google/android/gms/internal/ads/zzeeq;)Lcom/google/android/gms/internal/ads/zzeha;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzegy;->zza(Lcom/google/android/gms/internal/ads/zzeha;)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzegy;->zza(Ljava/security/spec/ECParameterSpec;)Ljava/security/KeyPair;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/ECPublicKey;

    .line 8
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/ECPrivateKey;

    .line 9
    invoke-interface {v1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v1

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeem;->zzbbc()Lcom/google/android/gms/internal/ads/zzeem$zza;

    move-result-object v2

    const/4 v3, 0x0

    .line 11
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzeem$zza;->zzfa(I)Lcom/google/android/gms/internal/ads/zzeem$zza;

    move-result-object v2

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeeh;->zzbaq()Lcom/google/android/gms/internal/ads/zzeei;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzeem$zza;->zzc(Lcom/google/android/gms/internal/ads/zzeei;)Lcom/google/android/gms/internal/ads/zzeem$zza;

    move-result-object p1

    .line 13
    invoke-virtual {v1}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzeip;->zzu([B)Lcom/google/android/gms/internal/ads/zzeip;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzeem$zza;->zzab(Lcom/google/android/gms/internal/ads/zzeip;)Lcom/google/android/gms/internal/ads/zzeem$zza;

    move-result-object p1

    .line 14
    invoke-virtual {v1}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzeip;->zzu([B)Lcom/google/android/gms/internal/ads/zzeip;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzeem$zza;->zzac(Lcom/google/android/gms/internal/ads/zzeip;)Lcom/google/android/gms/internal/ads/zzeem$zza;

    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzbgt()Lcom/google/android/gms/internal/ads/zzelj;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzejz;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzeem;

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeel;->zzbay()Lcom/google/android/gms/internal/ads/zzeel$zza;

    move-result-object v1

    .line 17
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzeel$zza;->zzez(I)Lcom/google/android/gms/internal/ads/zzeel$zza;

    move-result-object v1

    .line 18
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzeel$zza;->zzb(Lcom/google/android/gms/internal/ads/zzeem;)Lcom/google/android/gms/internal/ads/zzeel$zza;

    move-result-object p1

    .line 19
    invoke-interface {v0}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeip;->zzu([B)Lcom/google/android/gms/internal/ads/zzeip;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzeel$zza;->zzaa(Lcom/google/android/gms/internal/ads/zzeip;)Lcom/google/android/gms/internal/ads/zzeel$zza;

    move-result-object p1

    .line 20
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzbgt()Lcom/google/android/gms/internal/ads/zzelj;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzejz;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzeel;

    return-object p1
.end method

.method public final synthetic zzq(Lcom/google/android/gms/internal/ads/zzeip;)Lcom/google/android/gms/internal/ads/zzelj;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzekj;
        }
    .end annotation

    .line 23
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzejm;->zzbft()Lcom/google/android/gms/internal/ads/zzejm;

    move-result-object v0

    .line 24
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzeeh;->zzo(Lcom/google/android/gms/internal/ads/zzeip;Lcom/google/android/gms/internal/ads/zzejm;)Lcom/google/android/gms/internal/ads/zzeeh;

    move-result-object p1

    return-object p1
.end method
