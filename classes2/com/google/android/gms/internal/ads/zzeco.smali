.class public final Lcom/google/android/gms/internal/ads/zzeco;
.super Lcom/google/android/gms/internal/ads/zzeag;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzeag<",
        "Lcom/google/android/gms/internal/ads/zzecz;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 5

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzecz;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzeai;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzecn;

    const-class v3, Lcom/google/android/gms/internal/ads/zzeam;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzecn;-><init>(Ljava/lang/Class;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzeag;-><init>(Ljava/lang/Class;[Lcom/google/android/gms/internal/ads/zzeai;)V

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzedd;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzedd;->zzazi()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_19

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzedd;->zzazi()I

    move-result p0

    const/16 v0, 0x10

    if-gt p0, v0, :cond_11

    return-void

    .line 8
    :cond_11
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "tag size too long"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_19
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "tag size too short"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzedd;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 22
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzeco;->zza(Lcom/google/android/gms/internal/ads/zzedd;)V

    return-void
.end method

.method private static zzeq(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/16 v0, 0x20

    if-ne p0, v0, :cond_5

    return-void

    .line 11
    :cond_5
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "AesCmacKey size wrong, must be 16 bytes"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic zzer(I)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 23
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzeco;->zzeq(I)V

    return-void
.end method


# virtual methods
.method public final getKeyType()Ljava/lang/String;
    .registers 2

    const-string v0, "type.googleapis.com/google.crypto.tink.AesCmacKey"

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
            "Lcom/google/android/gms/internal/ads/zzeda;",
            "Lcom/google/android/gms/internal/ads/zzecz;",
            ">;"
        }
    .end annotation

    .line 13
    new-instance v0, Lcom/google/android/gms/internal/ads/zzecq;

    const-class v1, Lcom/google/android/gms/internal/ads/zzeda;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzecq;-><init>(Lcom/google/android/gms/internal/ads/zzeco;Ljava/lang/Class;)V

    return-object v0
.end method

.method public final synthetic zze(Lcom/google/android/gms/internal/ads/zzelj;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 14
    check-cast p1, Lcom/google/android/gms/internal/ads/zzecz;

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzecz;->getVersion()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzeht;->zzy(II)V

    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzecz;->zzazd()Lcom/google/android/gms/internal/ads/zzeip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeip;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeco;->zzeq(I)V

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzecz;->zzaze()Lcom/google/android/gms/internal/ads/zzedd;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzeco;->zza(Lcom/google/android/gms/internal/ads/zzedd;)V

    return-void
.end method

.method public final synthetic zzr(Lcom/google/android/gms/internal/ads/zzeip;)Lcom/google/android/gms/internal/ads/zzelj;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzekj;
        }
    .end annotation

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzejm;->zzbft()Lcom/google/android/gms/internal/ads/zzejm;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzecz;->zzc(Lcom/google/android/gms/internal/ads/zzeip;Lcom/google/android/gms/internal/ads/zzejm;)Lcom/google/android/gms/internal/ads/zzecz;

    move-result-object p1

    return-object p1
.end method
