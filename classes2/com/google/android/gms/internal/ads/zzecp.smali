.class public final Lcom/google/android/gms/internal/ads/zzecp;
.super Lcom/google/android/gms/internal/ads/zzeag;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzeag<",
        "Lcom/google/android/gms/internal/ads/zzeet;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzeet;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzeai;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzecs;

    const-class v3, Lcom/google/android/gms/internal/ads/zzeam;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzecs;-><init>(Ljava/lang/Class;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzeag;-><init>(Ljava/lang/Class;[Lcom/google/android/gms/internal/ads/zzeai;)V

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzeey;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeey;->zzazi()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_54

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/ads/zzecu;->zzhwk:[I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeey;->zzbbq()Lcom/google/android/gms/internal/ads/zzeer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzeer;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const-string v2, "tag size too big"

    if-eq v0, v1, :cond_45

    const/4 v1, 0x2

    if-eq v0, v1, :cond_36

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2e

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeey;->zzazi()I

    move-result p0

    const/16 v0, 0x40

    if-gt p0, v0, :cond_28

    goto :goto_4d

    .line 13
    :cond_28
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 14
    :cond_2e
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "unknown hash type"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_36
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeey;->zzazi()I

    move-result p0

    const/16 v0, 0x20

    if-gt p0, v0, :cond_3f

    goto :goto_4d

    .line 11
    :cond_3f
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_45
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeey;->zzazi()I

    move-result p0

    const/16 v0, 0x14

    if-gt p0, v0, :cond_4e

    :goto_4d
    return-void

    .line 9
    :cond_4e
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_54
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "tag size too small"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzeey;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 26
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzecp;->zza(Lcom/google/android/gms/internal/ads/zzeey;)V

    return-void
.end method


# virtual methods
.method public final getKeyType()Ljava/lang/String;
    .registers 2

    const-string v0, "type.googleapis.com/google.crypto.tink.HmacKey"

    return-object v0
.end method

.method public final zzayo()Lcom/google/android/gms/internal/ads/zzefb$zza;
    .registers 2

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/zzefb$zza;->zzhzm:Lcom/google/android/gms/internal/ads/zzefb$zza;

    return-object v0
.end method

.method public final zzayr()Lcom/google/android/gms/internal/ads/zzeaf;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzeaf<",
            "Lcom/google/android/gms/internal/ads/zzeex;",
            "Lcom/google/android/gms/internal/ads/zzeet;",
            ">;"
        }
    .end annotation

    .line 16
    new-instance v0, Lcom/google/android/gms/internal/ads/zzecr;

    const-class v1, Lcom/google/android/gms/internal/ads/zzeex;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzecr;-><init>(Lcom/google/android/gms/internal/ads/zzecp;Ljava/lang/Class;)V

    return-object v0
.end method

.method public final synthetic zze(Lcom/google/android/gms/internal/ads/zzelj;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 17
    check-cast p1, Lcom/google/android/gms/internal/ads/zzeet;

    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeet;->getVersion()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzeht;->zzy(II)V

    .line 19
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeet;->zzazd()Lcom/google/android/gms/internal/ads/zzeip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeip;->size()I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1e

    .line 21
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeet;->zzbbk()Lcom/google/android/gms/internal/ads/zzeey;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzecp;->zza(Lcom/google/android/gms/internal/ads/zzeey;)V

    return-void

    .line 20
    :cond_1e
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "key too short"

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

    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzejm;->zzbft()Lcom/google/android/gms/internal/ads/zzejm;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzeet;->zzr(Lcom/google/android/gms/internal/ads/zzeip;Lcom/google/android/gms/internal/ads/zzejm;)Lcom/google/android/gms/internal/ads/zzeet;

    move-result-object p1

    return-object p1
.end method
