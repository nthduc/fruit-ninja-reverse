.class public final Lcom/chartboost/sdk/impl/q0;
.super Lcom/chartboost/sdk/impl/p0;
.source "SourceFile"


# instance fields
.field private final q:Lorg/json/JSONObject;

.field private final r:Lorg/json/JSONObject;

.field private final s:Lorg/json/JSONObject;

.field private final t:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/chartboost/sdk/Model/g;Lcom/chartboost/sdk/Tracking/a;ILcom/chartboost/sdk/impl/p0$a;Lcom/chartboost/sdk/impl/u0;)V
    .registers 15

    const-string v1, "https://live.chartboost.com"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 1
    invoke-direct/range {v0 .. v7}, Lcom/chartboost/sdk/impl/p0;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/Model/g;Lcom/chartboost/sdk/Tracking/a;ILcom/chartboost/sdk/impl/p0$a;Lcom/chartboost/sdk/impl/u0;)V

    .line 2
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/chartboost/sdk/impl/q0;->q:Lorg/json/JSONObject;

    .line 3
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/chartboost/sdk/impl/q0;->r:Lorg/json/JSONObject;

    .line 4
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/chartboost/sdk/impl/q0;->s:Lorg/json/JSONObject;

    .line 5
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/chartboost/sdk/impl/q0;->t:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Object;I)V
    .registers 4

    if-nez p3, :cond_e

    .line 1
    iget-object p3, p0, Lcom/chartboost/sdk/impl/q0;->t:Lorg/json/JSONObject;

    invoke-static {p3, p1, p2}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/chartboost/sdk/impl/q0;->t:Lorg/json/JSONObject;

    const-string p2, "ad"

    invoke-virtual {p0, p2, p1}, Lcom/chartboost/sdk/impl/p0;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_e
    return-void
.end method

