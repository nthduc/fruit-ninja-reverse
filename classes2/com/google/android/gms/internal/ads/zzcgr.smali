.class final synthetic Lcom/google/android/gms/internal/ads/zzcgr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzfqn:Lcom/google/android/gms/internal/ads/zzdnv;

.field private final zzgcw:Lcom/google/android/gms/internal/ads/zzcgs;

.field private final zzgcx:Lcom/google/android/gms/internal/ads/zzdog;

.field private final zzgcy:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcgs;Lcom/google/android/gms/internal/ads/zzdog;Lcom/google/android/gms/internal/ads/zzdnv;Lorg/json/JSONObject;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgr;->zzgcw:Lcom/google/android/gms/internal/ads/zzcgs;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcgr;->zzgcx:Lcom/google/android/gms/internal/ads/zzdog;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcgr;->zzfqn:Lcom/google/android/gms/internal/ads/zzdnv;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcgr;->zzgcy:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgr;->zzgcw:Lcom/google/android/gms/internal/ads/zzcgs;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgr;->zzgcx:Lcom/google/android/gms/internal/ads/zzdog;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcgr;->zzfqn:Lcom/google/android/gms/internal/ads/zzdnv;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcgr;->zzgcy:Lorg/json/JSONObject;

    .line 3
    new-instance v3, Lcom/google/android/gms/internal/ads/zzcei;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzcei;-><init>()V

    const-string v4, "template_id"

    const/4 v5, -0x1

    .line 4
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzcei;->zzdy(I)V

    const-string v4, "custom_template_id"

    .line 5
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzcei;->zzga(Ljava/lang/String;)V

    const-string v4, "omid_settings"

    .line 7
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_30

    const-string v6, "omid_partner_name"

    .line 9
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_31

    :cond_30
    move-object v4, v5

    .line 11
    :goto_31
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzcei;->zzgb(Ljava/lang/String;)V

    .line 12
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdog;->zzhev:Lcom/google/android/gms/internal/ads/zzdof;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdof;->zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

    .line 13
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzdok;->zzhfc:Ljava/util/ArrayList;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzcei;->zzama()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e9

    .line 16
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzcei;->zzama()I

    move-result v4

    const/4 v6, 0x3

    if-ne v4, v6, :cond_76

    .line 17
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzcei;->getCustomTemplateId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6c

    .line 19
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdok;->zzhfd:Ljava/util/ArrayList;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzcei;->getCustomTemplateId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    goto :goto_76

    .line 20
    :cond_62
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcwn;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdpg;->zzhfw:Lcom/google/android/gms/internal/ads/zzdpg;

    const-string v2, "Unexpected custom template id in the response."

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcwn;-><init>(Lcom/google/android/gms/internal/ads/zzdpg;Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_6c
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcwn;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdpg;->zzhfw:Lcom/google/android/gms/internal/ads/zzdpg;

    const-string v2, "No custom template id for custom template ad response."

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcwn;-><init>(Lcom/google/android/gms/internal/ads/zzdpg;Ljava/lang/String;)V

    throw v0

    :cond_76
    :goto_76
    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    const-string v0, "rating"

    .line 21
    invoke-virtual {v2, v0, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Lcom/google/android/gms/internal/ads/zzcei;->setStarRating(D)V

    const-string v0, "headline"

    .line 23
    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzdnv;->zzduj:Z

    if-eqz v1, :cond_b8

    .line 25
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkr()Lcom/google/android/gms/internal/ads/zzayu;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzayu;->zzxv()Ljava/lang/String;

    move-result-object v1

    .line 26
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v7, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 28
    :cond_b8
    invoke-virtual {v3, v0, v4}, Lcom/google/android/gms/internal/ads/zzcei;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "body"

    .line 29
    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzcei;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "call_to_action"

    .line 30
    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzcei;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "store"

    .line 31
    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzcei;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "price"

    .line 32
    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzcei;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "advertiser"

    .line 33
    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzcei;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 14
    :cond_e9
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcwn;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdpg;->zzhfw:Lcom/google/android/gms/internal/ads/zzdpg;

    .line 15
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzcei;->zzama()I

    move-result v2

    const/16 v3, 0x20

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Invalid template ID: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcwn;-><init>(Lcom/google/android/gms/internal/ads/zzdpg;Ljava/lang/String;)V

    throw v0
.end method