.class public final Lcom/google/android/gms/internal/ads/zzebf;
.super Lcom/google/android/gms/internal/ads/zzeag;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzeag<",
        "Lcom/google/android/gms/internal/ads/zzedi;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 5

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzedi;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzeai;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzebe;

    const-class v3, Lcom/google/android/gms/internal/ads/zzehl;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzebe;-><init>(Ljava/lang/Class;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzeag;-><init>(Ljava/lang/Class;[Lcom/google/android/gms/internal/ads/zzeai;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzebf;Lcom/google/android/gms/internal/ads/zzedm;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 17
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzebf;->zza(Lcom/google/android/gms/internal/ads/zzedm;)V

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzedm;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzedm;->zzazy()I

    move-result v0

    const/16 v1, 0xc

    if-lt v0, v1, :cond_11

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzedm;->zzazy()I

    move-result p0

    const/16 v0, 0x10

    if-gt p0, v0, :cond_11

    return-void

    .line 7
    :cond_11
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "invalid IV size"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getKeyType()Ljava/lang/String;
    .registers 2

    const-string v0, "type.googleapis.com/google.crypto.tink.AesCtrKey"

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
            "Lcom/google/android/gms/internal/ads/zzedl;",
            "Lcom/google/android/gms/internal/ads/zzedi;",
            ">;"
        }
    .end annotation

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzebh;

    const-class v1, Lcom/google/android/gms/internal/ads/zzedl;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzebh;-><init>(Lcom/google/android/gms/internal/ads/zzebf;Ljava/lang/Class;)V

    return-object v0
.end method

.method public final synthetic zze(Lcom/google/android/gms/internal/ads/zzelj;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 9
    check-cast p1, Lcom/google/android/gms/internal/ads/zzedi;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzedi;->getVersion()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzeht;->zzy(II)V

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzedi;->zzazd()Lcom/google/android/gms/internal/ads/zzeip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeip;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeht;->zzfp(I)V

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzedi;->zzazs()Lcom/google/android/gms/internal/ads/zzedm;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzebf;->zza(Lcom/google/android/gms/internal/ads/zzedm;)V

    return-void
.end method

.method public final synthetic zzr(Lcom/google/android/gms/internal/ads/zzeip;)Lcom/google/android/gms/internal/ads/zzelj;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzekj;
        }
    .end annotation

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzejm;->zzbft()Lcom/google/android/gms/internal/ads/zzejm;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzedi;->zzg(Lcom/google/android/gms/internal/ads/zzeip;Lcom/google/android/gms/internal/ads/zzejm;)Lcom/google/android/gms/internal/ads/zzedi;

    move-result-object p1

    return-object p1
.end method
