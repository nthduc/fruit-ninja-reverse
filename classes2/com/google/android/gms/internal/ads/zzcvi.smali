.class public final Lcom/google/android/gms/internal/ads/zzcvi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcti;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcti<",
        "Lcom/google/android/gms/internal/ads/zzcbe;",
        "Lcom/google/android/gms/internal/ads/zzaph;",
        "Lcom/google/android/gms/internal/ads/zzcuu;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzgos:Lcom/google/android/gms/internal/ads/zzcce;

.field private final zzvr:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcce;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcvi;->zzvr:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcvi;->zzgos:Lcom/google/android/gms/internal/ads/zzcce;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzdog;Lcom/google/android/gms/internal/ads/zzdnv;Lcom/google/android/gms/internal/ads/zzctc;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdog;",
            "Lcom/google/android/gms/internal/ads/zzdnv;",
            "Lcom/google/android/gms/internal/ads/zzctc<",
            "Lcom/google/android/gms/internal/ads/zzaph;",
            "Lcom/google/android/gms/internal/ads/zzcuu;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdos;
        }
    .end annotation

    .line 5
    :try_start_0
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzctc;->zzdlf:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaph;

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzdnv;->zzdmk:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzaph;->zzdr(Ljava/lang/String;)V

    .line 6
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzctc;->zzdlf:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzaph;

    iget-object v2, p2, Lcom/google/android/gms/internal/ads/zzdnv;->zzera:Ljava/lang/String;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzdnv;->zzhdu:Lorg/json/JSONObject;

    .line 7
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdog;->zzhev:Lcom/google/android/gms/internal/ads/zzdof;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdof;->zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

    iget-object v4, p1, Lcom/google/android/gms/internal/ads/zzdok;->zzhfa:Lcom/google/android/gms/internal/ads/zzvg;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcvi;->zzvr:Landroid/content/Context;

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v5

    new-instance v6, Lcom/google/android/gms/internal/ads/zzcvk;

    const/4 p1, 0x0

    invoke-direct {v6, p0, p3, p1}, Lcom/google/android/gms/internal/ads/zzcvk;-><init>(Lcom/google/android/gms/internal/ads/zzcvi;Lcom/google/android/gms/internal/ads/zzctc;Lcom/google/android/gms/internal/ads/zzcvh;)V

    iget-object p1, p3, Lcom/google/android/gms/internal/ads/zzctc;->zzgns:Lcom/google/android/gms/internal/ads/zzbvp;

    move-object v7, p1

    check-cast v7, Lcom/google/android/gms/internal/ads/zzanh;

    .line 9
    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzaph;->zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvg;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzapa;Lcom/google/android/gms/internal/ads/zzanh;)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_30} :catch_31

    return-void

    :catch_31
    move-exception p1

    .line 12
    new-instance p2, Lcom/google/android/gms/internal/ads/zzdos;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzdos;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/ads/zzdog;Lcom/google/android/gms/internal/ads/zzdnv;Lcom/google/android/gms/internal/ads/zzctc;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdos;,
            Lcom/google/android/gms/internal/ads/zzcwn;
        }
    .end annotation

    .line 14
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcve;

    iget-object v1, p3, Lcom/google/android/gms/internal/ads/zzctc;->zzdlf:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzaph;

    const/4 v2, 0x0

    invoke-direct {v0, p2, v1, v2}, Lcom/google/android/gms/internal/ads/zzcve;-><init>(Lcom/google/android/gms/internal/ads/zzdnv;Lcom/google/android/gms/internal/ads/zzaph;Z)V

    .line 15
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcvi;->zzgos:Lcom/google/android/gms/internal/ads/zzcce;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbre;

    iget-object v3, p3, Lcom/google/android/gms/internal/ads/zzctc;->zzcib:Ljava/lang/String;

    invoke-direct {v2, p1, p2, v3}, Lcom/google/android/gms/internal/ads/zzbre;-><init>(Lcom/google/android/gms/internal/ads/zzdog;Lcom/google/android/gms/internal/ads/zzdnv;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzcbf;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzcbf;-><init>(Lcom/google/android/gms/internal/ads/zzccm;)V

    .line 16
    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzcce;->zza(Lcom/google/android/gms/internal/ads/zzbre;Lcom/google/android/gms/internal/ads/zzcbf;)Lcom/google/android/gms/internal/ads/zzcbg;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbqq;->zzafc()Lcom/google/android/gms/internal/ads/zzbuu;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzcve;->zza(Lcom/google/android/gms/internal/ads/zzbuu;)V

    .line 18
    iget-object p2, p3, Lcom/google/android/gms/internal/ads/zzctc;->zzgns:Lcom/google/android/gms/internal/ads/zzbvp;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzcuu;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbqq;->zzaff()Lcom/google/android/gms/internal/ads/zzcxw;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzcuu;->zzb(Lcom/google/android/gms/internal/ads/zzanh;)V

    .line 19
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcbg;->zzagj()Lcom/google/android/gms/internal/ads/zzcbe;

    move-result-object p1

    return-object p1
.end method
