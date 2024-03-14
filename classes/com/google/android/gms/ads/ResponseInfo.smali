.class public final Lcom/google/android/gms/ads/ResponseInfo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# instance fields
.field private final zzadt:Lcom/google/android/gms/internal/ads/zzyn;

.field private final zzadu:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/AdapterResponseInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzyn;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/ads/ResponseInfo;->zzadt:Lcom/google/android/gms/internal/ads/zzyn;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/ResponseInfo;->zzadu:Ljava/util/List;

    .line 5
    sget-object p1, Lcom/google/android/gms/internal/ads/zzabb;->zzcyp:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_46

    .line 9
    :try_start_1e
    iget-object p1, p0, Lcom/google/android/gms/ads/ResponseInfo;->zzadt:Lcom/google/android/gms/internal/ads/zzyn;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzyn;->getAdapterResponses()Ljava/util/List;

    move-result-object p1
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_24} :catch_40

    if-eqz p1, :cond_46

    .line 15
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzvr;

    .line 16
    iget-object v1, p0, Lcom/google/android/gms/ads/ResponseInfo;->zzadu:Ljava/util/List;

    .line 17
    invoke-static {v0}, Lcom/google/android/gms/ads/AdapterResponseInfo;->zza(Lcom/google/android/gms/internal/ads/zzvr;)Lcom/google/android/gms/ads/AdapterResponseInfo;

    move-result-object v0

    .line 18
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    :catch_40
    move-exception p1

    const-string v0, "Could not forward getAdapterResponseInfo to ResponseInfo."

    .line 12
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_46
    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzyn;)Lcom/google/android/gms/ads/ResponseInfo;
    .registers 2
    .param p0    # Lcom/google/android/gms/internal/ads/zzyn;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-eqz p0, :cond_8

    .line 50
    new-instance v0, Lcom/google/android/gms/ads/ResponseInfo;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/ResponseInfo;-><init>(Lcom/google/android/gms/internal/ads/zzyn;)V

    return-object v0

    :cond_8
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final getAdapterResponses()Ljava/util/List;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/AdapterResponseInfo;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/ads/ResponseInfo;->zzadu:Ljava/util/List;

    return-object v0
.end method

.method public final getMediationAdapterClassName()Ljava/lang/String;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 21
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/ResponseInfo;->zzadt:Lcom/google/android/gms/internal/ads/zzyn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzyn;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, "Could not forward getMediationAdapterClassName to ResponseInfo."

    .line 23
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getResponseId()Ljava/lang/String;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 25
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/ResponseInfo;->zzadt:Lcom/google/android/gms/internal/ads/zzyn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzyn;->getResponseId()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, "Could not forward getResponseId to ResponseInfo."

    .line 27
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 45
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/ResponseInfo;->zzdp()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_c

    :catch_a
    const-string v0, "Error forming toString output."

    :goto_c
    return-object v0
.end method

.method public final zzdp()Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 30
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 31
    invoke-virtual {p0}, Lcom/google/android/gms/ads/ResponseInfo;->getResponseId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "null"

    const-string v3, "Response ID"

    if-nez v1, :cond_13

    .line 33
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_16

    .line 34
    :cond_13
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    :goto_16
    invoke-virtual {p0}, Lcom/google/android/gms/ads/ResponseInfo;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Mediation Adapter Class Name"

    if-nez v1, :cond_22

    .line 37
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_25

    .line 38
    :cond_22
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    :goto_25
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 40
    iget-object v2, p0, Lcom/google/android/gms/ads/ResponseInfo;->zzadu:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_30
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/ads/AdapterResponseInfo;

    .line 41
    invoke-virtual {v3}, Lcom/google/android/gms/ads/AdapterResponseInfo;->zzdp()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_30

    :cond_44
    const-string v2, "Adapter Responses"

    .line 43
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
