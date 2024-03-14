.class public Lcom/applovin/impl/sdk/utils/h;
.super Ljava/lang/Object;


# static fields
.field private static final a:[I

.field private static final b:[I

.field private static final c:[I

.field private static final d:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_24

    sput-object v0, Lcom/applovin/impl/sdk/utils/h;->a:[I

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_32

    sput-object v0, Lcom/applovin/impl/sdk/utils/h;->b:[I

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_44

    sput-object v0, Lcom/applovin/impl/sdk/utils/h;->c:[I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x14

    aput v2, v0, v1

    sput-object v0, Lcom/applovin/impl/sdk/utils/h;->d:[I

    return-void

    nop

    :array_24
    .array-data 4
        0x7
        0x4
        0x2
        0x1
        0xb
    .end array-data

    :array_32
    .array-data 4
        0x5
        0x6
        0xa
        0x3
        0x9
        0x8
        0xe
    .end array-data

    :array_44
    .array-data 4
        0xf
        0xc
        0xd
    .end array-data
.end method

.method public static a(Ljava/io/InputStream;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Lcom/applovin/impl/sdk/b/b;->dr:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p1, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    new-array p1, p1, [B

    :goto_17
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_22

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_17

    :cond_22
    const-string p0, "UTF-8"

    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/applovin/impl/sdk/b/b;->aI:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/applovin/impl/sdk/utils/h;->a(Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;
    .registers 5

    if-eqz p0, :cond_2d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_2d

    if-eqz p1, :cond_25

    if-eqz p2, :cond_1d

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No sdk specified"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_25
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No endpoint specified"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid domain specified"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "results"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONObject;

    return-object p0
.end method

.method public static a(ILcom/applovin/impl/sdk/j;)V
    .registers 6

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->E()Lcom/applovin/impl/sdk/b/c;

    move-result-object v0

    const-string v1, "SDK key \""

    const-string v2, "AppLovinSdk"

    const/16 v3, 0x191

    if-ne p0, v3, :cond_37

    sget-object p0, Lcom/applovin/impl/sdk/b/b;->Q:Lcom/applovin/impl/sdk/b/b;

    const-string v3, ""

    invoke-virtual {v0, p0, v3}, Lcom/applovin/impl/sdk/b/c;->a(Lcom/applovin/impl/sdk/b/b;Ljava/lang/Object;)V

    sget-object p0, Lcom/applovin/impl/sdk/b/b;->R:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, p0, v3}, Lcom/applovin/impl/sdk/b/c;->a(Lcom/applovin/impl/sdk/b/b;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/b/c;->a()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->t()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" is rejected by AppLovin. Please make sure the SDK key is correct."

    :goto_2c
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/applovin/impl/sdk/q;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_69

    :cond_37
    const/16 v3, 0x1a2

    if-ne p0, v3, :cond_5a

    sget-object p0, Lcom/applovin/impl/sdk/b/b;->P:Lcom/applovin/impl/sdk/b/b;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, p0, v3}, Lcom/applovin/impl/sdk/b/c;->a(Lcom/applovin/impl/sdk/b/b;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/b/c;->a()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->t()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" has been blocked. Please contact AppLovin support at support@applovin.com."

    goto :goto_2c

    :cond_5a
    const/16 v0, 0x190

    if-lt p0, v0, :cond_63

    const/16 v0, 0x1f4

    if-ge p0, v0, :cond_63

    goto :goto_66

    :cond_63
    const/4 v0, -0x1

    if-ne p0, v0, :cond_69

    :goto_66
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->g()V

    :cond_69
    :goto_69
    return-void
.end method

.method public static a(Lorg/json/JSONObject;ZLcom/applovin/impl/sdk/j;)V
    .registers 3

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/j;->ad()Lcom/applovin/impl/sdk/f;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lcom/applovin/impl/sdk/f;->a(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public static a()Z
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/h;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static a(I[I)Z
    .registers 6

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_e

    aget v3, p1, v2

    if-ne v3, p0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_e
    return v1
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 2

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-static {p0}, Lcom/applovin/impl/sdk/utils/h;->b(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_13

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0

    :cond_15
    const/4 p0, 0x1

    return p0
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 2

    invoke-static {}, Lcom/applovin/impl/sdk/utils/g;->e()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-static {}, Lcom/applovin/impl/sdk/utils/g;->f()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-static {}, Landroid/security/NetworkSecurityPolicy;->getInstance()Landroid/security/NetworkSecurityPolicy;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/security/NetworkSecurityPolicy;->isCleartextTrafficPermitted(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1b
    invoke-static {}, Landroid/security/NetworkSecurityPolicy;->getInstance()Landroid/security/NetworkSecurityPolicy;

    move-result-object p0

    invoke-virtual {p0}, Landroid/security/NetworkSecurityPolicy;->isCleartextTrafficPermitted()Z

    move-result p0

    return p0

    :cond_24
    const/4 p0, 0x1

    return p0
.end method

.method private static b(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .registers 2

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return-object p0
.end method

.method public static b(Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/applovin/impl/sdk/b/b;->aJ:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/applovin/impl/sdk/utils/h;->a(Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)V
    .registers 4

    const-string v0, "persisted_data"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/applovin/impl/sdk/b/d;->y:Lcom/applovin/impl/sdk/b/d;

    invoke-virtual {p1, v0, p0}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/d;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object p0

    const-string p1, "ConnectionUtils"

    const-string v0, "Updated persisted data"

    invoke-virtual {p0, p1, v0}, Lcom/applovin/impl/sdk/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1d
    return-void
.end method

.method public static d(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)V
    .registers 5

    const-string v0, "settings"

    if-eqz p0, :cond_36

    if-eqz p1, :cond_2e

    :try_start_6
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->E()Lcom/applovin/impl/sdk/b/c;

    move-result-object v1

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2d

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/applovin/impl/sdk/b/c;->a(Lorg/json/JSONObject;)V

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/b/c;->a()V
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_20} :catch_21

    goto :goto_2d

    :catch_21
    move-exception p0

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object p1

    const-string v0, "ConnectionUtils"

    const-string v1, "Unable to parse settings out of API response"

    invoke-virtual {p1, v0, v1, p0}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2d
    :goto_2d
    return-void

    :cond_2e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No sdk specified"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_36
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No response specified"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static e(Lcom/applovin/impl/sdk/j;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/impl/sdk/j;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/applovin/impl/sdk/b/b;->R:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    const-string v2, "device_token"

    :goto_15
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2e

    :cond_19
    sget-object v1, Lcom/applovin/impl/sdk/b/b;->eA:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2e

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/j;->t()Ljava/lang/String;

    move-result-object v1

    const-string v2, "api_key"

    goto :goto_15

    :cond_2e
    :goto_2e
    sget-object v1, Lcom/applovin/impl/sdk/b/b;->U:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/o;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sc"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/applovin/impl/sdk/b/b;->V:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/o;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sc2"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/applovin/impl/sdk/b/b;->W:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/o;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sc3"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/applovin/impl/sdk/b/b;->X:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/o;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "server_installed_at"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/applovin/impl/sdk/b/d;->y:Lcom/applovin/impl/sdk/b/d;

    invoke-virtual {p0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/d;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/applovin/impl/sdk/utils/o;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "persisted_data"

    invoke-static {v1, p0, v0}, Lcom/applovin/impl/sdk/utils/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method

.method public static e(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)V
    .registers 7

    const/4 v0, 0x0

    const-string v1, "filesystem_values"

    invoke-static {p0, v1, v0, p1}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_32

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->F()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :cond_19
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {p0, v3, v0, p1}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Lcom/applovin/impl/sdk/j;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_19

    invoke-static {v3, v4, v0, v1}, Lcom/applovin/impl/sdk/b/e;->a(Ljava/lang/String;Ljava/lang/Object;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V

    goto :goto_19

    :cond_2f
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_32
    return-void
.end method

.method public static f(Lcom/applovin/impl/sdk/j;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/j;->F()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/applovin/impl/sdk/utils/h;->b(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object p0

    const-string v0, "unknown"

    if-eqz p0, :cond_4a

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1a

    const-string v0, "wifi"

    goto :goto_4a

    :cond_1a
    if-nez v1, :cond_4a

    sget-object v0, Lcom/applovin/impl/sdk/utils/h;->a:[I

    invoke-static {p0, v0}, Lcom/applovin/impl/sdk/utils/h;->a(I[I)Z

    move-result v0

    if-eqz v0, :cond_27

    const-string v0, "2g"

    goto :goto_4a

    :cond_27
    sget-object v0, Lcom/applovin/impl/sdk/utils/h;->b:[I

    invoke-static {p0, v0}, Lcom/applovin/impl/sdk/utils/h;->a(I[I)Z

    move-result v0

    if-eqz v0, :cond_32

    const-string v0, "3g"

    goto :goto_4a

    :cond_32
    sget-object v0, Lcom/applovin/impl/sdk/utils/h;->c:[I

    invoke-static {p0, v0}, Lcom/applovin/impl/sdk/utils/h;->a(I[I)Z

    move-result v0

    if-eqz v0, :cond_3d

    const-string v0, "4g"

    goto :goto_4a

    :cond_3d
    sget-object v0, Lcom/applovin/impl/sdk/utils/h;->d:[I

    invoke-static {p0, v0}, Lcom/applovin/impl/sdk/utils/h;->a(I[I)Z

    move-result p0

    if-eqz p0, :cond_48

    const-string v0, "5g"

    goto :goto_4a

    :cond_48
    const-string v0, "mobile"

    :cond_4a
    :goto_4a
    return-object v0
.end method

.method public static f(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)V
    .registers 4

    const-string v0, "zones"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;Lcom/applovin/impl/sdk/j;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_16

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_16

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->X()Lcom/applovin/impl/sdk/ad/e;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/applovin/impl/sdk/ad/e;->a(Lorg/json/JSONArray;)V

    :cond_16
    return-void
.end method

.method public static g(Lcom/applovin/impl/sdk/j;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/applovin/impl/sdk/b/b;->aG:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "4.0/ad"

    invoke-static {v0, v1, p0}, Lcom/applovin/impl/sdk/utils/h;->a(Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static g(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)V
    .registers 4

    const-string v0, "zones"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;Lcom/applovin/impl/sdk/j;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_55

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->X()Lcom/applovin/impl/sdk/ad/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/applovin/impl/sdk/ad/e;->b(Lorg/json/JSONArray;)Ljava/util/LinkedHashSet;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/sdk/ad/d;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/d;->e()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->p()Lcom/applovin/impl/sdk/NativeAdServiceImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/applovin/impl/sdk/NativeAdServiceImpl;->preloadAds(Lcom/applovin/impl/sdk/ad/d;)V

    goto :goto_15

    :cond_2f
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->o()Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->preloadAds(Lcom/applovin/impl/sdk/ad/d;)V

    goto :goto_15

    :cond_37
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->U()Lcom/applovin/impl/sdk/c;

    move-result-object p0

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->X()Lcom/applovin/impl/sdk/ad/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/e;->a()Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/c;->a(Ljava/util/LinkedHashSet;)V

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->V()Lcom/applovin/impl/sdk/s;

    move-result-object p0

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->X()Lcom/applovin/impl/sdk/ad/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/e;->a()Ljava/util/LinkedHashSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/s;->a(Ljava/util/LinkedHashSet;)V

    :cond_55
    return-void
.end method

.method public static h(Lcom/applovin/impl/sdk/j;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/applovin/impl/sdk/b/b;->aH:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "4.0/ad"

    invoke-static {v0, v1, p0}, Lcom/applovin/impl/sdk/utils/h;->a(Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static h(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)V
    .registers 4

    const-string v0, "variables"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_10

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->s()Lcom/applovin/impl/sdk/VariableServiceImpl;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/applovin/impl/sdk/VariableServiceImpl;->updateVariables(Lorg/json/JSONObject;)V

    :cond_10
    return-void
.end method

.method public static i(Lcom/applovin/impl/sdk/j;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/applovin/impl/sdk/b/b;->aM:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "1.0/variable_config"

    invoke-static {v0, v1, p0}, Lcom/applovin/impl/sdk/utils/h;->a(Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static j(Lcom/applovin/impl/sdk/j;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/applovin/impl/sdk/b/b;->aN:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "1.0/variable_config"

    invoke-static {v0, v1, p0}, Lcom/applovin/impl/sdk/utils/h;->a(Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
