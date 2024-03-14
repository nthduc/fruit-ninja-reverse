.class final Lcom/google/android/gms/internal/ads/zzecq;
.super Lcom/google/android/gms/internal/ads/zzeaf;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzeaf<",
        "Lcom/google/android/gms/internal/ads/zzeda;",
        "Lcom/google/android/gms/internal/ads/zzecz;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzeco;Ljava/lang/Class;)V
    .registers 3

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzeaf;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final synthetic zzc(Lcom/google/android/gms/internal/ads/zzelj;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 12
    check-cast p1, Lcom/google/android/gms/internal/ads/zzeda;

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeda;->zzaze()Lcom/google/android/gms/internal/ads/zzedd;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeco;->zzb(Lcom/google/android/gms/internal/ads/zzedd;)V

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeda;->getKeySize()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzeco;->zzer(I)V

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
    check-cast p1, Lcom/google/android/gms/internal/ads/zzeda;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzecz;->zzazf()Lcom/google/android/gms/internal/ads/zzecz$zza;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzecz$zza;->zzes(I)Lcom/google/android/gms/internal/ads/zzecz$zza;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeda;->getKeySize()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzehs;->zzfo(I)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzeip;->zzu([B)Lcom/google/android/gms/internal/ads/zzeip;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzecz$zza;->zzt(Lcom/google/android/gms/internal/ads/zzeip;)Lcom/google/android/gms/internal/ads/zzecz$zza;

    move-result-object v0

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeda;->zzaze()Lcom/google/android/gms/internal/ads/zzedd;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzecz$zza;->zzd(Lcom/google/android/gms/internal/ads/zzedd;)Lcom/google/android/gms/internal/ads/zzecz$zza;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzbgt()Lcom/google/android/gms/internal/ads/zzelj;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzejz;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzecz;

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

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzeda;->zzd(Lcom/google/android/gms/internal/ads/zzeip;Lcom/google/android/gms/internal/ads/zzejm;)Lcom/google/android/gms/internal/ads/zzeda;

    move-result-object p1

    return-object p1
.end method
