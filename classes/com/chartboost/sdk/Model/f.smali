.class public Lcom/chartboost/sdk/Model/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final j:Ljava/lang/String; = "f"

.field private static k:Ljava/lang/Integer;

.field private static l:Ljava/lang/String;

.field private static m:Ljava/lang/String;

.field private static n:Ljava/lang/String;

.field private static o:Ljava/lang/String;

.field private static p:I

.field private static q:I

.field private static r:I


# instance fields
.field private final a:Lorg/json/JSONObject;

.field private final b:Lorg/json/JSONObject;

.field private final c:Lorg/json/JSONArray;

.field private final d:Lorg/json/JSONObject;

.field private final e:Lorg/json/JSONObject;

.field private final f:Lorg/json/JSONObject;

.field private final g:Lcom/chartboost/sdk/Model/g;

.field private final h:Lcom/chartboost/sdk/Networking/a;

.field private final i:Lcom/chartboost/sdk/impl/u0;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    sget-object v0, Lcom/chartboost/sdk/j;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/g1;->b(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/Model/f;->k:Ljava/lang/Integer;

    .line 2
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v0, Lcom/chartboost/sdk/Model/f;->l:Ljava/lang/String;

    const-string v0, "Android"

    .line 3
    sput-object v0, Lcom/chartboost/sdk/Model/f;->m:Ljava/lang/String;

    const-string v0, "Chartboost-Android-SDK"

    .line 4
    sput-object v0, Lcom/chartboost/sdk/Model/f;->n:Ljava/lang/String;

    const-string v0, "USD"

    .line 5
    sput-object v0, Lcom/chartboost/sdk/Model/f;->o:Ljava/lang/String;

    const/4 v0, 0x1

    .line 6
    sput v0, Lcom/chartboost/sdk/Model/f;->p:I

    .line 7
    sput v0, Lcom/chartboost/sdk/Model/f;->q:I

    const/4 v0, 0x0

    .line 8
    sput v0, Lcom/chartboost/sdk/Model/f;->r:I

    return-void
.end method

.method public constructor <init>(Lcom/chartboost/sdk/Model/g;Lcom/chartboost/sdk/Networking/a;Lcom/chartboost/sdk/impl/u0;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/chartboost/sdk/Model/f;->g:Lcom/chartboost/sdk/Model/g;

    .line 4
    iput-object p2, p0, Lcom/chartboost/sdk/Model/f;->h:Lcom/chartboost/sdk/Networking/a;

    .line 6
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/chartboost/sdk/Model/f;->b:Lorg/json/JSONObject;

    .line 7
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    iput-object p1, p0, Lcom/chartboost/sdk/Model/f;->c:Lorg/json/JSONArray;

    .line 8
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/chartboost/sdk/Model/f;->d:Lorg/json/JSONObject;

    .line 9
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/chartboost/sdk/Model/f;->e:Lorg/json/JSONObject;

    .line 10
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/chartboost/sdk/Model/f;->f:Lorg/json/JSONObject;

    .line 11
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/chartboost/sdk/Model/f;->a:Lorg/json/JSONObject;

    .line 12
    iput-object p3, p0, Lcom/chartboost/sdk/Model/f;->i:Lcom/chartboost/sdk/impl/u0;

    .line 14
    invoke-direct {p0}, Lcom/chartboost/sdk/Model/f;->l()V

    .line 15
    invoke-direct {p0}, Lcom/chartboost/sdk/Model/f;->i()V

    .line 16
    invoke-direct {p0}, Lcom/chartboost/sdk/Model/f;->j()V

    .line 17
    invoke-direct {p0}, Lcom/chartboost/sdk/Model/f;->h()V

    .line 18
    invoke-direct {p0}, Lcom/chartboost/sdk/Model/f;->k()V

    .line 19
    invoke-direct {p0}, Lcom/chartboost/sdk/Model/f;->m()V

    return-void
.end method

.method private b()Lorg/json/JSONObject;
    .registers 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    const-string v2, "lat"

    invoke-static {v0, v2, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    const-string v2, "lon"

    invoke-static {v0, v2, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    iget-object v1, p0, Lcom/chartboost/sdk/Model/f;->g:Lcom/chartboost/sdk/Model/g;

    iget-object v1, v1, Lcom/chartboost/sdk/Model/g;->h:Ljava/lang/String;

    const-string v2, "country"

    invoke-static {v0, v2, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x2

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "type"

    invoke-static {v0, v2, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method private c()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/Model/f;->i:Lcom/chartboost/sdk/impl/u0;

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/u0;->a()I

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method private d()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/chartboost/sdk/Privacy/model/DataUseConsent;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/Model/f;->i:Lcom/chartboost/sdk/impl/u0;

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/u0;->d()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 4
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method private e()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/Model/f;->i:Lcom/chartboost/sdk/impl/u0;

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/u0;->b()I

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method private f()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/Model/f;->h:Lcom/chartboost/sdk/Networking/a;

    iget v0, v0, Lcom/chartboost/sdk/Networking/a;->a:I

    if-eqz v0, :cond_27

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1d

    const/4 v1, 0x2

    const-string v2, ""

    if-eq v0, v1, :cond_15

    const/4 v1, 0x3

    if-eq v0, v1, :cond_12

    return-object v2

    :cond_12
    const-string v0, "banner"

    return-object v0

    .line 8
    :cond_15
    sget-object v0, Lcom/chartboost/sdk/Model/f;->j:Ljava/lang/String;

    const-string v1, "IN_PLAY NOT COMPATIBLE WITH OPENRTB"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 11
    :cond_1d
    sget-object v0, Lcom/chartboost/sdk/Model/f;->j:Ljava/lang/String;

    const-string v1, "REWARDED_VIDEO NOT COMPATIBLE WITH OPENRTB"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "rewarded"

    return-object v0

    .line 12
    :cond_27
    sget-object v0, Lcom/chartboost/sdk/Model/f;->j:Ljava/lang/String;

    const-string v1, "INTERSTITIAL NOT COMPATIBLE WITH OPENRTB"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "interstitial"

    return-object v0
.end method

.method private g()Ljava/lang/Integer;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/Model/f;->h:Lcom/chartboost/sdk/Networking/a;

    iget v0, v0, Lcom/chartboost/sdk/Networking/a;->a:I

    if-eqz v0, :cond_10

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    .line 9
    sget v0, Lcom/chartboost/sdk/Model/f;->r:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 10
    :cond_10
    sget v0, Lcom/chartboost/sdk/Model/f;->q:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private h()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/Model/f;->d:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/chartboost/sdk/Model/f;->g:Lcom/chartboost/sdk/Model/g;

    iget-object v1, v1, Lcom/chartboost/sdk/Model/g;->s:Ljava/lang/String;

    const-string v2, "id"

    invoke-static {v0, v2, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/Model/f;->d:Lorg/json/JSONObject;

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    const-string v3, "name"

    invoke-static {v0, v3, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/chartboost/sdk/Model/f;->d:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/chartboost/sdk/Model/f;->g:Lcom/chartboost/sdk/Model/g;

    iget-object v1, v1, Lcom/chartboost/sdk/Model/g;->k:Ljava/lang/String;

    const-string v4, "bundle"

    invoke-static {v0, v4, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/chartboost/sdk/Model/f;->d:Lorg/json/JSONObject;

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    const-string v4, "storeurl"

    invoke-static {v0, v4, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-static {v0, v3, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    iget-object v1, p0, Lcom/chartboost/sdk/Model/f;->d:Lorg/json/JSONObject;

    const-string v2, "publisher"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    iget-object v0, p0, Lcom/chartboost/sdk/Model/f;->d:Lorg/json/JSONObject;

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    const-string v2, "cat"

    invoke-static {v0, v2, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lcom/chartboost/sdk/Model/f;->a:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/chartboost/sdk/Model/f;->d:Lorg/json/JSONObject;

    const-string v2, "app"

    invoke-static {v0, v2, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private i()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/Model/f;->g:Lcom/chartboost/sdk/Model/g;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/g;->a:Lcom/chartboost/sdk/Libraries/d;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/d;->a()Lcom/chartboost/sdk/Libraries/d$a;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/chartboost/sdk/Model/f;->b:Lorg/json/JSONObject;

    sget-object v2, Lcom/chartboost/sdk/Model/f;->k:Ljava/lang/Integer;

    const-string v3, "devicetype"

    invoke-static {v1, v3, v2}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    iget-object v1, p0, Lcom/chartboost/sdk/Model/f;->b:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/chartboost/sdk/Model/f;->g:Lcom/chartboost/sdk/Model/g;

    iget-object v2, v2, Lcom/chartboost/sdk/Model/g;->o:Ljava/lang/Integer;

    const-string v3, "w"

    invoke-static {v1, v3, v2}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    iget-object v1, p0, Lcom/chartboost/sdk/Model/f;->b:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/chartboost/sdk/Model/f;->g:Lcom/chartboost/sdk/Model/g;

    iget-object v2, v2, Lcom/chartboost/sdk/Model/g;->p:Ljava/lang/Integer;

    const-string v3, "h"

    invoke-static {v1, v3, v2}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    iget-object v1, p0, Lcom/chartboost/sdk/Model/f;->b:Lorg/json/JSONObject;

    iget-object v2, v0, Lcom/chartboost/sdk/Libraries/d$a;->c:Ljava/lang/String;

    const-string v3, "ifa"

    invoke-static {v1, v3, v2}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    iget-object v1, p0, Lcom/chartboost/sdk/Model/f;->b:Lorg/json/JSONObject;

    sget-object v2, Lcom/chartboost/sdk/Model/f;->l:Ljava/lang/String;

    const-string v3, "osv"

    invoke-static {v1, v3, v2}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    iget-object v1, p0, Lcom/chartboost/sdk/Model/f;->b:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/d$a;->a()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "lmt"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    iget-object v0, p0, Lcom/chartboost/sdk/Model/f;->b:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/chartboost/sdk/Model/f;->g:Lcom/chartboost/sdk/Model/g;

    iget-object v1, v1, Lcom/chartboost/sdk/Model/g;->b:Lcom/chartboost/sdk/Networking/h;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Networking/h;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "connectiontype"

    invoke-static {v0, v2, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    iget-object v0, p0, Lcom/chartboost/sdk/Model/f;->b:Lorg/json/JSONObject;

    sget-object v1, Lcom/chartboost/sdk/Model/f;->m:Ljava/lang/String;

    const-string v2, "os"

    invoke-static {v0, v2, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    iget-object v0, p0, Lcom/chartboost/sdk/Model/f;->b:Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/chartboost/sdk/Model/f;->b()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "geo"

    invoke-static {v0, v2, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lcom/chartboost/sdk/Model/f;->b:Lorg/json/JSONObject;

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    const-string v2, "ip"

    invoke-static {v0, v2, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    iget-object v0, p0, Lcom/chartboost/sdk/Model/f;->b:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/chartboost/sdk/Model/f;->g:Lcom/chartboost/sdk/Model/g;

    iget-object v1, v1, Lcom/chartboost/sdk/Model/g;->i:Ljava/lang/String;

    const-string v2, "language"

    invoke-static {v0, v2, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    iget-object v0, p0, Lcom/chartboost/sdk/Model/f;->b:Lorg/json/JSONObject;

    sget-object v1, Lcom/chartboost/sdk/j;->r:Ljava/lang/String;

    const-string v2, "ua"

    invoke-static {v0, v2, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    iget-object v0, p0, Lcom/chartboost/sdk/Model/f;->b:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/chartboost/sdk/Model/f;->g:Lcom/chartboost/sdk/Model/g;

    iget-object v1, v1, Lcom/chartboost/sdk/Model/g;->f:Ljava/lang/String;

    const-string v2, "model"

    invoke-static {v0, v2, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 15
    iget-object v0, p0, Lcom/chartboost/sdk/Model/f;->b:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/chartboost/sdk/Model/f;->g:Lcom/chartboost/sdk/Model/g;

    iget-object v1, v1, Lcom/chartboost/sdk/Model/g;->w:Ljava/lang/String;

    const-string v2, "carrier"

    invoke-static {v0, v2, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 17
    iget-object v0, p0, Lcom/chartboost/sdk/Model/f;->a:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/chartboost/sdk/Model/f;->b:Lorg/json/JSONObject;

    const-string v2, "device"

    invoke-static {v0, v2, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private j()V
    .registers 6

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    const-string v2, "id"

    invoke-static {v0, v2, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 4
    iget-object v2, p0, Lcom/chartboost/sdk/Model/f;->h:Lcom/chartboost/sdk/Networking/a;

    iget-object v2, v2, Lcom/chartboost/sdk/Networking/a;->c:Ljava/lang/Integer;

    const-string v3, "w"

    invoke-static {v1, v3, v2}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    iget-object v2, p0, Lcom/chartboost/sdk/Model/f;->h:Lcom/chartboost/sdk/Networking/a;

    iget-object v2, v2, Lcom/chartboost/sdk/Networking/a;->b:Ljava/lang/Integer;

    const-string v3, "h"

    invoke-static {v1, v3, v2}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    const-string v3, "btype"

    invoke-static {v1, v3, v2}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    const-string v3, "battr"

    invoke-static {v1, v3, v2}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    const-string v3, "pos"

    invoke-static {v1, v3, v2}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    const-string v3, "topframe"

    invoke-static {v1, v3, v2}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    const-string v3, "api"

    invoke-static {v1, v3, v2}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 12
    invoke-direct {p0}, Lcom/chartboost/sdk/Model/f;->f()Ljava/lang/String;

    move-result-object v3

    const-string v4, "placementtype"

    invoke-static {v2, v4, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    sget-object v3, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    const-string v4, "playableonly"

    invoke-static {v2, v4, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    sget-object v3, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    const-string v4, "allowscustomclosebutton"

    invoke-static {v2, v4, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "ext"

    .line 15
    invoke-static {v1, v3, v2}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "banner"

    .line 17
    invoke-static {v0, v2, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 18
    invoke-direct {p0}, Lcom/chartboost/sdk/Model/f;->g()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "instl"

    invoke-static {v0, v2, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 19
    iget-object v1, p0, Lcom/chartboost/sdk/Model/f;->h:Lcom/chartboost/sdk/Networking/a;

    iget-object v1, v1, Lcom/chartboost/sdk/Networking/a;->d:Ljava/lang/String;

    const-string v2, "tagid"

    invoke-static {v0, v2, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    sget-object v1, Lcom/chartboost/sdk/Model/f;->n:Ljava/lang/String;

    const-string v2, "displaymanager"

    invoke-static {v0, v2, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    iget-object v1, p0, Lcom/chartboost/sdk/Model/f;->g:Lcom/chartboost/sdk/Model/g;

    iget-object v1, v1, Lcom/chartboost/sdk/Model/g;->l:Ljava/lang/String;

    const-string v2, "displaymanagerver"

    invoke-static {v0, v2, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 22
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    const-string v2, "bidfloor"

    invoke-static {v0, v2, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 23
    sget-object v1, Lcom/chartboost/sdk/Model/f;->o:Ljava/lang/String;

    const-string v2, "bidfloorcur"

    invoke-static {v0, v2, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    sget v1, Lcom/chartboost/sdk/Model/f;->p:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "secure"

    invoke-static {v0, v2, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 26
    iget-object v1, p0, Lcom/chartboost/sdk/Model/f;->c:Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 28
    iget-object v0, p0, Lcom/chartboost/sdk/Model/f;->a:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/chartboost/sdk/Model/f;->c:Lorg/json/JSONArray;

    const-string v2, "imp"

    invoke-static {v0, v2, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private k()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/Model/f;->e:Lorg/json/JSONObject;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "coppa"

    invoke-static {v0, v2, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3
    invoke-direct {p0}, Lcom/chartboost/sdk/Model/f;->e()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "gdpr"

    invoke-static {v0, v2, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    invoke-direct {p0}, Lcom/chartboost/sdk/Model/f;->d()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chartboost/sdk/Privacy/model/DataUseConsent;

    .line 5
    invoke-interface {v2}, Lcom/chartboost/sdk/Privacy/model/DataUseConsent;->getPrivacyStandard()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Lcom/chartboost/sdk/Privacy/model/DataUseConsent;->getConsent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v3, v2}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_26

    .line 7
    :cond_3e
    iget-object v1, p0, Lcom/chartboost/sdk/Model/f;->e:Lorg/json/JSONObject;

    const-string v2, "ext"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    iget-object v0, p0, Lcom/chartboost/sdk/Model/f;->a:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/chartboost/sdk/Model/f;->e:Lorg/json/JSONObject;

    const-string v2, "regs"

    invoke-static {v0, v2, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private l()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/Model/f;->a:Lorg/json/JSONObject;

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    const-string v2, "id"

    invoke-static {v0, v2, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/Model/f;->a:Lorg/json/JSONObject;

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    const-string v2, "test"

    invoke-static {v0, v2, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/chartboost/sdk/Model/f;->a:Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const-string v2, "USD"

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "cur"

    invoke-static {v0, v2, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/chartboost/sdk/Model/f;->a:Lorg/json/JSONObject;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "at"

    invoke-static {v0, v2, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private m()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/Model/f;->f:Lorg/json/JSONObject;

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    const-string v2, "id"

    invoke-static {v0, v2, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/Model/f;->f:Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/chartboost/sdk/Model/f;->b()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "geo"

    invoke-static {v0, v2, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    invoke-direct {p0}, Lcom/chartboost/sdk/Model/f;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "consent"

    invoke-static {v0, v2, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    iget-object v1, p0, Lcom/chartboost/sdk/Model/f;->f:Lorg/json/JSONObject;

    const-string v2, "ext"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lcom/chartboost/sdk/Model/f;->a:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/chartboost/sdk/Model/f;->f:Lorg/json/JSONObject;

    const-string v2, "user"

    invoke-static {v0, v2, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/Model/f;->a:Lorg/json/JSONObject;

    return-object v0
.end method
