.class public final Lcom/google/android/gms/internal/ads/zzehn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzecx;


# instance fields
.field private final zzidk:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljavax/crypto/Mac;",
            ">;"
        }
    .end annotation
.end field

.field private final zzidl:Ljava/lang/String;

.field private final zzidm:Ljava/security/Key;

.field private final zzidn:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/security/Key;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzehq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzehq;-><init>(Lcom/google/android/gms/internal/ads/zzehn;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzehn;->zzidk:Ljava/lang/ThreadLocal;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzehn;->zzidl:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzehn;->zzidm:Ljava/security/Key;

    .line 5
    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object p2

    array-length p2, p2

    const/16 v0, 0x10

    if-lt p2, v0, :cond_81

    const/4 p2, -0x1

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x6ca99674

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v1, :cond_42

    const v1, 0x176240ee

    if-eq v0, v1, :cond_38

    const v1, 0x17624bb1

    if-eq v0, v1, :cond_2e

    goto :goto_4b

    :cond_2e
    const-string v0, "HMACSHA512"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    const/4 p2, 0x2

    goto :goto_4b

    :cond_38
    const-string v0, "HMACSHA256"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    const/4 p2, 0x1

    goto :goto_4b

    :cond_42
    const-string v0, "HMACSHA1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    const/4 p2, 0x0

    :cond_4b
    :goto_4b
    if-eqz p2, :cond_77

    if-eq p2, v3, :cond_72

    if-eq p2, v2, :cond_6d

    .line 14
    new-instance p2, Ljava/security/NoSuchAlgorithmException;

    const-string v0, "unknown Hmac algorithm: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_64

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_69

    :cond_64
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_69
    invoke-direct {p2, p1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_6d
    const/16 p1, 0x40

    .line 12
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzehn;->zzidn:I

    goto :goto_7b

    :cond_72
    const/16 p1, 0x20

    .line 10
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzehn;->zzidn:I

    goto :goto_7b

    :cond_77
    const/16 p1, 0x14

    .line 8
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzehn;->zzidn:I

    .line 15
    :goto_7b
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzehn;->zzidk:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    return-void

    .line 6
    :cond_81
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "key size too small, need at least 16 bytes"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzehn;)Ljava/lang/String;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzehn;->zzidl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzehn;)Ljava/security/Key;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzehn;->zzidm:Ljava/security/Key;

    return-object p0
.end method


# virtual methods
.method public final zzd([BI)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 17
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzehn;->zzidn:I

    if-gt p2, v0, :cond_20

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehn;->zzidk:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Mac;

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->update([B)V

    .line 20
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzehn;->zzidk:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/crypto/Mac;

    invoke-virtual {p1}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object p1

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    return-object p1

    .line 18
    :cond_20
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "tag size too big"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
