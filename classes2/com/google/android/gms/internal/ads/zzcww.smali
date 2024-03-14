.class public final Lcom/google/android/gms/internal/ads/zzcww;
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
        "Lcom/google/android/gms/internal/ads/zzaph;",
        "Lcom/google/android/gms/internal/ads/zzcuu;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzgqi:Lcom/google/android/gms/internal/ads/zzcjj;

.field private final zzvr:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcjj;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcww;->zzvr:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcww;->zzgqi:Lcom/google/android/gms/internal/ads/zzcjj;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzdog;Lcom/google/android/gms/internal/ads/zzdnv;Lcom/google/android/gms/internal/ads/zzctc;)V
    .registers 14
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
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzdog;->zzhev:Lcom/google/android/gms/internal/ads/zzdof;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdof;->zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

    .line 7
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdok;->zzhfh:Lcom/google/android/gms/internal/ads/zzdob;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzdob;->zzheo:I

    sget v1, Lcom/google/android/gms/internal/ads/zzdoc;->zzher:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3d

    .line 8
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzctc;->zzdlf:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/google/android/gms/internal/ads/zzaph;

    iget-object v4, p2, Lcom/google/android/gms/internal/ads/zzdnv;->zzera:Ljava/lang/String;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzdnv;->zzhdu:Lorg/json/JSONObject;

    .line 9
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdog;->zzhev:Lcom/google/android/gms/internal/ads/zzdof;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdof;->zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

    iget-object v6, p1, Lcom/google/android/gms/internal/ads/zzdok;->zzhfa:Lcom/google/android/gms/internal/ads/zzvg;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcww;->zzvr:Landroid/content/Context;

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v7

    new-instance v8, Lcom/google/android/gms/internal/ads/zzcwy;

    invoke-direct {v8, p0, p3, v2}, Lcom/google/android/gms/internal/ads/zzcwy;-><init>(Lcom/google/android/gms/internal/ads/zzcww;Lcom/google/android/gms/internal/ads/zzctc;Lcom/google/android/gms/internal/ads/zzcwv;)V

    iget-object p1, p3, Lcom/google/android/gms/internal/ads/zzctc;->zzgns:Lcom/google/android/gms/internal/ads/zzbvp;

    move-object v9, p1

    check-cast v9, Lcom/google/android/gms/internal/ads/zzanh;

    .line 11
    invoke-interface/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzaph;->zzb(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvg;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzapg;Lcom/google/android/gms/internal/ads/zzanh;)V

    return-void

    .line 12
    :cond_3d
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzctc;->zzdlf:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/google/android/gms/internal/ads/zzaph;

    iget-object v4, p2, Lcom/google/android/gms/internal/ads/zzdnv;->zzera:Ljava/lang/String;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzdnv;->zzhdu:Lorg/json/JSONObject;

    .line 13
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdog;->zzhev:Lcom/google/android/gms/internal/ads/zzdof;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdof;->zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

    iget-object v6, p1, Lcom/google/android/gms/internal/ads/zzdok;->zzhfa:Lcom/google/android/gms/internal/ads/zzvg;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcww;->zzvr:Landroid/content/Context;

    .line 14
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v7

    new-instance v8, Lcom/google/android/gms/internal/ads/zzcwy;

    invoke-direct {v8, p0, p3, v2}, Lcom/google/android/gms/internal/ads/zzcwy;-><init>(Lcom/google/android/gms/internal/ads/zzcww;Lcom/google/android/gms/internal/ads/zzctc;Lcom/google/android/gms/internal/ads/zzcwv;)V

    iget-object p1, p3, Lcom/google/android/gms/internal/ads/zzctc;->zzgns:Lcom/google/android/gms/internal/ads/zzbvp;

    move-object v9, p1

    check-cast v9, Lcom/google/android/gms/internal/ads/zzanh;

    .line 15
    invoke-interface/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzaph;->zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvg;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzapg;Lcom/google/android/gms/internal/ads/zzanh;)V
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_63} :catch_64

    return-void

    :catch_64
    move-exception p1

    const-string p2, "Remote exception loading a rewarded RTB ad"

    .line 18
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzayp;->zza(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/ads/zzdog;Lcom/google/android/gms/internal/ads/zzdnv;Lcom/google/android/gms/internal/ads/zzctc;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdos;,
            Lcom/google/android/gms/internal/ads/zzcwn;
        }
    .end annotation

    .line 21
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcve;

    iget-object v1, p3, Lcom/google/android/gms/internal/ads/zzctc;->zzdlf:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzaph;

    const/4 v2, 0x1

    invoke-direct {v0, p2, v1, v2}, Lcom/google/android/gms/internal/ads/zzcve;-><init>(Lcom/google/android/gms/internal/ads/zzdnv;Lcom/google/android/gms/internal/ads/zzaph;Z)V

    .line 22
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcww;->zzgqi:Lcom/google/android/gms/internal/ads/zzcjj;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbre;

    iget-object v3, p3, Lcom/google/android/gms/internal/ads/zzctc;->zzcib:Ljava/lang/String;

    invoke-direct {v2, p1, p2, v3}, Lcom/google/android/gms/internal/ads/zzbre;-><init>(Lcom/google/android/gms/internal/ads/zzdog;Lcom/google/android/gms/internal/ads/zzdnv;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzcjh;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzcjh;-><init>(Lcom/google/android/gms/internal/ads/zzccm;)V

    .line 23
    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzcjj;->zza(Lcom/google/android/gms/internal/ads/zzbre;Lcom/google/android/gms/internal/ads/zzcjh;)Lcom/google/android/gms/internal/ads/zzcji;

    move-result-object p1

    .line 24
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbqq;->zzafc()Lcom/google/android/gms/internal/ads/zzbuu;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzcve;->zza(Lcom/google/android/gms/internal/ads/zzbuu;)V

    .line 25
    iget-object p2, p3, Lcom/google/android/gms/internal/ads/zzctc;->zzgns:Lcom/google/android/gms/internal/ads/zzbvp;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzcuu;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcji;->zzagr()Lcom/google/android/gms/internal/ads/zzcxt;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzcuu;->zzb(Lcom/google/android/gms/internal/ads/zzanh;)V

    .line 26
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcji;->zzago()Lcom/google/android/gms/internal/ads/zzcjg;

    move-result-object p1

    return-object p1
.end method
