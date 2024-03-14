.class public final Lcom/google/android/gms/internal/ads/zzcvv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcti;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcti<",
        "Lcom/google/android/gms/internal/ads/zzcdx;",
        "Lcom/google/android/gms/internal/ads/zzaph;",
        "Lcom/google/android/gms/internal/ads/zzcuu;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzgpj:Lcom/google/android/gms/internal/ads/zzcda;

.field private zzgpr:Lcom/google/android/gms/internal/ads/zzanu;

.field private final zzvr:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcda;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcvv;->zzvr:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcvv;->zzgpj:Lcom/google/android/gms/internal/ads/zzcda;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzcvv;Lcom/google/android/gms/internal/ads/zzanu;)Lcom/google/android/gms/internal/ads/zzanu;
    .registers 2

    .line 28
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcvv;->zzgpr:Lcom/google/android/gms/internal/ads/zzanu;

    return-object p1
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

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcvv;->zzvr:Landroid/content/Context;

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v5

    new-instance v6, Lcom/google/android/gms/internal/ads/zzcvx;

    const/4 p1, 0x0

    invoke-direct {v6, p0, p3, p1}, Lcom/google/android/gms/internal/ads/zzcvx;-><init>(Lcom/google/android/gms/internal/ads/zzcvv;Lcom/google/android/gms/internal/ads/zzctc;Lcom/google/android/gms/internal/ads/zzcvy;)V

    iget-object p1, p3, Lcom/google/android/gms/internal/ads/zzctc;->zzgns:Lcom/google/android/gms/internal/ads/zzbvp;

    move-object v7, p1

    check-cast v7, Lcom/google/android/gms/internal/ads/zzanh;

    .line 9
    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzaph;->zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvg;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzapb;Lcom/google/android/gms/internal/ads/zzanh;)V
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

    .line 15
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzdog;->zzhev:Lcom/google/android/gms/internal/ads/zzdof;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdof;->zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdok;->zzhfc:Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvv;->zzgpr:Lcom/google/android/gms/internal/ads/zzanu;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcei;->zzb(Lcom/google/android/gms/internal/ads/zzanu;)Lcom/google/android/gms/internal/ads/zzcei;

    move-result-object v0

    .line 19
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzdog;->zzhev:Lcom/google/android/gms/internal/ads/zzdof;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzdof;->zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzdok;->zzhfc:Ljava/util/ArrayList;

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcei;->zzama()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 21
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 23
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcvv;->zzgpj:Lcom/google/android/gms/internal/ads/zzcda;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbre;

    iget-object v3, p3, Lcom/google/android/gms/internal/ads/zzctc;->zzcib:Ljava/lang/String;

    invoke-direct {v2, p1, p2, v3}, Lcom/google/android/gms/internal/ads/zzbre;-><init>(Lcom/google/android/gms/internal/ads/zzdog;Lcom/google/android/gms/internal/ads/zzdnv;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzceu;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzceu;-><init>(Lcom/google/android/gms/internal/ads/zzcei;)V

    new-instance p2, Lcom/google/android/gms/internal/ads/zzcgf;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvv;->zzgpr:Lcom/google/android/gms/internal/ads/zzanu;

    const/4 v3, 0x0

    invoke-direct {p2, v3, v3, v0}, Lcom/google/android/gms/internal/ads/zzcgf;-><init>(Lcom/google/android/gms/internal/ads/zzanp;Lcom/google/android/gms/internal/ads/zzano;Lcom/google/android/gms/internal/ads/zzanu;)V

    .line 24
    invoke-virtual {v1, v2, p1, p2}, Lcom/google/android/gms/internal/ads/zzcda;->zza(Lcom/google/android/gms/internal/ads/zzbre;Lcom/google/android/gms/internal/ads/zzceu;Lcom/google/android/gms/internal/ads/zzcgf;)Lcom/google/android/gms/internal/ads/zzcej;

    move-result-object p1

    .line 25
    iget-object p2, p3, Lcom/google/android/gms/internal/ads/zzctc;->zzgns:Lcom/google/android/gms/internal/ads/zzbvp;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzcuu;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbqq;->zzaff()Lcom/google/android/gms/internal/ads/zzcxw;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzcuu;->zzb(Lcom/google/android/gms/internal/ads/zzanh;)V

    .line 26
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzceh;->zzafg()Lcom/google/android/gms/internal/ads/zzcdx;

    move-result-object p1

    return-object p1

    .line 22
    :cond_55
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcwn;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzdpg;->zzhfw:Lcom/google/android/gms/internal/ads/zzdpg;

    const-string p3, "No corresponding native ad listener"

    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcwn;-><init>(Lcom/google/android/gms/internal/ads/zzdpg;Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_5f
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcwn;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzdpg;->zzhfx:Lcom/google/android/gms/internal/ads/zzdpg;

    const-string p3, "Unified must be used for RTB."

    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcwn;-><init>(Lcom/google/android/gms/internal/ads/zzdpg;Ljava/lang/String;)V

    throw p1
.end method
