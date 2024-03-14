.class final Lcom/google/android/gms/internal/ads/zzecr;
.super Lcom/google/android/gms/internal/ads/zzeaf;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzeaf<",
        "Lcom/google/android/gms/internal/ads/zzeex;",
        "Lcom/google/android/gms/internal/ads/zzeet;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzhwn:Lcom/google/android/gms/internal/ads/zzecp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzecp;Ljava/lang/Class;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzecr;->zzhwn:Lcom/google/android/gms/internal/ads/zzecp;

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
    check-cast p1, Lcom/google/android/gms/internal/ads/zzeex;

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeex;->getKeySize()I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_12

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeex;->zzbbk()Lcom/google/android/gms/internal/ads/zzeey;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzecp;->zzb(Lcom/google/android/gms/internal/ads/zzeey;)V

    return-void

    .line 14
    :cond_12
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "key too short"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final synthetic zzd(Lcom/google/android/gms/internal/ads/zzelj;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzeex;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeet;->zzbbl()Lcom/google/android/gms/internal/ads/zzeet$zza;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzeet$zza;->zzfd(I)Lcom/google/android/gms/internal/ads/zzeet$zza;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeex;->zzbbk()Lcom/google/android/gms/internal/ads/zzeey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzeet$zza;->zzd(Lcom/google/android/gms/internal/ads/zzeey;)Lcom/google/android/gms/internal/ads/zzeet$zza;

    move-result-object v0

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeex;->getKeySize()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzehs;->zzfo(I)[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzeip;->zzu([B)Lcom/google/android/gms/internal/ads/zzeip;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzeet$zza;->zzad(Lcom/google/android/gms/internal/ads/zzeip;)Lcom/google/android/gms/internal/ads/zzeet$zza;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzbgt()Lcom/google/android/gms/internal/ads/zzelj;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzejz;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzeet;

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

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzeex;->zzs(Lcom/google/android/gms/internal/ads/zzeip;Lcom/google/android/gms/internal/ads/zzejm;)Lcom/google/android/gms/internal/ads/zzeex;

    move-result-object p1

    return-object p1
.end method
