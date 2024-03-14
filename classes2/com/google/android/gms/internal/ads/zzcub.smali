.class public final Lcom/google/android/gms/internal/ads/zzcub;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcti;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcti<",
        "Lcom/google/android/gms/internal/ads/zzboq;",
        "Lcom/google/android/gms/internal/ads/zzdpa;",
        "Lcom/google/android/gms/internal/ads/zzcuu;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzbot:Lcom/google/android/gms/internal/ads/zzbbx;

.field private final zzfoc:Ljava/util/concurrent/Executor;

.field private final zzgoj:Lcom/google/android/gms/internal/ads/zzbpm;

.field private final zzvr:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbx;Lcom/google/android/gms/internal/ads/zzbpm;Ljava/util/concurrent/Executor;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcub;->zzvr:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcub;->zzbot:Lcom/google/android/gms/internal/ads/zzbbx;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcub;->zzgoj:Lcom/google/android/gms/internal/ads/zzbpm;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcub;->zzfoc:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzdog;Lcom/google/android/gms/internal/ads/zzdnv;Lcom/google/android/gms/internal/ads/zzctc;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdog;",
            "Lcom/google/android/gms/internal/ads/zzdnv;",
            "Lcom/google/android/gms/internal/ads/zzctc<",
            "Lcom/google/android/gms/internal/ads/zzdpa;",
            "Lcom/google/android/gms/internal/ads/zzcuu;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdos;
        }
    .end annotation

    .line 7
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzdog;->zzhev:Lcom/google/android/gms/internal/ads/zzdof;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdof;->zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdok;->zzbpf:Lcom/google/android/gms/internal/ads/zzvn;

    .line 8
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzvn;->zzcia:Z

    if-eqz v1, :cond_1a

    .line 9
    new-instance v1, Lcom/google/android/gms/internal/ads/zzvn;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcub;->zzvr:Landroid/content/Context;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzvn;->width:I

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzvn;->height:I

    .line 10
    invoke-static {v3, v0}, Lcom/google/android/gms/ads/zzb;->zza(II)Lcom/google/android/gms/ads/AdSize;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzvn;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)V

    goto :goto_22

    .line 11
    :cond_1a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcub;->zzvr:Landroid/content/Context;

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzdnv;->zzhdt:Ljava/util/List;

    .line 12
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdoq;->zzb(Landroid/content/Context;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzvn;

    move-result-object v1

    :goto_22
    move-object v4, v1

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcub;->zzbot:Lcom/google/android/gms/internal/ads/zzbbx;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzbbx;->zzeem:I

    const v1, 0x3e8fa0

    if-ge v0, v1, :cond_48

    .line 14
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzctc;->zzdlf:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/internal/ads/zzdpa;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcub;->zzvr:Landroid/content/Context;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdog;->zzhev:Lcom/google/android/gms/internal/ads/zzdof;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdof;->zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

    iget-object v5, p1, Lcom/google/android/gms/internal/ads/zzdok;->zzhfa:Lcom/google/android/gms/internal/ads/zzvg;

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzdnv;->zzhdu:Lorg/json/JSONObject;

    .line 15
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object p1, p3, Lcom/google/android/gms/internal/ads/zzctc;->zzgns:Lcom/google/android/gms/internal/ads/zzbvp;

    move-object v7, p1

    check-cast v7, Lcom/google/android/gms/internal/ads/zzanh;

    .line 16
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzdpa;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzvn;Lcom/google/android/gms/internal/ads/zzvg;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzanh;)V

    return-void

    .line 17
    :cond_48
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzctc;->zzdlf:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/internal/ads/zzdpa;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcub;->zzvr:Landroid/content/Context;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdog;->zzhev:Lcom/google/android/gms/internal/ads/zzdof;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdof;->zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

    iget-object v5, p1, Lcom/google/android/gms/internal/ads/zzdok;->zzhfa:Lcom/google/android/gms/internal/ads/zzvg;

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzdnv;->zzhdu:Lorg/json/JSONObject;

    .line 18
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzdnv;->zzhdr:Lcom/google/android/gms/internal/ads/zzdny;

    .line 19
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbao;->zza(Lcom/google/android/gms/internal/ads/zzbat;)Ljava/lang/String;

    move-result-object v7

    iget-object p1, p3, Lcom/google/android/gms/internal/ads/zzctc;->zzgns:Lcom/google/android/gms/internal/ads/zzbvp;

    move-object v8, p1

    check-cast v8, Lcom/google/android/gms/internal/ads/zzanh;

    .line 20
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzdpa;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzvn;Lcom/google/android/gms/internal/ads/zzvg;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzanh;)V

    return-void
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/ads/zzdog;Lcom/google/android/gms/internal/ads/zzdnv;Lcom/google/android/gms/internal/ads/zzctc;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdos;,
            Lcom/google/android/gms/internal/ads/zzcwn;
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcub;->zzgoj:Lcom/google/android/gms/internal/ads/zzbpm;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbre;

    iget-object v2, p3, Lcom/google/android/gms/internal/ads/zzctc;->zzcib:Ljava/lang/String;

    invoke-direct {v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzbre;-><init>(Lcom/google/android/gms/internal/ads/zzdog;Lcom/google/android/gms/internal/ads/zzdnv;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbot;

    iget-object v2, p3, Lcom/google/android/gms/internal/ads/zzctc;->zzdlf:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzdpa;

    .line 24
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdpa;->getView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p3, Lcom/google/android/gms/internal/ads/zzctc;->zzdlf:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/ads/zzdpa;

    .line 25
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzcue;->zza(Lcom/google/android/gms/internal/ads/zzdpa;)Lcom/google/android/gms/internal/ads/zzbql;

    move-result-object v3

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzdnv;->zzhdt:Ljava/util/List;

    const/4 v4, 0x0

    .line 26
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzdnu;

    const/4 v4, 0x0

    invoke-direct {p1, v2, v4, v3, p2}, Lcom/google/android/gms/internal/ads/zzbot;-><init>(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzbgj;Lcom/google/android/gms/internal/ads/zzbql;Lcom/google/android/gms/internal/ads/zzdnu;)V

    .line 27
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzbpm;->zza(Lcom/google/android/gms/internal/ads/zzbre;Lcom/google/android/gms/internal/ads/zzbot;)Lcom/google/android/gms/internal/ads/zzbop;

    move-result-object p1

    .line 28
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbop;->zzagb()Lcom/google/android/gms/internal/ads/zzcae;

    move-result-object p2

    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzctc;->zzdlf:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdpa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdpa;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzcae;->zzv(Landroid/view/View;)V

    .line 29
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbqq;->zzaez()Lcom/google/android/gms/internal/ads/zzbvb;

    move-result-object p2

    .line 30
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbmf;

    iget-object v1, p3, Lcom/google/android/gms/internal/ads/zzctc;->zzdlf:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdpa;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzbmf;-><init>(Lcom/google/android/gms/internal/ads/zzdpa;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcub;->zzfoc:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzbyr;->zza(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 31
    iget-object p2, p3, Lcom/google/android/gms/internal/ads/zzctc;->zzgns:Lcom/google/android/gms/internal/ads/zzbvp;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzcuu;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbqq;->zzafe()Lcom/google/android/gms/internal/ads/zzcyc;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzcuu;->zzb(Lcom/google/android/gms/internal/ads/zzanh;)V

    .line 32
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbop;->zzaga()Lcom/google/android/gms/internal/ads/zzboq;

    move-result-object p1

    return-object p1
.end method
