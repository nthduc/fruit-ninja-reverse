.class public final Lcom/google/android/gms/internal/ads/zzctd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final zzadu:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzvr;",
            ">;"
        }
    .end annotation
.end field

.field private zzeot:Lcom/google/android/gms/internal/ads/zzdnv;

.field private final zzgnt:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzvr;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzctd;->zzeot:Lcom/google/android/gms/internal/ads/zzdnv;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzctd;->zzgnt:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzctd;->zzadu:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getAdapterResponses()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzvr;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctd;->zzadu:Ljava/util/List;

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzdnv;JLcom/google/android/gms/internal/ads/zzva;)V
    .registers 7
    .param p4    # Lcom/google/android/gms/internal/ads/zzva;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 20
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzdnv;->zzdjo:Ljava/lang/String;

    .line 21
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzctd;->zzgnt:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return-void

    .line 23
    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzctd;->zzeot:Lcom/google/android/gms/internal/ads/zzdnv;

    if-nez v1, :cond_11

    .line 24
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzctd;->zzeot:Lcom/google/android/gms/internal/ads/zzdnv;

    .line 25
    :cond_11
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzctd;->zzgnt:Ljava/util/Map;

    .line 26
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzvr;

    .line 27
    iput-wide p2, p1, Lcom/google/android/gms/internal/ads/zzvr;->zzcic:J

    .line 28
    iput-object p4, p1, Lcom/google/android/gms/internal/ads/zzvr;->zzcid:Lcom/google/android/gms/internal/ads/zzva;

    return-void
.end method

.method public final zzaqi()Lcom/google/android/gms/internal/ads/zzbty;
    .registers 4

    .line 30
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbty;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzctd;->zzeot:Lcom/google/android/gms/internal/ads/zzdnv;

    const-string v2, ""

    invoke-direct {v0, v1, v2, p0}, Lcom/google/android/gms/internal/ads/zzbty;-><init>(Lcom/google/android/gms/internal/ads/zzdnv;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzctd;)V

    return-object v0
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzdnv;)V
    .registers 10

    .line 6
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzdnv;->zzdjo:Ljava/lang/String;

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzctd;->zzgnt:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    return-void

    .line 9
    :cond_b
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 10
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzdnv;->zzhdu:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 12
    :try_start_22
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzdnv;->zzhdu:Lorg/json/JSONObject;

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b
    .catch Lorg/json/JSONException; {:try_start_22 .. :try_end_2b} :catch_2c

    goto :goto_16

    :catch_2c
    nop

    goto :goto_16

    .line 16
    :cond_2e
    new-instance v1, Lcom/google/android/gms/internal/ads/zzvr;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzdnv;->zzhdy:Ljava/lang/String;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzvr;-><init>(Ljava/lang/String;JLcom/google/android/gms/internal/ads/zzva;Landroid/os/Bundle;)V

    .line 17
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzctd;->zzadu:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzctd;->zzgnt:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
