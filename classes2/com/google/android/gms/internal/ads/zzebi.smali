.class final Lcom/google/android/gms/internal/ads/zzebi;
.super Lcom/google/android/gms/internal/ads/zzeaf;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzeaf<",
        "Lcom/google/android/gms/internal/ads/zzedq;",
        "Lcom/google/android/gms/internal/ads/zzedp;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzhvr:Lcom/google/android/gms/internal/ads/zzebg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzebg;Ljava/lang/Class;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzebi;->zzhvr:Lcom/google/android/gms/internal/ads/zzebg;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzeaf;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final synthetic zzc(Lcom/google/android/gms/internal/ads/zzelj;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 12
    check-cast p1, Lcom/google/android/gms/internal/ads/zzedq;

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzedq;->getKeySize()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeht;->zzfp(I)V

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzedq;->zzbab()Lcom/google/android/gms/internal/ads/zzedt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzedt;->zzazy()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_2a

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzedq;->zzbab()Lcom/google/android/gms/internal/ads/zzedt;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzedt;->zzazy()I

    move-result p1

    const/16 v0, 0x10

    if-ne p1, v0, :cond_22

    goto :goto_2a

    .line 15
    :cond_22
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "invalid IV size; acceptable values have 12 or 16 bytes"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2a
    :goto_2a
    return-void
.end method

.method public final synthetic zzd(Lcom/google/android/gms/internal/ads/zzelj;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzedq;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzedp;->zzbac()Lcom/google/android/gms/internal/ads/zzedp$zza;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzedq;->getKeySize()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzehs;->zzfo(I)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzeip;->zzu([B)Lcom/google/android/gms/internal/ads/zzeip;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzedp$zza;->zzv(Lcom/google/android/gms/internal/ads/zzeip;)Lcom/google/android/gms/internal/ads/zzedp$zza;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzedq;->zzbab()Lcom/google/android/gms/internal/ads/zzedt;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzedp$zza;->zzb(Lcom/google/android/gms/internal/ads/zzedt;)Lcom/google/android/gms/internal/ads/zzedp$zza;

    move-result-object p1

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzedp$zza;->zzev(I)Lcom/google/android/gms/internal/ads/zzedp$zza;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzbgt()Lcom/google/android/gms/internal/ads/zzelj;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzejz;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzedp;

    return-object p1
.end method

.method public final synthetic zzq(Lcom/google/android/gms/internal/ads/zzeip;)Lcom/google/android/gms/internal/ads/zzelj;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzekj;
        }
    .end annotation

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzejm;->zzbft()Lcom/google/android/gms/internal/ads/zzejm;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzedq;->zzj(Lcom/google/android/gms/internal/ads/zzeip;Lcom/google/android/gms/internal/ads/zzejm;)Lcom/google/android/gms/internal/ads/zzedq;

    move-result-object p1

    return-object p1
.end method
