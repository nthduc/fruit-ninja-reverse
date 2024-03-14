.class public final Lcom/google/android/gms/internal/ads/zzchg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private final zzgda:Lcom/google/android/gms/internal/ads/zzcgw;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzcgw;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzchg;->executor:Ljava/util/concurrent/Executor;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzchg;->zzgda:Lcom/google/android/gms/internal/ads/zzcgw;

    return-void
.end method


# virtual methods
.method public final zzg(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzchh;",
            ">;>;"
        }
    .end annotation

    .line 5
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_f

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdyq;->zzaf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1

    .line 8
    :cond_f
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1a
    if-ge v2, v0, :cond_7b

    .line 11
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_70

    const-string v4, "name"

    .line 13
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_70

    const-string v5, "type"

    .line 15
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "string"

    .line 16
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v6, :cond_3c

    const/4 v5, 0x1

    goto :goto_47

    :cond_3c
    const-string v6, "image"

    .line 18
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_46

    const/4 v5, 0x2

    goto :goto_47

    :cond_46
    const/4 v5, 0x0

    :goto_47
    if-eq v5, v8, :cond_60

    if-eq v5, v7, :cond_4c

    goto :goto_70

    .line 23
    :cond_4c
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzchg;->zzgda:Lcom/google/android/gms/internal/ads/zzcgw;

    const-string v6, "image_value"

    .line 24
    invoke-virtual {v5, v3, v6}, Lcom/google/android/gms/internal/ads/zzcgw;->zzc(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v3

    new-instance v5, Lcom/google/android/gms/internal/ads/zzchi;

    invoke-direct {v5, v4}, Lcom/google/android/gms/internal/ads/zzchi;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzchg;->executor:Ljava/util/concurrent/Executor;

    .line 25
    invoke-static {v3, v5, v4}, Lcom/google/android/gms/internal/ads/zzdyq;->zzb(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdvu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v3

    goto :goto_75

    .line 22
    :cond_60
    new-instance v5, Lcom/google/android/gms/internal/ads/zzchh;

    const-string v6, "string_value"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v4, v3}, Lcom/google/android/gms/internal/ads/zzchh;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzdyq;->zzaf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v3

    goto :goto_75

    :cond_70
    :goto_70
    const/4 v3, 0x0

    .line 26
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdyq;->zzaf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v3

    .line 27
    :goto_75
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 30
    :cond_7b
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzdyq;->zzi(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/ads/zzchf;->zzdwz:Lcom/google/android/gms/internal/ads/zzdvu;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchg;->executor:Ljava/util/concurrent/Executor;

    .line 31
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzdyq;->zzb(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdvu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1
.end method
