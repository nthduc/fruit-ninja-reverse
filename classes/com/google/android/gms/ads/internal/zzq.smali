.class final Lcom/google/android/gms/ads/internal/zzq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final zzbqu:Ljava/lang/String;

.field private final zzbqv:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzbqw:Ljava/lang/String;

.field private zzbqx:Ljava/lang/String;

.field private final zzvr:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzq;->zzvr:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzq;->zzbqu:Ljava/lang/String;

    .line 4
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzq;->zzbqv:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final getQuery()Ljava/lang/String;
    .registers 2

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzbqw:Ljava/lang/String;

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzvg;Lcom/google/android/gms/internal/ads/zzbbx;)V
    .registers 8

    .line 10
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzvg;->zzchg:Lcom/google/android/gms/internal/ads/zzaag;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaag;->zzbqw:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzbqw:Ljava/lang/String;

    .line 12
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzvg;->zzchi:Landroid/os/Bundle;

    if-eqz v0, :cond_17

    .line 13
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzvg;->zzchi:Landroid/os/Bundle;

    const-class v0, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    :goto_18
    if-nez p1, :cond_1b

    return-void

    .line 16
    :cond_1b
    sget-object v0, Lcom/google/android/gms/internal/ads/zzacm;->zzdaf:Lcom/google/android/gms/internal/ads/zzaci;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaci;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2b
    :goto_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 19
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/zzq;->zzbqx:Ljava/lang/String;

    goto :goto_2b

    :cond_44
    const-string v3, "csa_"

    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 21
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzq;->zzbqv:Ljava/util/Map;

    const/4 v4, 0x4

    .line 22
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 23
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2b

    .line 25
    :cond_5b
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzq;->zzbqv:Ljava/util/Map;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzbbx;->zzbre:Ljava/lang/String;

    const-string v0, "SDKVersion"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object p1, Lcom/google/android/gms/internal/ads/zzacm;->zzdad:Lcom/google/android/gms/internal/ads/zzaci;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaci;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_ae

    .line 27
    :try_start_72
    new-instance p1, Lorg/json/JSONArray;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzacm;->zzdae:Lcom/google/android/gms/internal/ads/zzaci;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaci;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p1, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 28
    iget-object p2, p0, Lcom/google/android/gms/ads/internal/zzq;->zzvr:Landroid/content/Context;

    .line 29
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzdgo;->zza(Landroid/content/Context;Lorg/json/JSONArray;)Landroid/os/Bundle;

    move-result-object p1

    .line 30
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_8d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 31
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzq;->zzbqv:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a6
    .catch Lorg/json/JSONException; {:try_start_72 .. :try_end_a6} :catch_a8

    goto :goto_8d

    :cond_a7
    return-void

    :catch_a8
    move-exception p1

    const-string p2, "Flag gads:afs:csa_tcf_data_to_collect not a valid JSON array"

    .line 35
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_ae
    return-void
.end method

.method public final zzlq()Ljava/lang/String;
    .registers 2

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzbqx:Ljava/lang/String;

    return-object v0
.end method

.method public final zzlr()Ljava/lang/String;
    .registers 2

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzbqu:Ljava/lang/String;

    return-object v0
.end method

.method public final zzls()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzbqv:Ljava/util/Map;

    return-object v0
.end method
