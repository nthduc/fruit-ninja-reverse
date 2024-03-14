.class final Lcom/google/android/gms/internal/ads/zzecl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzegs;


# instance fields
.field private final zzhwf:Ljava/lang/String;

.field private final zzhwg:I

.field private zzhwh:Lcom/google/android/gms/internal/ads/zzedu;

.field private zzhwi:Lcom/google/android/gms/internal/ads/zzede;

.field private zzhwj:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzefe;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzefe;->zzbbt()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzecl;->zzhwf:Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzecl;->zzhwf:Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzeax;->zzhvf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 5
    :try_start_13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzefe;->zzbbu()Lcom/google/android/gms/internal/ads/zzeip;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzejm;->zzbft()Lcom/google/android/gms/internal/ads/zzejm;

    move-result-object v1

    .line 6
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzedx;->zzl(Lcom/google/android/gms/internal/ads/zzeip;Lcom/google/android/gms/internal/ads/zzejm;)Lcom/google/android/gms/internal/ads/zzedx;

    move-result-object v0

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzear;->zzb(Lcom/google/android/gms/internal/ads/zzefe;)Lcom/google/android/gms/internal/ads/zzelj;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzedu;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzecl;->zzhwh:Lcom/google/android/gms/internal/ads/zzedu;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzedx;->getKeySize()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzecl;->zzhwg:I
    :try_end_2d
    .catch Lcom/google/android/gms/internal/ads/zzekj; {:try_start_13 .. :try_end_2d} :catch_2e

    return-void

    :catch_2e
    move-exception p1

    .line 11
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "invalid KeyFormat protobuf, expected AesGcmKeyFormat"

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 12
    :cond_37
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzecl;->zzhwf:Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzeax;->zzhve:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 14
    :try_start_41
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzefe;->zzbbu()Lcom/google/android/gms/internal/ads/zzeip;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzejm;->zzbft()Lcom/google/android/gms/internal/ads/zzejm;

    move-result-object v1

    .line 15
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzedh;->zzf(Lcom/google/android/gms/internal/ads/zzeip;Lcom/google/android/gms/internal/ads/zzejm;)Lcom/google/android/gms/internal/ads/zzedh;

    move-result-object v0

    .line 16
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzear;->zzb(Lcom/google/android/gms/internal/ads/zzefe;)Lcom/google/android/gms/internal/ads/zzelj;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzede;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzecl;->zzhwi:Lcom/google/android/gms/internal/ads/zzede;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzedh;->zzazp()Lcom/google/android/gms/internal/ads/zzedl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzedl;->getKeySize()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzecl;->zzhwj:I

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzedh;->zzazq()Lcom/google/android/gms/internal/ads/zzeex;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeex;->getKeySize()I

    move-result p1

    .line 19
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzecl;->zzhwj:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzecl;->zzhwg:I
    :try_end_6c
    .catch Lcom/google/android/gms/internal/ads/zzekj; {:try_start_41 .. :try_end_6c} :catch_6d

    return-void

    :catch_6d
    move-exception p1

    .line 22
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "invalid KeyFormat protobuf, expected AesCtrHmacAeadKeyFormat"

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 23
    :cond_76
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "unsupported AEAD DEM key type: "

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzecl;->zzhwf:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_8b

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_91

    :cond_8b
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_91
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final zzazc()I
    .registers 2

    .line 24
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzecl;->zzhwg:I

    return v0
.end method

