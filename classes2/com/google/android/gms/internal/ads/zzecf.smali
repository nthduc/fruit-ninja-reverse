.class final Lcom/google/android/gms/internal/ads/zzecf;
.super Lcom/google/android/gms/internal/ads/zzeai;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzeai<",
        "Lcom/google/android/gms/internal/ads/zzeac;",
        "Lcom/google/android/gms/internal/ads/zzeem;",
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
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzeem;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeem;->zzbaq()Lcom/google/android/gms/internal/ads/zzeei;

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
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeem;->zzbba()Lcom/google/android/gms/internal/ads/zzeip;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzeip;->toByteArray()[B

    move-result-object v3

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeem;->zzbbb()Lcom/google/android/gms/internal/ads/zzeip;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeip;->toByteArray()[B

    move-result-object p1

    .line 9
    invoke-static {v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzegy;->zza(Lcom/google/android/gms/internal/ads/zzeha;[B[B)Ljava/security/interfaces/ECPublicKey;

    move-result-object v5

    .line 10
    new-instance v9, Lcom/google/android/gms/internal/ads/zzecl;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeei;->zzbat()Lcom/google/android/gms/internal/ads/zzeed;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeed;->zzban()Lcom/google/android/gms/internal/ads/zzefe;

    move-result-object p1

    invoke-direct {v9, p1}, Lcom/google/android/gms/internal/ads/zzecl;-><init>(Lcom/google/android/gms/internal/ads/zzefe;)V

    .line 12
    new-instance p1, Lcom/google/android/gms/internal/ads/zzegu;

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzeep;->zzbbh()Lcom/google/android/gms/internal/ads/zzeip;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzeip;->toByteArray()[B

    move-result-object v6

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzeep;->zzbbg()Lcom/google/android/gms/internal/ads/zzeer;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzecj;->zza(Lcom/google/android/gms/internal/ads/zzeer;)Ljava/lang/String;

    move-result-object v7

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeei;->zzbau()Lcom/google/android/gms/internal/ads/zzeec;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzecj;->zza(Lcom/google/android/gms/internal/ads/zzeec;)Lcom/google/android/gms/internal/ads/zzegz;

    move-result-object v8

    move-object v4, p1

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzegu;-><init>(Ljava/security/interfaces/ECPublicKey;[BLjava/lang/String;Lcom/google/android/gms/internal/ads/zzegz;Lcom/google/android/gms/internal/ads/zzegs;)V

    return-object p1
.end method
