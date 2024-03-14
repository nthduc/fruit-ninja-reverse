.class final Lcom/google/android/gms/internal/ads/zzeca;
.super Lcom/google/android/gms/internal/ads/zzeai;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzeai<",
        "Lcom/google/android/gms/internal/ads/zzdzz;",
        "Lcom/google/android/gms/internal/ads/zzeel;",
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
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzeel;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeel;->zzbax()Lcom/google/android/gms/internal/ads/zzeem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeem;->zzbaq()Lcom/google/android/gms/internal/ads/zzeei;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeei;->zzbas()Lcom/google/android/gms/internal/ads/zzeep;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzeep;->zzbbf()Lcom/google/android/gms/internal/ads/zzeeq;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzecj;->zza(Lcom/google/android/gms/internal/ads/zzeeq;)Lcom/google/android/gms/internal/ads/zzeha;

    move-result-object v2

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeel;->zzazd()Lcom/google/android/gms/internal/ads/zzeip;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeip;->toByteArray()[B

    move-result-object p1

    .line 9
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzegy;->zza(Lcom/google/android/gms/internal/ads/zzeha;)Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    .line 10
    new-instance v3, Ljava/math/BigInteger;

    const/4 v4, 0x1

    invoke-direct {v3, v4, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 11
    new-instance p1, Ljava/security/spec/ECPrivateKeySpec;

    invoke-direct {p1, v3, v2}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    .line 12
    sget-object v2, Lcom/google/android/gms/internal/ads/zzehb;->zzidd:Lcom/google/android/gms/internal/ads/zzehb;

    const-string v3, "EC"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzehb;->zzhs(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/KeyFactory;

    .line 13
    invoke-virtual {v2, p1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/security/interfaces/ECPrivateKey;

    .line 15
    new-instance v7, Lcom/google/android/gms/internal/ads/zzecl;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeei;->zzbat()Lcom/google/android/gms/internal/ads/zzeed;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeed;->zzban()Lcom/google/android/gms/internal/ads/zzefe;

    move-result-object p1

    invoke-direct {v7, p1}, Lcom/google/android/gms/internal/ads/zzecl;-><init>(Lcom/google/android/gms/internal/ads/zzefe;)V

    .line 17
    new-instance p1, Lcom/google/android/gms/internal/ads/zzegr;

    .line 18
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzeep;->zzbbh()Lcom/google/android/gms/internal/ads/zzeip;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzeip;->toByteArray()[B

    move-result-object v4

    .line 19
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzeep;->zzbbg()Lcom/google/android/gms/internal/ads/zzeer;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzecj;->zza(Lcom/google/android/gms/internal/ads/zzeer;)Ljava/lang/String;

    move-result-object v5

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeei;->zzbau()Lcom/google/android/gms/internal/ads/zzeec;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzecj;->zza(Lcom/google/android/gms/internal/ads/zzeec;)Lcom/google/android/gms/internal/ads/zzegz;

    move-result-object v6

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzegr;-><init>(Ljava/security/interfaces/ECPrivateKey;[BLjava/lang/String;Lcom/google/android/gms/internal/ads/zzegz;Lcom/google/android/gms/internal/ads/zzegs;)V

    return-object p1
.end method