.method public final zzn([B)Lcom/google/android/gms/internal/ads/zzdzv;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 25
    array-length v0, p1

    .line 26
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzecl;->zzhwg:I

    if-ne v0, v1, :cond_c2

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzecl;->zzhwf:Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzeax;->zzhvf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_39

    .line 30
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzedu;->zzbah()Lcom/google/android/gms/internal/ads/zzedu$zza;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzecl;->zzhwh:Lcom/google/android/gms/internal/ads/zzedu;

    .line 31
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzb(Lcom/google/android/gms/internal/ads/zzejz;)Lcom/google/android/gms/internal/ads/zzejz$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzedu$zza;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzecl;->zzhwg:I

    .line 32
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzeip;->zzi([BII)Lcom/google/android/gms/internal/ads/zzeip;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzedu$zza;->zzw(Lcom/google/android/gms/internal/ads/zzeip;)Lcom/google/android/gms/internal/ads/zzedu$zza;

    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzbgt()Lcom/google/android/gms/internal/ads/zzelj;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzejz;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzedu;

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzecl;->zzhwf:Ljava/lang/String;

    const-class v1, Lcom/google/android/gms/internal/ads/zzdzv;

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzear;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzelj;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdzv;

    return-object p1

    .line 35
    :cond_39
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzecl;->zzhwf:Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzeax;->zzhve:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 36
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzecl;->zzhwj:I

    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 37
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzecl;->zzhwj:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzecl;->zzhwg:I

    invoke-static {p1, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    .line 38
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzedi;->zzazt()Lcom/google/android/gms/internal/ads/zzedi$zza;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzecl;->zzhwi:Lcom/google/android/gms/internal/ads/zzede;

    .line 39
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzede;->zzazl()Lcom/google/android/gms/internal/ads/zzedi;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzb(Lcom/google/android/gms/internal/ads/zzejz;)Lcom/google/android/gms/internal/ads/zzejz$zzb;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzedi$zza;

    .line 40
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeip;->zzu([B)Lcom/google/android/gms/internal/ads/zzeip;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzedi$zza;->zzu(Lcom/google/android/gms/internal/ads/zzeip;)Lcom/google/android/gms/internal/ads/zzedi$zza;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzbgt()Lcom/google/android/gms/internal/ads/zzelj;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzejz;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzedi;

    .line 42
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeet;->zzbbl()Lcom/google/android/gms/internal/ads/zzeet$zza;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzecl;->zzhwi:Lcom/google/android/gms/internal/ads/zzede;

    .line 43
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzede;->zzazm()Lcom/google/android/gms/internal/ads/zzeet;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzb(Lcom/google/android/gms/internal/ads/zzejz;)Lcom/google/android/gms/internal/ads/zzejz$zzb;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzeet$zza;

    .line 44
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzeip;->zzu([B)Lcom/google/android/gms/internal/ads/zzeip;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzeet$zza;->zzad(Lcom/google/android/gms/internal/ads/zzeip;)Lcom/google/android/gms/internal/ads/zzeet$zza;

    move-result-object p1

    .line 45
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzbgt()Lcom/google/android/gms/internal/ads/zzelj;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzejz;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzeet;

    .line 46
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzede;->zzazn()Lcom/google/android/gms/internal/ads/zzede$zza;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzecl;->zzhwi:Lcom/google/android/gms/internal/ads/zzede;

    .line 47
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzede;->getVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzede$zza;->zzet(I)Lcom/google/android/gms/internal/ads/zzede$zza;

    move-result-object v1

    .line 48
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzede$zza;->zzb(Lcom/google/android/gms/internal/ads/zzedi;)Lcom/google/android/gms/internal/ads/zzede$zza;

    move-result-object v0

    .line 49
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzede$zza;->zzb(Lcom/google/android/gms/internal/ads/zzeet;)Lcom/google/android/gms/internal/ads/zzede$zza;

    move-result-object p1

    .line 50
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzbgt()Lcom/google/android/gms/internal/ads/zzelj;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzejz;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzede;

    .line 51
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzecl;->zzhwf:Ljava/lang/String;

    const-class v1, Lcom/google/android/gms/internal/ads/zzdzv;

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzear;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzelj;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdzv;

    return-object p1

    .line 52
    :cond_ba
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "unknown DEM key type"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_c2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Symmetric key has incorrect length"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
