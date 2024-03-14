.class final Lcom/google/android/gms/internal/ads/zzebx;
.super Lcom/google/android/gms/internal/ads/zzeaf;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzeaf<",
        "Lcom/google/android/gms/internal/ads/zzefu;",
        "Lcom/google/android/gms/internal/ads/zzefr;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzhvy:Lcom/google/android/gms/internal/ads/zzebv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzebv;Ljava/lang/Class;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzebx;->zzhvy:Lcom/google/android/gms/internal/ads/zzebv;

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

    .line 9
    check-cast p1, Lcom/google/android/gms/internal/ads/zzefu;

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
    check-cast p1, Lcom/google/android/gms/internal/ads/zzefu;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzefr;->zzbcz()Lcom/google/android/gms/internal/ads/zzefr$zza;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzefr$zza;->zzb(Lcom/google/android/gms/internal/ads/zzefu;)Lcom/google/android/gms/internal/ads/zzefr$zza;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzefr$zza;->zzfl(I)Lcom/google/android/gms/internal/ads/zzefr$zza;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzbgt()Lcom/google/android/gms/internal/ads/zzelj;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzejz;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzefr;

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

    .line 7
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzefu;->zzw(Lcom/google/android/gms/internal/ads/zzeip;Lcom/google/android/gms/internal/ads/zzejm;)Lcom/google/android/gms/internal/ads/zzefu;

    move-result-object p1

    return-object p1
.end method
