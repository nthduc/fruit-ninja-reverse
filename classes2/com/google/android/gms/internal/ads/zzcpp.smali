.class public final Lcom/google/android/gms/internal/ads/zzcpp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private final zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

.field private final zzgka:Lcom/google/android/gms/internal/ads/zzbbx;

.field private final zzvr:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbx;Lcom/google/android/gms/internal/ads/zzdok;Ljava/util/concurrent/Executor;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcpp;->zzvr:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcpp;->zzgka:Lcom/google/android/gms/internal/ads/zzbbx;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcpp;->zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcpp;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final zzapy()Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "Lcom/google/android/gms/internal/ads/zzdog;",
            ">;"
        }
    .end annotation

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzle()Lcom/google/android/gms/internal/ads/zzalw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcpp;->zzvr:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcpp;->zzgka:Lcom/google/android/gms/internal/ads/zzbbx;

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzalw;->zzb(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbx;)Lcom/google/android/gms/internal/ads/zzamb;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzama;->zzdio:Lcom/google/android/gms/internal/ads/zzalx;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzama;->zzdio:Lcom/google/android/gms/internal/ads/zzalx;

    const-string v3, "google.afma.response.normalize"

    .line 9
    invoke-virtual {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzamb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaly;Lcom/google/android/gms/internal/ads/zzalv;)Lcom/google/android/gms/internal/ads/zzalt;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcpp;->zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzdok;->zzhfa:Lcom/google/android/gms/internal/ads/zzvg;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzvg;->zzcho:Lcom/google/android/gms/internal/ads/zzuy;

    const-string v2, ""

    .line 12
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdyq;->zzaf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcps;

    invoke-direct {v3, p0, v1}, Lcom/google/android/gms/internal/ads/zzcps;-><init>(Lcom/google/android/gms/internal/ads/zzcpp;Lcom/google/android/gms/internal/ads/zzuy;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcpp;->executor:Ljava/util/concurrent/Executor;

    .line 13
    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzdyq;->zzb(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdya;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v1

    .line 14
    new-instance v2, Lcom/google/android/gms/internal/ads/zzcpr;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzcpr;-><init>(Lcom/google/android/gms/internal/ads/zzalt;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpp;->executor:Ljava/util/concurrent/Executor;

    .line 15
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzdyq;->zzb(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdya;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    .line 16
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcpu;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcpu;-><init>(Lcom/google/android/gms/internal/ads/zzcpp;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcpp;->executor:Ljava/util/concurrent/Executor;

    .line 17
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdyq;->zzb(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdya;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzo(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdog;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdof;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcpp;->zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzdof;-><init>(Lcom/google/android/gms/internal/ads/zzdok;)V

    .line 20
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 21
    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdoe;->zza(Ljava/io/Reader;)Lcom/google/android/gms/internal/ads/zzdoe;

    move-result-object p1

    .line 22
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdog;-><init>(Lcom/google/android/gms/internal/ads/zzdof;Lcom/google/android/gms/internal/ads/zzdoe;)V

    .line 23
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdyq;->zzaf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1
.end method
