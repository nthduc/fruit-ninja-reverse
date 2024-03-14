.class public Lcom/chartboost/sdk/impl/w1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/w1$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .registers 3

    if-eqz p1, :cond_1a

    .line 12
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "Access-Control-Allow-Origin"

    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "\'null\'"

    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1a

    const/4 p1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    :goto_1b
    return p1
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/chartboost/sdk/impl/w1$a;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/w1;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_21

    const-string p1, "CORS policy: No \'Access-Control-Allow-Origin\' header is present on the requested resource"

    const-string v0, "Chartboost"

    .line 2
    invoke-static {v0, p1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_12
    const-string v1, "message"

    .line 5
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_17} :catch_18

    goto :goto_1c

    :catch_18
    move-exception p1

    .line 7
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1c
    if-eqz p2, :cond_21

    .line 11
    invoke-interface {p2, v0}, Lcom/chartboost/sdk/impl/w1$a;->a(Lorg/json/JSONObject;)V

    :cond_21
    return-void
.end method
