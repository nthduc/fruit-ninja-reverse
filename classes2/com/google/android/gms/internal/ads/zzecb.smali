.class public final Lcom/google/android/gms/internal/ads/zzecb;
.super Lcom/google/android/gms/internal/ads/zzeas;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzeas<",
        "Lcom/google/android/gms/internal/ads/zzeel;",
        "Lcom/google/android/gms/internal/ads/zzeem;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzhwa:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 15
    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/gms/internal/ads/zzecb;->zzhwa:[B

    return-void
.end method

.method constructor <init>()V
    .registers 6

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzeel;

    const-class v1, Lcom/google/android/gms/internal/ads/zzeem;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/android/gms/internal/ads/zzeai;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzeca;

    const-class v4, Lcom/google/android/gms/internal/ads/zzdzz;

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/ads/zzeca;-><init>(Ljava/lang/Class;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzeas;-><init>(Ljava/lang/Class;Ljava/lang/Class;[Lcom/google/android/gms/internal/ads/zzeai;)V

    return-void
.end method


# virtual methods
.method public final getKeyType()Ljava/lang/String;
    .registers 2

    const-string v0, "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey"

    return-object v0
.end method

.method public final zzayo()Lcom/google/android/gms/internal/ads/zzefb$zza;
    .registers 2

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/zzefb$zza;->zzhzn:Lcom/google/android/gms/internal/ads/zzefb$zza;

    return-object v0
.end method

.method public final zzayr()Lcom/google/android/gms/internal/ads/zzeaf;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzeaf<",
            "Lcom/google/android/gms/internal/ads/zzeeh;",
            "Lcom/google/android/gms/internal/ads/zzeel;",
            ">;"
        }
    .end annotation

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzecd;

    const-class v1, Lcom/google/android/gms/internal/ads/zzeeh;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzecd;-><init>(Lcom/google/android/gms/internal/ads/zzecb;Ljava/lang/Class;)V

    return-object v0
.end method

.method public final synthetic zze(Lcom/google/android/gms/internal/ads/zzelj;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 6
    check-cast p1, Lcom/google/android/gms/internal/ads/zzeel;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeel;->zzazd()Lcom/google/android/gms/internal/ads/zzeip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeip;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeel;->getVersion()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzeht;->zzy(II)V

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeel;->zzbax()Lcom/google/android/gms/internal/ads/zzeem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeem;->zzbaq()Lcom/google/android/gms/internal/ads/zzeei;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzecj;->zza(Lcom/google/android/gms/internal/ads/zzeei;)V

    return-void

    .line 8
    :cond_20
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "invalid ECIES private key"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final synthetic zzr(Lcom/google/android/gms/internal/ads/zzeip;)Lcom/google/android/gms/internal/ads/zzelj;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzekj;
        }
    .end annotation

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzejm;->zzbft()Lcom/google/android/gms/internal/ads/zzejm;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzeel;->zzp(Lcom/google/android/gms/internal/ads/zzeip;Lcom/google/android/gms/internal/ads/zzejm;)Lcom/google/android/gms/internal/ads/zzeel;

    move-result-object p1

    return-object p1
.end method
