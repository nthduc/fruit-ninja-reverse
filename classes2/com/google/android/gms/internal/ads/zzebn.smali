.class final Lcom/google/android/gms/internal/ads/zzebn;
.super Lcom/google/android/gms/internal/ads/zzeaf;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzeaf<",
        "Lcom/google/android/gms/internal/ads/zzedx;",
        "Lcom/google/android/gms/internal/ads/zzedu;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzhvs:Lcom/google/android/gms/internal/ads/zzebl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzebl;Ljava/lang/Class;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzebn;->zzhvs:Lcom/google/android/gms/internal/ads/zzebl;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzeaf;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final synthetic zzc(Lcom/google/android/gms/internal/ads/zzelj;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 11
    check-cast p1, Lcom/google/android/gms/internal/ads/zzedx;

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzedx;->getKeySize()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzeht;->zzfp(I)V

    return-void
.end method

.method public final synthetic zzd(Lcom/google/android/gms/internal/ads/zzelj;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzedx;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzedu;->zzbah()Lcom/google/android/gms/internal/ads/zzedu$zza;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzedx;->getKeySize()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzehs;->zzfo(I)[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzeip;->zzu([B)Lcom/google/android/gms/internal/ads/zzeip;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzedu$zza;->zzw(Lcom/google/android/gms/internal/ads/zzeip;)Lcom/google/android/gms/internal/ads/zzedu$zza;

    move-result-object p1

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzedu$zza;->zzew(I)Lcom/google/android/gms/internal/ads/zzedu$zza;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzbgt()Lcom/google/android/gms/internal/ads/zzelj;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzejz;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzedu;

    return-object p1
.end method

.method public final synthetic zzq(Lcom/google/android/gms/internal/ads/zzeip;)Lcom/google/android/gms/internal/ads/zzelj;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzekj;
        }
    .end annotation

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzejm;->zzbft()Lcom/google/android/gms/internal/ads/zzejm;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzedx;->zzl(Lcom/google/android/gms/internal/ads/zzeip;Lcom/google/android/gms/internal/ads/zzejm;)Lcom/google/android/gms/internal/ads/zzedx;

    move-result-object p1

    return-object p1
.end method
