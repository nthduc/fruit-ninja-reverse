.class public final Lcom/google/android/gms/internal/ads/zzeah;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final zzhui:Lcom/google/android/gms/internal/ads/zzefj;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzefj;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeah;->zzhui:Lcom/google/android/gms/internal/ads/zzefj;

    return-void
.end method

.method static final zza(Lcom/google/android/gms/internal/ads/zzefj;)Lcom/google/android/gms/internal/ads/zzeah;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    if-eqz p0, :cond_e

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzefj;->zzbci()I

    move-result v0

    if-lez v0, :cond_e

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeah;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzeah;-><init>(Lcom/google/android/gms/internal/ads/zzefj;)V

    return-object v0

    .line 6
    :cond_e
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "empty keyset"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeah;->zzhui:Lcom/google/android/gms/internal/ads/zzefj;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeay;->zzb(Lcom/google/android/gms/internal/ads/zzefj;)Lcom/google/android/gms/internal/ads/zzefm;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzejz;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final zzays()Lcom/google/android/gms/internal/ads/zzefj;
    .registers 2

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeah;->zzhui:Lcom/google/android/gms/internal/ads/zzefj;

    return-object v0
.end method
