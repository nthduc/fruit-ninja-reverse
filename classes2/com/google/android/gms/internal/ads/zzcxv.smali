.class public final Lcom/google/android/gms/internal/ads/zzcxv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcta;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdT:",
        "Ljava/lang/Object;",
        "AdapterT:",
        "Ljava/lang/Object;",
        "ListenerT::Lcom/google/android/gms/internal/ads/zzbvp;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcta<",
        "TAdT;>;"
    }
.end annotation


# instance fields
.field private final zzfmb:Lcom/google/android/gms/internal/ads/zzctb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzctb<",
            "TAdapterT;T",
            "ListenerT;",
            ">;"
        }
    .end annotation
.end field

.field private final zzfsl:Lcom/google/android/gms/internal/ads/zzdsi;

.field private final zzgrb:Lcom/google/android/gms/internal/ads/zzcti;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzcti<",
            "TAdT;TAdapterT;T",
            "ListenerT;",
            ">;"
        }
    .end annotation
.end field

.field private final zzgrc:Lcom/google/android/gms/internal/ads/zzdzb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdsi;Lcom/google/android/gms/internal/ads/zzdzb;Lcom/google/android/gms/internal/ads/zzctb;Lcom/google/android/gms/internal/ads/zzcti;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdsi;",
            "Lcom/google/android/gms/internal/ads/zzdzb;",
            "Lcom/google/android/gms/internal/ads/zzctb<",
            "TAdapterT;T",
            "ListenerT;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzcti<",
            "TAdT;TAdapterT;T",
            "ListenerT;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcxv;->zzfsl:Lcom/google/android/gms/internal/ads/zzdsi;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcxv;->zzgrc:Lcom/google/android/gms/internal/ads/zzdzb;

    .line 4
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcxv;->zzgrb:Lcom/google/android/gms/internal/ads/zzcti;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcxv;->zzfmb:Lcom/google/android/gms/internal/ads/zzctb;

    return-void
.end method

.method static zza(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 38
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Error from: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", code: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method final synthetic zza(Lcom/google/android/gms/internal/ads/zzdog;Lcom/google/android/gms/internal/ads/zzdnv;Lcom/google/android/gms/internal/ads/zzctc;Ljava/lang/Void;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 39
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzcxv;->zzgrb:Lcom/google/android/gms/internal/ads/zzcti;

    invoke-interface {p4, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcti;->zzb(Lcom/google/android/gms/internal/ads/zzdog;Lcom/google/android/gms/internal/ads/zzdnv;Lcom/google/android/gms/internal/ads/zzctc;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzdog;Lcom/google/android/gms/internal/ads/zzdnv;)Z
    .registers 3

    .line 7
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzdnv;->zzhds:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_a
    const/4 p1, 0x0

    return p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzdog;Lcom/google/android/gms/internal/ads/zzdnv;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdog;",
            "Lcom/google/android/gms/internal/ads/zzdnv;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "TAdT;>;"
        }
    .end annotation

    .line 9
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzdnv;->zzhds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 10
    :try_start_12
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcxv;->zzfmb:Lcom/google/android/gms/internal/ads/zzctb;

    iget-object v3, p2, Lcom/google/android/gms/internal/ads/zzdnv;->zzhdu:Lorg/json/JSONObject;

    invoke-interface {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzctb;->zzf(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzctc;

    move-result-object v0
    :try_end_1a
    .catch Lcom/google/android/gms/internal/ads/zzdos; {:try_start_12 .. :try_end_1a} :catch_6

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    if-nez v0, :cond_2a

    .line 15
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcvz;

    const-string p2, "unable to instantiate mediation adapter class"

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzcvz;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdyq;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1

    .line 17
    :cond_2a
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbcg;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzbcg;-><init>()V

    .line 19
    new-instance v2, Lcom/google/android/gms/internal/ads/zzcya;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzcya;-><init>(Lcom/google/android/gms/internal/ads/zzcxv;Lcom/google/android/gms/internal/ads/zzctc;Lcom/google/android/gms/internal/ads/zzbcg;)V

    .line 20
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzctc;->zzgns:Lcom/google/android/gms/internal/ads/zzbvp;

    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/zzbvp;->zza(Lcom/google/android/gms/internal/ads/zzbvo;)V

    .line 22
    iget-boolean v2, p2, Lcom/google/android/gms/internal/ads/zzdnv;->zzduj:Z

    if-eqz v2, :cond_65

    .line 23
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzdog;->zzhev:Lcom/google/android/gms/internal/ads/zzdof;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzdof;->zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzdok;->zzhfa:Lcom/google/android/gms/internal/ads/zzvg;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzvg;->zzchi:Landroid/os/Bundle;

    .line 24
    const-class v3, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_5f

    .line 26
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 27
    const-class v4, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_5f
    const/4 v2, 0x1

    const-string v4, "render_test_ad_label"

    .line 28
    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 29
    :cond_65
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcxv;->zzfsl:Lcom/google/android/gms/internal/ads/zzdsi;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzdsf;->zzhkz:Lcom/google/android/gms/internal/ads/zzdsf;

    .line 30
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzdru;->zzu(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdry;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcxy;

    invoke-direct {v3, p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzcxy;-><init>(Lcom/google/android/gms/internal/ads/zzcxv;Lcom/google/android/gms/internal/ads/zzdog;Lcom/google/android/gms/internal/ads/zzdnv;Lcom/google/android/gms/internal/ads/zzctc;)V

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcxv;->zzgrc:Lcom/google/android/gms/internal/ads/zzdzb;

    .line 31
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzdry;->zza(Lcom/google/android/gms/internal/ads/zzdrs;Lcom/google/android/gms/internal/ads/zzdzb;)Lcom/google/android/gms/internal/ads/zzdsa;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/ads/zzdsf;->zzhla:Lcom/google/android/gms/internal/ads/zzdsf;

    .line 32
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzdsa;->zzw(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdsa;

    move-result-object v2

    .line 33
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzdsa;->zze(Lcom/google/android/gms/internal/ads/zzdzc;)Lcom/google/android/gms/internal/ads/zzdsa;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdsf;->zzhlb:Lcom/google/android/gms/internal/ads/zzdsf;

    .line 34
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzdsa;->zzw(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdsa;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcxx;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzcxx;-><init>(Lcom/google/android/gms/internal/ads/zzcxv;Lcom/google/android/gms/internal/ads/zzdog;Lcom/google/android/gms/internal/ads/zzdnv;Lcom/google/android/gms/internal/ads/zzctc;)V

    .line 35
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzdsa;->zzb(Lcom/google/android/gms/internal/ads/zzdrp;)Lcom/google/android/gms/internal/ads/zzdsa;

    move-result-object p1

    .line 36
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdsa;->zzavs()Lcom/google/android/gms/internal/ads/zzdrr;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzd(Lcom/google/android/gms/internal/ads/zzdog;Lcom/google/android/gms/internal/ads/zzdnv;Lcom/google/android/gms/internal/ads/zzctc;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxv;->zzgrb:Lcom/google/android/gms/internal/ads/zzcti;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcti;->zza(Lcom/google/android/gms/internal/ads/zzdog;Lcom/google/android/gms/internal/ads/zzdnv;Lcom/google/android/gms/internal/ads/zzctc;)V

    return-void
.end method