.method public c()V
    .registers 11

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q0;->r:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/p0;->n:Lcom/chartboost/sdk/Model/g;

    iget-object v1, v1, Lcom/chartboost/sdk/Model/g;->s:Ljava/lang/String;

    const-string v2, "app"

    invoke-static {v0, v2, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q0;->r:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/p0;->n:Lcom/chartboost/sdk/Model/g;

    iget-object v1, v1, Lcom/chartboost/sdk/Model/g;->j:Ljava/lang/String;

    const-string v3, "bundle"

    invoke-static {v0, v3, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q0;->r:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/p0;->n:Lcom/chartboost/sdk/Model/g;

    iget-object v1, v1, Lcom/chartboost/sdk/Model/g;->k:Ljava/lang/String;

    const-string v3, "bundle_id"

    invoke-static {v0, v3, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q0;->r:Lorg/json/JSONObject;

    sget-object v1, Lcom/chartboost/sdk/j;->b:Ljava/lang/String;

    const-string v3, "custom_id"

    invoke-static {v0, v3, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q0;->r:Lorg/json/JSONObject;

    const-string v1, ""

    const-string v3, "session_id"

    invoke-static {v0, v3, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q0;->r:Lorg/json/JSONObject;

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "ui"

    invoke-static {v0, v5, v4}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q0;->r:Lorg/json/JSONObject;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const-string v7, "test_mode"

    invoke-static {v0, v7, v6}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q0;->r:Lorg/json/JSONObject;

    invoke-virtual {p0, v2, v0}, Lcom/chartboost/sdk/impl/p0;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x5

    .line 12
    new-array v0, v0, [Lcom/chartboost/sdk/Libraries/e$a;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/p0;->n:Lcom/chartboost/sdk/Model/g;

    iget-object v2, v2, Lcom/chartboost/sdk/Model/g;->v:Lorg/json/JSONObject;

    const-string v7, "carrier-name"

    .line 13
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "carrier_name"

    invoke-static {v7, v2}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    aput-object v2, v0, v4

    iget-object v2, p0, Lcom/chartboost/sdk/impl/p0;->n:Lcom/chartboost/sdk/Model/g;

    iget-object v2, v2, Lcom/chartboost/sdk/Model/g;->v:Lorg/json/JSONObject;

    const-string v7, "mobile-country-code"

    .line 14
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "mobile_country_code"

    invoke-static {v7, v2}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    const/4 v7, 0x1

    aput-object v2, v0, v7

    iget-object v2, p0, Lcom/chartboost/sdk/impl/p0;->n:Lcom/chartboost/sdk/Model/g;

    iget-object v2, v2, Lcom/chartboost/sdk/Model/g;->v:Lorg/json/JSONObject;

    const-string v8, "mobile-network-code"

    .line 15
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v8, "mobile_network_code"

    invoke-static {v8, v2}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    const/4 v8, 0x2

    aput-object v2, v0, v8

    iget-object v2, p0, Lcom/chartboost/sdk/impl/p0;->n:Lcom/chartboost/sdk/Model/g;

    iget-object v2, v2, Lcom/chartboost/sdk/Model/g;->v:Lorg/json/JSONObject;

    const-string v8, "iso-country-code"

    .line 16
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v8, "iso_country_code"

    invoke-static {v8, v2}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    const/4 v8, 0x3

    aput-object v2, v0, v8

    iget-object v2, p0, Lcom/chartboost/sdk/impl/p0;->n:Lcom/chartboost/sdk/Model/g;

    iget-object v2, v2, Lcom/chartboost/sdk/Model/g;->v:Lorg/json/JSONObject;

    const-string v8, "phone-type"

    .line 17
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v8, "phone_type"

    invoke-static {v8, v2}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    const/4 v8, 0x4

    aput-object v2, v0, v8

    .line 18
    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/e;->a([Lcom/chartboost/sdk/Libraries/e$a;)Lorg/json/JSONObject;

    move-result-object v0

    .line 24
    iget-object v2, p0, Lcom/chartboost/sdk/impl/q0;->s:Lorg/json/JSONObject;

    const-string v8, "carrier"

    invoke-static {v2, v8, v0}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 26
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q0;->s:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/p0;->n:Lcom/chartboost/sdk/Model/g;

    iget-object v2, v2, Lcom/chartboost/sdk/Model/g;->f:Ljava/lang/String;

    const-string v8, "model"

    invoke-static {v0, v8, v2}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q0;->s:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/p0;->n:Lcom/chartboost/sdk/Model/g;

    iget-object v2, v2, Lcom/chartboost/sdk/Model/g;->t:Ljava/lang/String;

    const-string v8, "device_type"

    invoke-static {v0, v8, v2}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q0;->s:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/p0;->n:Lcom/chartboost/sdk/Model/g;

    iget-object v2, v2, Lcom/chartboost/sdk/Model/g;->u:Ljava/lang/String;

    const-string v8, "actual_device_type"

    invoke-static {v0, v8, v2}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 29
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q0;->s:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/p0;->n:Lcom/chartboost/sdk/Model/g;

    iget-object v2, v2, Lcom/chartboost/sdk/Model/g;->g:Ljava/lang/String;

    const-string v8, "os"

    invoke-static {v0, v8, v2}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 30
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q0;->s:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/p0;->n:Lcom/chartboost/sdk/Model/g;

    iget-object v2, v2, Lcom/chartboost/sdk/Model/g;->h:Ljava/lang/String;

    const-string v8, "country"

    invoke-static {v0, v8, v2}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q0;->s:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/p0;->n:Lcom/chartboost/sdk/Model/g;

    iget-object v2, v2, Lcom/chartboost/sdk/Model/g;->i:Ljava/lang/String;

    const-string v8, "language"

    invoke-static {v0, v8, v2}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 32
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/p0;->n:Lcom/chartboost/sdk/Model/g;

    iget-object v2, v2, Lcom/chartboost/sdk/Model/g;->e:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v2}, Lcom/chartboost/sdk/Libraries/i;->a()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 33
    iget-object v2, p0, Lcom/chartboost/sdk/impl/q0;->s:Lorg/json/JSONObject;

    const-string v8, "timestamp"

    invoke-static {v2, v8, v0}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 34
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q0;->s:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/p0;->n:Lcom/chartboost/sdk/Model/g;

    iget-object v2, v2, Lcom/chartboost/sdk/Model/g;->b:Lcom/chartboost/sdk/Networking/h;

    invoke-virtual {v2}, Lcom/chartboost/sdk/Networking/h;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v8, "reachability"

    invoke-static {v0, v8, v2}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q0;->s:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/p0;->n:Lcom/chartboost/sdk/Model/g;

    iget-object v2, v2, Lcom/chartboost/sdk/Model/g;->r:Ljava/lang/Float;

    const-string v8, "scale"

    invoke-static {v0, v8, v2}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 36
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q0;->s:Lorg/json/JSONObject;

    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->e()I

    move-result v2

    invoke-static {v2}, Lcom/chartboost/sdk/Libraries/CBUtility;->b(I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v8, "is_portrait"

    invoke-static {v0, v8, v2}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q0;->s:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/p0;->n:Lcom/chartboost/sdk/Model/g;

    iget-boolean v2, v2, Lcom/chartboost/sdk/Model/g;->x:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v8, "rooted_device"

    invoke-static {v0, v8, v2}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q0;->s:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/p0;->n:Lcom/chartboost/sdk/Model/g;

    iget-object v2, v2, Lcom/chartboost/sdk/Model/g;->y:Ljava/lang/String;

    const-string v8, "timezone"

    invoke-static {v0, v8, v2}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q0;->s:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/p0;->n:Lcom/chartboost/sdk/Model/g;

    iget-object v2, v2, Lcom/chartboost/sdk/Model/g;->z:Ljava/lang/Integer;

    const-string v8, "mobile_network"

    invoke-static {v0, v8, v2}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 40
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q0;->s:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/p0;->n:Lcom/chartboost/sdk/Model/g;

    iget-object v2, v2, Lcom/chartboost/sdk/Model/g;->o:Ljava/lang/Integer;

    const-string v8, "dw"

    invoke-static {v0, v8, v2}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 41
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q0;->s:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/p0;->n:Lcom/chartboost/sdk/Model/g;

    iget-object v2, v2, Lcom/chartboost/sdk/Model/g;->p:Ljava/lang/Integer;

    const-string v8, "dh"

    invoke-static {v0, v8, v2}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q0;->s:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/p0;->n:Lcom/chartboost/sdk/Model/g;

    iget-object v2, v2, Lcom/chartboost/sdk/Model/g;->q:Ljava/lang/String;

    const-string v8, "dpi"

    invoke-static {v0, v8, v2}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q0;->s:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/p0;->n:Lcom/chartboost/sdk/Model/g;

    iget-object v2, v2, Lcom/chartboost/sdk/Model/g;->m:Ljava/lang/Integer;

    const-string v8, "w"

    invoke-static {v0, v8, v2}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q0;->s:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/p0;->n:Lcom/chartboost/sdk/Model/g;

    iget-object v2, v2, Lcom/chartboost/sdk/Model/g;->n:Ljava/lang/Integer;

    const-string v8, "h"

    invoke-static {v0, v8, v2}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q0;->s:Lorg/json/JSONObject;

    sget-object v2, Lcom/chartboost/sdk/j;->r:Ljava/lang/String;

    const-string v8, "user_agent"

    invoke-static {v0, v8, v2}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q0;->s:Lorg/json/JSONObject;

    const-string v2, "device_family"

    invoke-static {v0, v2, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 47
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q0;->s:Lorg/json/JSONObject;

    const-string v2, "retina"

    invoke-static {v0, v2, v6}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 49
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p0;->n:Lcom/chartboost/sdk/Model/g;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/g;->a:Lcom/chartboost/sdk/Libraries/d;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/d;->a()Lcom/chartboost/sdk/Libraries/d$a;

    move-result-object v0

    .line 50
    iget-object v2, p0, Lcom/chartboost/sdk/impl/q0;->s:Lorg/json/JSONObject;

    iget-object v8, v0, Lcom/chartboost/sdk/Libraries/d$a;->b:Ljava/lang/String;

    const-string v9, "identity"

    invoke-static {v2, v9, v8}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 51
    iget v0, v0, Lcom/chartboost/sdk/Libraries/d$a;->a:I

    if-eq v0, v3, :cond_1e7

    if-ne v0, v7, :cond_1db

    goto :goto_1dc

    :cond_1db
    const/4 v7, 0x0

    .line 53
    :goto_1dc
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q0;->s:Lorg/json/JSONObject;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "limit_ad_tracking"

    invoke-static {v0, v3, v2}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 56
    :cond_1e7
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q0;->s:Lorg/json/JSONObject;

    sget-object v2, Lcom/chartboost/sdk/impl/t0;->a:Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;

    invoke-virtual {v2}, Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "pidatauseconsent"

    invoke-static {v0, v3, v2}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 58
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p0;->p:Lcom/chartboost/sdk/impl/u0;

    if-eqz v0, :cond_207

    .line 59
    iget-object v2, p0, Lcom/chartboost/sdk/impl/q0;->s:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/u0;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "privacy"

    invoke-static {v2, v3, v0}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    :cond_207
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q0;->s:Lorg/json/JSONObject;

    const-string v2, "device"

    invoke-virtual {p0, v2, v0}, Lcom/chartboost/sdk/impl/p0;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q0;->q:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/p0;->n:Lcom/chartboost/sdk/Model/g;

    iget-object v2, v2, Lcom/chartboost/sdk/Model/g;->l:Ljava/lang/String;

    const-string v3, "sdk"

    invoke-static {v0, v3, v2}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 67
    sget-object v0, Lcom/chartboost/sdk/j;->e:Lcom/chartboost/sdk/Chartboost$CBFramework;

    if-eqz v0, :cond_22f

    .line 68
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q0;->q:Lorg/json/JSONObject;

    sget-object v2, Lcom/chartboost/sdk/j;->g:Ljava/lang/String;

    const-string v7, "framework_version"

    invoke-static {v0, v7, v2}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 69
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q0;->q:Lorg/json/JSONObject;

    sget-object v2, Lcom/chartboost/sdk/j;->c:Ljava/lang/String;

    const-string v7, "wrapper_version"

    invoke-static {v0, v7, v2}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    :cond_22f
    sget-object v0, Lcom/chartboost/sdk/j;->i:Lcom/chartboost/sdk/Networking/requests/models/MediationModel;

    if-eqz v0, :cond_258

    .line 73
    iget-object v2, p0, Lcom/chartboost/sdk/impl/q0;->q:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Networking/requests/models/MediationModel;->getMediation()Ljava/lang/String;

    move-result-object v0

    const-string v7, "mediation"

    invoke-static {v2, v7, v0}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q0;->q:Lorg/json/JSONObject;

    sget-object v2, Lcom/chartboost/sdk/j;->i:Lcom/chartboost/sdk/Networking/requests/models/MediationModel;

    invoke-virtual {v2}, Lcom/chartboost/sdk/Networking/requests/models/MediationModel;->getMediationVersion()Ljava/lang/String;

    move-result-object v2

    const-string v7, "mediation_version"

    invoke-static {v0, v7, v2}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q0;->q:Lorg/json/JSONObject;

    sget-object v2, Lcom/chartboost/sdk/j;->i:Lcom/chartboost/sdk/Networking/requests/models/MediationModel;

    invoke-virtual {v2}, Lcom/chartboost/sdk/Networking/requests/models/MediationModel;->getAdapterVersion()Ljava/lang/String;

    move-result-object v2

    const-string v7, "adapter_version"

    invoke-static {v0, v7, v2}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 78
    :cond_258
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q0;->q:Lorg/json/JSONObject;

    const-string v2, "commit_hash"

    const-string v7, "6fc21cc6f0ae7b9742b4577672d558b51a909e27"

    invoke-static {v0, v2, v7}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p0;->n:Lcom/chartboost/sdk/Model/g;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/g;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/h;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/h;->a:Ljava/lang/String;

    .line 81
    invoke-static {}, Lcom/chartboost/sdk/impl/x;->c()Lcom/chartboost/sdk/impl/x;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/chartboost/sdk/impl/x;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_27e

    .line 82
    iget-object v2, p0, Lcom/chartboost/sdk/impl/q0;->q:Lorg/json/JSONObject;

    const-string v7, "config_variant"

    invoke-static {v2, v7, v0}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    :cond_27e
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q0;->q:Lorg/json/JSONObject;

    invoke-virtual {p0, v3, v0}, Lcom/chartboost/sdk/impl/p0;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p0;->n:Lcom/chartboost/sdk/Model/g;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/g;->d:Landroid/content/SharedPreferences;

    const-string v2, "cbPrefSessionCount"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 89
    iget-object v2, p0, Lcom/chartboost/sdk/impl/q0;->t:Lorg/json/JSONObject;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "session"

    invoke-static {v2, v3, v0}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q0;->t:Lorg/json/JSONObject;

    const-string v2, "cache"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a7

    .line 91
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q0;->t:Lorg/json/JSONObject;

    invoke-static {v0, v2, v6}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 92
    :cond_2a7
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q0;->t:Lorg/json/JSONObject;

    const-string v2, "amount"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b6

    .line 93
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q0;->t:Lorg/json/JSONObject;

    invoke-static {v0, v2, v5}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    :cond_2b6
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q0;->t:Lorg/json/JSONObject;

    const-string v2, "retry_count"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c5

    .line 95
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q0;->t:Lorg/json/JSONObject;

    invoke-static {v0, v2, v5}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 96
    :cond_2c5
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q0;->t:Lorg/json/JSONObject;

    const-string v2, "location"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d4

    .line 97
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q0;->t:Lorg/json/JSONObject;

    invoke-static {v0, v2, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 99
    :cond_2d4
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q0;->t:Lorg/json/JSONObject;

    const-string v1, "ad"

    invoke-virtual {p0, v1, v0}, Lcom/chartboost/sdk/impl/p0;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
