.class public abstract Lcom/google/android/gms/internal/ads/zzcpd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdya;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdya<",
        "Lcom/google/android/gms/internal/ads/zzatc;",
        "Lcom/google/android/gms/internal/ads/zzdog;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzgjr:Lcom/google/android/gms/internal/ads/zzbwr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbwr;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcpd;->zzgjr:Lcom/google/android/gms/internal/ads/zzbwr;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzcpd;)Lcom/google/android/gms/internal/ads/zzbwr;
    .registers 1

    .line 12
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcpd;->zzgjr:Lcom/google/android/gms/internal/ads/zzbwr;

    return-object p0
.end method


# virtual methods
.method protected abstract zzb(Lcom/google/android/gms/internal/ads/zzatc;)Lcom/google/android/gms/internal/ads/zzdzc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzatc;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "Lcom/google/android/gms/internal/ads/zzdog;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzcof;
        }
    .end annotation
.end method

.method public final synthetic zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4
    check-cast p1, Lcom/google/android/gms/internal/ads/zzatc;

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpd;->zzgjr:Lcom/google/android/gms/internal/ads/zzbwr;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbwr;->zzd(Lcom/google/android/gms/internal/ads/zzatc;)V

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzcpd;->zzb(Lcom/google/android/gms/internal/ads/zzatc;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcpg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcpg;-><init>(Lcom/google/android/gms/internal/ads/zzcpd;)V

    .line 8
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbbz;->zzeeu:Lcom/google/android/gms/internal/ads/zzdzb;

    .line 9
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzdyq;->zza(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdyr;Ljava/util/concurrent/Executor;)V

    return-object p1
.end method
