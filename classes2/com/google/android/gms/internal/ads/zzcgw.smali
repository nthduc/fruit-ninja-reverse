.class public final Lcom/google/android/gms/internal/ads/zzcgw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private final zzbpe:Lcom/google/android/gms/internal/ads/zzbbx;

.field private final zzdly:Lcom/google/android/gms/internal/ads/zzadu;

.field private final zzemr:Lcom/google/android/gms/internal/ads/zzts;

.field private final zzeom:Lcom/google/android/gms/internal/ads/zzeg;

.field private final zzfmv:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzgdl:Lcom/google/android/gms/internal/ads/zzcgn;

.field private final zzgdm:Lcom/google/android/gms/ads/internal/zzb;

.field private final zzgdn:Lcom/google/android/gms/internal/ads/zzchj;

.field private final zzvr:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcgn;Lcom/google/android/gms/internal/ads/zzeg;Lcom/google/android/gms/internal/ads/zzbbx;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzts;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzdok;Lcom/google/android/gms/internal/ads/zzchj;Ljava/util/concurrent/ScheduledExecutorService;)V
    .registers 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgw;->zzvr:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcgw;->zzgdl:Lcom/google/android/gms/internal/ads/zzcgn;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcgw;->zzeom:Lcom/google/android/gms/internal/ads/zzeg;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcgw;->zzbpe:Lcom/google/android/gms/internal/ads/zzbbx;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcgw;->zzgdm:Lcom/google/android/gms/ads/internal/zzb;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzcgw;->zzemr:Lcom/google/android/gms/internal/ads/zzts;

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzcgw;->executor:Ljava/util/concurrent/Executor;

    .line 9
    iget-object p1, p8, Lcom/google/android/gms/internal/ads/zzdok;->zzdly:Lcom/google/android/gms/internal/ads/zzadu;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgw;->zzdly:Lcom/google/android/gms/internal/ads/zzadu;

    .line 10
    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzcgw;->zzgdn:Lcom/google/android/gms/internal/ads/zzchj;

    .line 11
    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzcgw;->zzfmv:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzdzc;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "TT;>;TT;)",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "TT;>;"
        }
    .end annotation

    .line 125
    const-class p1, Ljava/lang/Exception;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzchc;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzchc;-><init>(Ljava/lang/Object;)V

    .line 126
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbbz;->zzeeu:Lcom/google/android/gms/internal/ads/zzdzb;

    .line 127
    invoke-static {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzdyq;->zzb(Lcom/google/android/gms/internal/ads/zzdzc;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdya;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p0

    return-object p0
.end method

.method private final zza(Lorg/json/JSONArray;ZZ)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 7
    .param p1    # Lorg/json/JSONArray;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "ZZ)",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzadq;",
            ">;>;"
        }
    .end annotation

    if-eqz p1, :cond_34

    .line 47
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-gtz v0, :cond_9

    goto :goto_34

    .line 49
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_15

    .line 50
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p3

    goto :goto_16

    :cond_15
    const/4 p3, 0x1

    :goto_16
    const/4 v1, 0x0

    :goto_17
    if-ge v1, p3, :cond_27

    .line 53
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/google/android/gms/internal/ads/zzcgw;->zza(Lorg/json/JSONObject;Z)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v2

    .line 54
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 57
    :cond_27
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdyq;->zzi(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/ads/zzcgv;->zzdwz:Lcom/google/android/gms/internal/ads/zzdvu;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcgw;->executor:Ljava/util/concurrent/Executor;

    .line 58
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdyq;->zzb(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdvu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1

    .line 48
    :cond_34
    :goto_34
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdyq;->zzaf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1
.end method

.method private final zza(Lorg/json/JSONObject;Z)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 15
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Z)",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "Lcom/google/android/gms/internal/ads/zzadq;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_8

    .line 60
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdyq;->zzaf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1

    :cond_8
    const-string v1, "url"

    .line 61
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 62
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 63
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdyq;->zzaf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1

    :cond_19
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-string v4, "scale"

    .line 64
    invoke-virtual {p1, v4, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    const/4 v1, 0x1

    const-string v2, "is_transparent"

    .line 65
    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v2, -0x1

    const-string v4, "width"

    .line 66
    invoke-virtual {p1, v4, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    const-string v4, "height"

    .line 67
    invoke-virtual {p1, v4, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    if-eqz p2, :cond_47

    .line 69
    new-instance p1, Lcom/google/android/gms/internal/ads/zzadq;

    const/4 v6, 0x0

    .line 70
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    move-object v5, p1

    invoke-direct/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zzadq;-><init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;DII)V

    .line 71
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdyq;->zzaf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1

    .line 72
    :cond_47
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcgw;->zzgdl:Lcom/google/android/gms/internal/ads/zzcgn;

    .line 73
    invoke-virtual {p2, v3, v8, v9, v1}, Lcom/google/android/gms/internal/ads/zzcgn;->zza(Ljava/lang/String;DZ)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p2

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcgy;

    move-object v2, v1

    move-wide v4, v8

    move v6, v10

    move v7, v11

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzcgy;-><init>(Ljava/lang/String;DII)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcgw;->executor:Ljava/util/concurrent/Executor;

    .line 74
    invoke-static {p2, v1, v2}, Lcom/google/android/gms/internal/ads/zzdyq;->zzb(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdvu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p2

    const-string v1, "require"

    .line 75
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzcgw;->zza(ZLcom/google/android/gms/internal/ads/zzdzc;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1
.end method

.method private static zza(ZLcom/google/android/gms/internal/ads/zzdzc;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "TT;>;TT;)",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "TT;>;"
        }
    .end annotation

    if-eqz p0, :cond_e

    .line 129
    new-instance p0, Lcom/google/android/gms/internal/ads/zzchb;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzchb;-><init>(Lcom/google/android/gms/internal/ads/zzdzc;)V

    .line 130
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbbz;->zzeeu:Lcom/google/android/gms/internal/ads/zzdzb;

    .line 131
    invoke-static {p1, p0, p2}, Lcom/google/android/gms/internal/ads/zzdyq;->zzb(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdya;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p0

    return-object p0

    :cond_e
    const/4 p0, 0x0

    .line 132
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzcgw;->zza(Lcom/google/android/gms/internal/ads/zzdzc;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p0

    return-object p0
.end method

.method private static zzf(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;
    .registers 4

    .line 91
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "r"

    .line 93
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v0, "g"

    .line 94
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "b"

    .line 95
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    .line 96
    invoke-static {p1, v0, p0}, Landroid/graphics/Color;->rgb(III)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_1e} :catch_1f

    return-object p0

    :catch_1f
    const/4 p0, 0x0

    return-object p0
.end method

.method public static zzj(Lorg/json/JSONObject;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzzk;",
            ">;"
        }
    .end annotation

    const-string v0, "mute"

    .line 13
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_d

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdwp;->zzaxo()Lcom/google/android/gms/internal/ads/zzdwp;

    move-result-object p0

    return-object p0

    :cond_d
    const-string v0, "reasons"

    .line 16
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_3d

    .line 17
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-gtz v0, :cond_1c

    goto :goto_3d

    .line 19
    :cond_1c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 20
    :goto_22
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_38

    .line 22
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzcgw;->zzl(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzzk;

    move-result-object v2

    if-eqz v2, :cond_35

    .line 24
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 26
    :cond_38
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdwp;->zzb(Ljava/util/Collection;)Lcom/google/android/gms/internal/ads/zzdwp;

    move-result-object p0

    return-object p0

    .line 18
    :cond_3d
    :goto_3d
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdwp;->zzaxo()Lcom/google/android/gms/internal/ads/zzdwp;

    move-result-object p0

    return-object p0
.end method

.method public static zzk(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzzk;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "mute"

    .line 27
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_a

    return-object v0

    :cond_a
    const-string v1, "default_reason"

    .line 30
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_13

    return-object v0

    .line 33
    :cond_13
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzcgw;->zzl(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzzk;

    move-result-object p0

    return-object p0
.end method

.method private static zzl(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzzk;
    .registers 4
    .param p0    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const-string v1, "reason"

    .line 36
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ping_url"

    .line 37
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 38
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_22

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1d

    goto :goto_22

    .line 40
    :cond_1d
    new-instance v0, Lcom/google/android/gms/internal/ads/zzzk;

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzzk;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    :goto_22
    return-object v0
.end method


# virtual methods
.method final synthetic zza(Lorg/json/JSONObject;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzadl;
    .registers 15

    const/4 v0, 0x0

    if-eqz p2, :cond_4e

    .line 143
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_4e

    :cond_a
    const-string v1, "text"

    .line 145
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "bg_color"

    .line 146
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzcgw;->zzf(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    const-string v1, "text_color"

    .line 147
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzcgw;->zzf(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    const/4 v1, -0x1

    const-string v2, "text_size"

    .line 148
    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "allow_pub_rendering"

    .line 150
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v10

    const/16 v2, 0x3e8

    const-string v4, "animation_ms"

    .line 152
    invoke-virtual {p1, v4, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const/16 v4, 0xfa0

    const-string v7, "presentation_ms"

    .line 154
    invoke-virtual {p1, v7, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    .line 155
    new-instance v11, Lcom/google/android/gms/internal/ads/zzadl;

    if-lez v1, :cond_41

    .line 156
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_41
    move-object v7, v0

    add-int v8, p1, v2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgw;->zzdly:Lcom/google/android/gms/internal/ads/zzadu;

    iget v9, p1, Lcom/google/android/gms/internal/ads/zzadu;->zzbnq:I

    move-object v2, v11

    move-object v4, p2

    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/internal/ads/zzadl;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;IIZ)V

    return-object v11

    :cond_4e
    :goto_4e
    return-object v0
.end method

.method final synthetic zzb(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 133
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzks()Lcom/google/android/gms/internal/ads/zzbgr;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzcgw;->zzvr:Landroid/content/Context;

    .line 134
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbhy;->zzacy()Lcom/google/android/gms/internal/ads/zzbhy;

    move-result-object v2

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzcgw;->zzeom:Lcom/google/android/gms/internal/ads/zzeg;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzcgw;->zzbpe:Lcom/google/android/gms/internal/ads/zzbbx;

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzcgw;->zzgdm:Lcom/google/android/gms/ads/internal/zzb;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzcgw;->zzemr:Lcom/google/android/gms/internal/ads/zzts;

    const-string v3, "native-omid"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 135
    invoke-static/range {v1 .. v16}, Lcom/google/android/gms/internal/ads/zzbgr;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbhy;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzeg;Lcom/google/android/gms/internal/ads/zzacb;Lcom/google/android/gms/internal/ads/zzbbx;Lcom/google/android/gms/internal/ads/zzabs;Lcom/google/android/gms/ads/internal/zzk;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzts;Lcom/google/android/gms/internal/ads/zzsu;ZLcom/google/android/gms/internal/ads/zzdnv;Lcom/google/android/gms/internal/ads/zzdnw;)Lcom/google/android/gms/internal/ads/zzbgj;

    move-result-object v1

    .line 136
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbch;->zzl(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzbch;

    move-result-object v2

    .line 138
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbgj;->zzabw()Lcom/google/android/gms/internal/ads/zzbhv;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/ads/zzche;

    invoke-direct {v4, v2}, Lcom/google/android/gms/internal/ads/zzche;-><init>(Lcom/google/android/gms/internal/ads/zzbch;)V

    .line 139
    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/zzbhv;->zza(Lcom/google/android/gms/internal/ads/zzbhu;)V

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    move-object/from16 v5, p1

    .line 140
    invoke-interface {v1, v5, v3, v4}, Lcom/google/android/gms/internal/ads/zzbgj;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public final zzc(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "Lcom/google/android/gms/internal/ads/zzadq;",
            ">;"
        }
    .end annotation

    .line 42
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcgw;->zzdly:Lcom/google/android/gms/internal/ads/zzadu;

    iget-boolean p2, p2, Lcom/google/android/gms/internal/ads/zzadu;->zzddm:Z

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcgw;->zza(Lorg/json/JSONObject;Z)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1
.end method

.method public final zzd(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzadq;",
            ">;>;"
        }
    .end annotation

    .line 45
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcgw;->zzdly:Lcom/google/android/gms/internal/ads/zzadu;

    iget-boolean p2, p2, Lcom/google/android/gms/internal/ads/zzadu;->zzddm:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgw;->zzdly:Lcom/google/android/gms/internal/ads/zzadu;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzadu;->zzbnp:Z

    .line 46
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzcgw;->zza(Lorg/json/JSONArray;ZZ)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1
.end method

.method public final zze(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "Lcom/google/android/gms/internal/ads/zzadl;",
            ">;"
        }
    .end annotation

    .line 76
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_c

    .line 78
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzdyq;->zzaf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1

    :cond_c
    const-string v0, "images"

    .line 79
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const-string v1, "image"

    .line 80
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v0, :cond_24

    if-eqz v1, :cond_24

    .line 82
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 83
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_24
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 85
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcgw;->zza(Lorg/json/JSONArray;ZZ)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    .line 86
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcgx;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzcgx;-><init>(Lcom/google/android/gms/internal/ads/zzcgw;Lorg/json/JSONObject;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcgw;->executor:Ljava/util/concurrent/Executor;

    .line 87
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdyq;->zzb(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdvu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    const-string v1, "require"

    .line 89
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 90
    invoke-static {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzcgw;->zza(ZLcom/google/android/gms/internal/ads/zzdzc;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1
.end method

.method public final zzm(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "Lcom/google/android/gms/internal/ads/zzbgj;",
            ">;"
        }
    .end annotation

    const-string v0, "html_containers"

    const-string v1, "instream"

    .line 99
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzbao;->zza(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_56

    const-string v0, "video"

    .line 102
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_1c

    .line 104
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdyq;->zzaf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1

    :cond_1c
    const-string v1, "vast_xml"

    .line 105
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 106
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_32

    const-string p1, "Required field \'vast_xml\' is missing"

    .line 107
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfe(Ljava/lang/String;)V

    .line 108
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdyq;->zzaf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1

    .line 109
    :cond_32
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcgw;->zzgdn:Lcom/google/android/gms/internal/ads/zzchj;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzchj;->zzn(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    .line 110
    sget-object v1, Lcom/google/android/gms/internal/ads/zzabb;->zzcry:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 112
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v1

    .line 113
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcgw;->zzfmv:Ljava/util/concurrent/ScheduledExecutorService;

    .line 114
    invoke-static {p1, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzdyq;->zza(Lcom/google/android/gms/internal/ads/zzdzc;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    .line 115
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzcgw;->zza(Lcom/google/android/gms/internal/ads/zzdzc;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1

    .line 118
    :cond_56
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgw;->zzgdn:Lcom/google/android/gms/internal/ads/zzchj;

    const-string v1, "base_url"

    .line 119
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "html"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzchj;->zzo(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    .line 121
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcgz;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzcgz;-><init>(Lcom/google/android/gms/internal/ads/zzdzc;)V

    .line 122
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbbz;->zzeeu:Lcom/google/android/gms/internal/ads/zzdzb;

    .line 123
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzdyq;->zzb(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdya;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1
.end method
