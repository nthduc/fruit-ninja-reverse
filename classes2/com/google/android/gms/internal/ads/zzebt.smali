.class final Lcom/google/android/gms/internal/ads/zzebt;
.super Lcom/google/android/gms/internal/ads/zzeaf;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzeaf<",
        "Lcom/google/android/gms/internal/ads/zzefq;",
        "Lcom/google/android/gms/internal/ads/zzefn;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzhvx:Lcom/google/android/gms/internal/ads/zzebr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzebr;Ljava/lang/Class;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzebt;->zzhvx:Lcom/google/android/gms/internal/ads/zzebr;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzeaf;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzelj;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 8
    check-cast p1, Lcom/google/android/gms/internal/ads/zzefq;

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
    check-cast p1, Lcom/google/android/gms/internal/ads/zzefq;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzefn;->zzbct()Lcom/google/android/gms/internal/ads/zzefn$zza;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzefn$zza;->zzb(Lcom/google/android/gms/internal/ads/zzefq;)Lcom/google/android/gms/internal/ads/zzefn$zza;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzefn$zza;->zzfk(I)Lcom/google/android/gms/internal/ads/zzefn$zza;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzbgt()Lcom/google/android/gms/internal/ads/zzelj;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzejz;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzefn;

    return-object p1
.end method

.method public final synthetic zzq(Lcom/google/android/gms/internal/ads/zzeip;)Lcom/google/android/gms/internal/ads/zzelj;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzekj;
        }
    .end annotation

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzejm;->zzbft()Lcom/google/android/gms/internal/ads/zzejm;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzefq;->zzu(Lcom/google/android/gms/internal/ads/zzeip;Lcom/google/android/gms/internal/ads/zzejm;)Lcom/google/android/gms/internal/ads/zzefq;

    move-result-object p1

    return-object p1
.end method
