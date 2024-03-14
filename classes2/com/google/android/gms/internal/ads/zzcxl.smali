.class public final Lcom/google/android/gms/internal/ads/zzcxl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcti;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcti<",
        "Lcom/google/android/gms/internal/ads/zzcjg;",
        "Lcom/google/android/gms/internal/ads/zzdpa;",
        "Lcom/google/android/gms/internal/ads/zzcut;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfoc:Ljava/util/concurrent/Executor;

.field private final zzgqi:Lcom/google/android/gms/internal/ads/zzcjj;

.field private final zzvr:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzcjj;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcxl;->zzvr:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcxl;->zzfoc:Ljava/util/concurrent/Executor;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcxl;->zzgqi:Lcom/google/android/gms/internal/ads/zzcjj;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzcxl;)Ljava/util/concurrent/Executor;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcxl;->zzfoc:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzcxl;Lcom/google/android/gms/internal/ads/zzdog;Lcom/google/android/gms/internal/ads/zzdnv;Lcom/google/android/gms/internal/ads/zzctc;)V
    .registers 4

    .line 36
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcxl;->zzc(Lcom/google/android/gms/internal/ads/zzdog;Lcom/google/android/gms/internal/ads/zzdnv;Lcom/google/android/gms/internal/ads/zzctc;)V

    return-void
.end method

.method private static zzc(Lcom/google/android/gms/internal/ads/zzdog;Lcom/google/android/gms/internal/ads/zzdnv;Lcom/google/android/gms/internal/ads/zzctc;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdog;",
            "Lcom/google/android/gms/internal/ads/zzdnv;",
            "Lcom/google/android/gms/internal/ads/zzctc<",
            "Lcom/google/android/gms/internal/ads/zzdpa;",
            "Lcom/google/android/gms/internal/ads/zzcut;",
            ">;)V"
        }
    .end annotation

    .line 15
    :try_start_0
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzctc;->zzdlf:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdpa;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdog;->zzhev:Lcom/google/android/gms/internal/ads/zzdof;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdof;->zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdok;->zzhfa:Lcom/google/android/gms/internal/ads/zzvg;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdnv;->zzhdu:Lorg/json/JSONObject;

    .line 16
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 17
    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzdpa;->zza(Lcom/google/android/gms/internal/ads/zzvg;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p0

    const-string p1, "Fail to load ad from adapter "

    .line 20
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzctc;->zzcib:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2e

    :cond_28
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_2e
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzayp;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzdog;Lcom/google/android/gms/internal/ads/zzdnv;Lcom/google/android/gms/internal/ads/zzctc;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdog;",
            "Lcom/google/android/gms/internal/ads/zzdnv;",
            "Lcom/google/android/gms/internal/ads/zzctc<",
            "Lcom/google/android/gms/internal/ads/zzdpa;",
            "Lcom/google/android/gms/internal/ads/zzcut;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdos;
        }
    .end annotation

    .line 6
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzctc;->zzdlf:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdpa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdpa;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_33

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcxn;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcxn;-><init>(Lcom/google/android/gms/internal/ads/zzcxl;Lcom/google/android/gms/internal/ads/zzdog;Lcom/google/android/gms/internal/ads/zzdnv;Lcom/google/android/gms/internal/ads/zzctc;)V

    .line 8
    iget-object v1, p3, Lcom/google/android/gms/internal/ads/zzctc;->zzgns:Lcom/google/android/gms/internal/ads/zzbvp;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcut;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzcut;->zza(Lcom/google/android/gms/internal/ads/zzcas;)V

    .line 9
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzctc;->zzdlf:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdpa;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcxl;->zzvr:Landroid/content/Context;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdog;->zzhev:Lcom/google/android/gms/internal/ads/zzdof;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdof;->zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzdok;->zzhfa:Lcom/google/android/gms/internal/ads/zzvg;

    const/4 v4, 0x0

    iget-object p1, p3, Lcom/google/android/gms/internal/ads/zzctc;->zzgns:Lcom/google/android/gms/internal/ads/zzbvp;

    move-object v5, p1

    check-cast v5, Lcom/google/android/gms/internal/ads/zzaur;

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzdnv;->zzhdu:Lorg/json/JSONObject;

    .line 10
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    .line 11
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzdpa;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzvg;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaur;Ljava/lang/String;)V

    return-void

    .line 13
    :cond_33
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcxl;->zzc(Lcom/google/android/gms/internal/ads/zzdog;Lcom/google/android/gms/internal/ads/zzdnv;Lcom/google/android/gms/internal/ads/zzctc;)V

    return-void
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/ads/zzdog;Lcom/google/android/gms/internal/ads/zzdnv;Lcom/google/android/gms/internal/ads/zzctc;)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdos;,
            Lcom/google/android/gms/internal/ads/zzcwn;
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxl;->zzgqi:Lcom/google/android/gms/internal/ads/zzcjj;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbre;

    iget-object v2, p3, Lcom/google/android/gms/internal/ads/zzctc;->zzcib:Ljava/lang/String;

    invoke-direct {v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzbre;-><init>(Lcom/google/android/gms/internal/ads/zzdog;Lcom/google/android/gms/internal/ads/zzdnv;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzcjh;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzcxo;

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/ads/zzcxo;-><init>(Lcom/google/android/gms/internal/ads/zzctc;)V

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzcjh;-><init>(Lcom/google/android/gms/internal/ads/zzccm;)V

    .line 24
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzcjj;->zza(Lcom/google/android/gms/internal/ads/zzbre;Lcom/google/android/gms/internal/ads/zzcjh;)Lcom/google/android/gms/internal/ads/zzcji;

    move-result-object p1

    .line 25
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbqq;->zzaez()Lcom/google/android/gms/internal/ads/zzbvb;

    move-result-object p2

    .line 26
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbmf;

    iget-object v1, p3, Lcom/google/android/gms/internal/ads/zzctc;->zzdlf:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdpa;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzbmf;-><init>(Lcom/google/android/gms/internal/ads/zzdpa;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcxl;->zzfoc:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzbyr;->zza(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 27
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbqq;->zzafa()Lcom/google/android/gms/internal/ads/zzbvh;

    move-result-object v6

    .line 28
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbqq;->zzafb()Lcom/google/android/gms/internal/ads/zzbuc;

    move-result-object v5

    .line 29
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcji;->zzagk()Lcom/google/android/gms/internal/ads/zzbwa;

    move-result-object v4

    .line 31
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcji;->zzagp()Lcom/google/android/gms/internal/ads/zzcal;

    move-result-object v7

    .line 32
    iget-object p2, p3, Lcom/google/android/gms/internal/ads/zzctc;->zzgns:Lcom/google/android/gms/internal/ads/zzbvp;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzcut;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzcxp;

    move-object v2, p3

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzcxp;-><init>(Lcom/google/android/gms/internal/ads/zzcxl;Lcom/google/android/gms/internal/ads/zzbwa;Lcom/google/android/gms/internal/ads/zzbuc;Lcom/google/android/gms/internal/ads/zzbvh;Lcom/google/android/gms/internal/ads/zzcal;)V

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzcut;->zza(Lcom/google/android/gms/internal/ads/zzaur;)V

    .line 33
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcji;->zzago()Lcom/google/android/gms/internal/ads/zzcjg;

    move-result-object p1

    return-object p1
.end method
