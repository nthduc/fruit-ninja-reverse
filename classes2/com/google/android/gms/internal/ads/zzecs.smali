.class final Lcom/google/android/gms/internal/ads/zzecs;
.super Lcom/google/android/gms/internal/ads/zzeai;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzeai<",
        "Lcom/google/android/gms/internal/ads/zzeam;",
        "Lcom/google/android/gms/internal/ads/zzeet;",
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
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzeet;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeet;->zzbbk()Lcom/google/android/gms/internal/ads/zzeey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeey;->zzbbq()Lcom/google/android/gms/internal/ads/zzeer;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeet;->zzazd()Lcom/google/android/gms/internal/ads/zzeip;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzeip;->toByteArray()[B

    move-result-object v1

    .line 5
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "HMAC"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeet;->zzbbk()Lcom/google/android/gms/internal/ads/zzeey;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeey;->zzazi()I

    move-result p1

    .line 7
    sget-object v1, Lcom/google/android/gms/internal/ads/zzecu;->zzhwk:[I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeer;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_54

    const/4 v1, 0x2

    if-eq v0, v1, :cond_47

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3f

    .line 10
    new-instance v0, Lcom/google/android/gms/internal/ads/zzehp;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzehn;

    const-string v3, "HMACSHA512"

    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzehn;-><init>(Ljava/lang/String;Ljava/security/Key;)V

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzehp;-><init>(Lcom/google/android/gms/internal/ads/zzecx;I)V

    return-object v0

    .line 11
    :cond_3f
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "unknown hash"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_47
    new-instance v0, Lcom/google/android/gms/internal/ads/zzehp;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzehn;

    const-string v3, "HMACSHA256"

    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzehn;-><init>(Ljava/lang/String;Ljava/security/Key;)V

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzehp;-><init>(Lcom/google/android/gms/internal/ads/zzecx;I)V

    return-object v0

    .line 8
    :cond_54
    new-instance v0, Lcom/google/android/gms/internal/ads/zzehp;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzehn;

    const-string v3, "HMACSHA1"

    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzehn;-><init>(Ljava/lang/String;Ljava/security/Key;)V

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzehp;-><init>(Lcom/google/android/gms/internal/ads/zzecx;I)V

    return-object v0
.end method
