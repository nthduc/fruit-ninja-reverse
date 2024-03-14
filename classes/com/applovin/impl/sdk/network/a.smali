.class public Lcom/applovin/impl/sdk/network/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/sdk/network/a$b;,
        Lcom/applovin/impl/sdk/network/a$a;,
        Lcom/applovin/impl/sdk/network/a$c;
    }
.end annotation


# instance fields
.field private final a:Lcom/applovin/impl/sdk/j;

.field private final b:Lcom/applovin/impl/sdk/q;

.field private c:Lcom/applovin/impl/sdk/network/a$b;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/j;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/network/a;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/sdk/network/a;->b:Lcom/applovin/impl/sdk/q;

    return-void
.end method

.method private a(Ljava/lang/Throwable;)I
    .registers 3

    instance-of v0, p1, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_7

    const/16 p1, -0x67

    return p1

    :cond_7
    instance-of v0, p1, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_e

    const/16 p1, -0x66

    return p1

    :cond_e
    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_15

    const/16 p1, -0x64

    return p1

    :cond_15
    instance-of p1, p1, Lorg/json/JSONException;

    if-eqz p1, :cond_1c

    const/16 p1, -0x68

    return p1

    :cond_1c
    const/4 p1, -0x1

    return p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lorg/xml/sax/SAXException;,
            Ljava/lang/ClassCastException;
        }
    .end annotation

    if-nez p2, :cond_3

    return-object p1

    :cond_3
    if-eqz p1, :cond_4c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_d

    goto :goto_4c

    :cond_d
    instance-of v0, p2, Lorg/json/JSONObject;

    if-eqz v0, :cond_17

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object p2

    :cond_17
    instance-of v0, p2, Lcom/applovin/impl/sdk/utils/t;

    if-eqz v0, :cond_22

    iget-object p2, p0, Lcom/applovin/impl/sdk/network/a;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {p1, p2}, Lcom/applovin/impl/sdk/utils/u;->a(Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Lcom/applovin/impl/sdk/utils/t;

    move-result-object p1

    return-object p1

    :cond_22
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_27

    return-object p1

    :cond_27
    iget-object p1, p0, Lcom/applovin/impl/sdk/network/a;->b:Lcom/applovin/impl/sdk/q;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to process response of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConnectionManager"

    invoke-virtual {p1, v1, v0}, Lcom/applovin/impl/sdk/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4c
    :goto_4c
    return-object p2
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)Ljava/net/HttpURLConnection;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    if-gez p4, :cond_1f

    iget-object p2, p0, Lcom/applovin/impl/sdk/network/a;->a:Lcom/applovin/impl/sdk/j;

    sget-object v0, Lcom/applovin/impl/sdk/b/b;->dj:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p2, v0}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_20

    :cond_1f
    move p2, p4

    :goto_20
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    if-gez p4, :cond_33

    iget-object p2, p0, Lcom/applovin/impl/sdk/network/a;->a:Lcom/applovin/impl/sdk/j;

    sget-object p4, Lcom/applovin/impl/sdk/b/b;->dk:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p2, p4}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p4

    :cond_33
    invoke-virtual {p1, p4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    if-eqz p3, :cond_73

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result p2

    if-lez p2, :cond_73

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_57
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_73

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, p4, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_57

    :cond_73
    return-object p1
.end method

.method private a(ILjava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/a;->a:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/b;->Y:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_37

    :try_start_10
    iget-object v0, p0, Lcom/applovin/impl/sdk/network/a;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->F()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/applovin/impl/sdk/network/d;->a(ILjava/lang/String;Landroid/content/Context;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_19} :catch_1a

    goto :goto_37

    :catch_1a
    move-exception p1

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/a;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to track response code for URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "ConnectionManager"

    invoke-virtual {v0, v1, p2, p1}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_37
    :goto_37
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/a;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/h;->g(Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/utils/o;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_44

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/a;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/h;->h(Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/utils/o;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_44

    :cond_19
    iget-object v0, p0, Lcom/applovin/impl/sdk/network/a;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {v0}, Lcom/applovin/impl/mediation/c/b;->a(Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/utils/o;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3b

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/a;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {v0}, Lcom/applovin/impl/mediation/c/b;->b(Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/utils/o;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_32

    goto :goto_3b

    :cond_32
    iget-object p1, p0, Lcom/applovin/impl/sdk/network/a;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->N()Lcom/applovin/impl/sdk/c/h;

    move-result-object p1

    sget-object v0, Lcom/applovin/impl/sdk/c/g;->i:Lcom/applovin/impl/sdk/c/g;

    goto :goto_4c

    :cond_3b
    :goto_3b
    iget-object p1, p0, Lcom/applovin/impl/sdk/network/a;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->N()Lcom/applovin/impl/sdk/c/h;

    move-result-object p1

    sget-object v0, Lcom/applovin/impl/sdk/c/g;->o:Lcom/applovin/impl/sdk/c/g;

    goto :goto_4c

    :cond_44
    :goto_44
    iget-object p1, p0, Lcom/applovin/impl/sdk/network/a;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->N()Lcom/applovin/impl/sdk/c/h;

    move-result-object p1

    sget-object v0, Lcom/applovin/impl/sdk/c/g;->h:Lcom/applovin/impl/sdk/c/g;

    :goto_4c
    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/c/h;->a(Lcom/applovin/impl/sdk/c/g;)J

    return-void
.end method

.method private a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Object;ZLcom/applovin/impl/sdk/network/a$c;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "TT;Z",
            "Lcom/applovin/impl/sdk/network/a$c<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/a;->b:Lcom/applovin/impl/sdk/q;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " received from \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ConnectionManager"

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/a;->b:Lcom/applovin/impl/sdk/q;

    invoke-virtual {v0, v2, p1}, Lcom/applovin/impl/sdk/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\""

    const/16 v1, 0xc8

    if-lt p2, v1, :cond_b7

    const/16 v1, 0x12c

    if-ge p2, v1, :cond_b7

    if-eqz p5, :cond_36

    iget-object p5, p0, Lcom/applovin/impl/sdk/network/a;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p5}, Lcom/applovin/impl/sdk/j;->t()Ljava/lang/String;

    move-result-object p5

    invoke-static {p1, p5}, Lcom/applovin/impl/sdk/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_36
    if-eqz p1, :cond_41

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p5

    const/4 v1, 0x2

    if-le p5, v1, :cond_41

    const/4 p5, 0x1

    goto :goto_42

    :cond_41
    const/4 p5, 0x0

    :goto_42
    const/16 v1, 0xcc

    if-eq p2, v1, :cond_b3

    if-eqz p5, :cond_b3

    :try_start_48
    instance-of p5, p4, Ljava/lang/String;

    if-eqz p5, :cond_4e

    :goto_4c
    move-object p4, p1

    goto :goto_b3

    :cond_4e
    instance-of p5, p4, Lcom/applovin/impl/sdk/utils/t;

    if-eqz p5, :cond_59

    iget-object p5, p0, Lcom/applovin/impl/sdk/network/a;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {p1, p5}, Lcom/applovin/impl/sdk/utils/u;->a(Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Lcom/applovin/impl/sdk/utils/t;

    move-result-object p1

    goto :goto_4c

    :cond_59
    instance-of p5, p4, Lorg/json/JSONObject;

    if-eqz p5, :cond_64

    new-instance p5, Lorg/json/JSONObject;

    invoke-direct {p5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object p4, p5

    goto :goto_b3

    :cond_64
    iget-object p1, p0, Lcom/applovin/impl/sdk/network/a;->b:Lcom/applovin/impl/sdk/q;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to handle \'"

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, v2, p5}, Lcom/applovin/impl/sdk/q;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_87
    .catch Lorg/json/JSONException; {:try_start_48 .. :try_end_87} :catch_96
    .catch Lorg/xml/sax/SAXException; {:try_start_48 .. :try_end_87} :catch_88

    goto :goto_b3

    :catch_88
    move-exception p1

    invoke-direct {p0, p3}, Lcom/applovin/impl/sdk/network/a;->a(Ljava/lang/String;)V

    iget-object p5, p0, Lcom/applovin/impl/sdk/network/a;->b:Lcom/applovin/impl/sdk/q;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid XML returned from \""

    goto :goto_a3

    :catch_96
    move-exception p1

    invoke-direct {p0, p3}, Lcom/applovin/impl/sdk/network/a;->a(Ljava/lang/String;)V

    iget-object p5, p0, Lcom/applovin/impl/sdk/network/a;->b:Lcom/applovin/impl/sdk/q;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid JSON returned from \""

    :goto_a3
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, v2, p3, p1}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_b3
    :goto_b3
    invoke-interface {p6, p4, p2}, Lcom/applovin/impl/sdk/network/a$c;->a(Ljava/lang/Object;I)V

    goto :goto_d6

    :cond_b7
    iget-object p1, p0, Lcom/applovin/impl/sdk/network/a;->b:Lcom/applovin/impl/sdk/q;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, " error received from \""

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, v2, p3}, Lcom/applovin/impl/sdk/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p6, p2}, Lcom/applovin/impl/sdk/network/a$c;->a(I)V

    :goto_d6
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;IJ)V
    .registers 10

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/a;->b:Lcom/applovin/impl/sdk/q;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Successful "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " returned "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p4

    long-to-float p1, v2

    const/high16 p3, 0x447a0000    # 1000.0f

    div-float/2addr p1, p3

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " s over "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/applovin/impl/sdk/network/a;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/h;->f(Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to \""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ConnectionManager"

    invoke-virtual {v0, p2, p1}, Lcom/applovin/impl/sdk/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/Throwable;)V
    .registers 11

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/a;->b:Lcom/applovin/impl/sdk/q;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " returned "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p4

    long-to-float p1, v2

    const/high16 p3, 0x447a0000    # 1000.0f

    div-float/2addr p1, p3

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " s over "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/applovin/impl/sdk/network/a;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/h;->f(Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to \""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ConnectionManager"

    invoke-virtual {v0, p2, p1, p6}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/applovin/impl/sdk/network/a$b;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/a;->c:Lcom/applovin/impl/sdk/network/a$b;

    return-object v0
.end method

.method public a(Lcom/applovin/impl/sdk/network/b;Lcom/applovin/impl/sdk/network/a$a;Lcom/applovin/impl/sdk/network/a$c;)V
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/applovin/impl/sdk/network/b<",
            "TT;>;",
            "Lcom/applovin/impl/sdk/network/a$a;",
            "Lcom/applovin/impl/sdk/network/a$c<",
            "TT;>;)V"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v0, p2

    move-object/from16 v9, p3

    if-eqz p1, :cond_44b

    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/b;->b()Ljava/lang/String;

    move-result-object v10

    if-eqz v1, :cond_443

    if-eqz v10, :cond_43b

    if-eqz v9, :cond_433

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v7, "ConnectionManager"

    if-nez v2, :cond_43

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested postback submission to non HTTP endpoint "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; skipping..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/applovin/impl/sdk/q;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0x384

    invoke-interface {v9, v0}, Lcom/applovin/impl/sdk/network/a$c;->a(I)V

    return-void

    :cond_43
    iget-object v2, v8, Lcom/applovin/impl/sdk/network/a;->a:Lcom/applovin/impl/sdk/j;

    sget-object v3, Lcom/applovin/impl/sdk/b/b;->dl:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6c

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6c

    iget-object v3, v8, Lcom/applovin/impl/sdk/network/a;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object v3

    const-string v4, "Plaintext HTTP operation requested; upgrading to HTTPS due to universal SSL setting..."

    invoke-virtual {v3, v7, v4}, Lcom/applovin/impl/sdk/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "http://"

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :cond_6c
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/b;->o()Z

    move-result v11

    iget-object v2, v8, Lcom/applovin/impl/sdk/network/a;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/r;->a(Lcom/applovin/impl/sdk/j;)J

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/b;->c()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_86

    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/b;->c()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8c

    :cond_86
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/b;->j()I

    move-result v4

    if-ltz v4, :cond_c0

    :cond_8c
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/b;->c()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_a5

    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/b;->j()I

    move-result v5

    if-ltz v5, :cond_a5

    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/b;->j()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "current_retry_attempt"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a5
    if-eqz v11, :cond_bc

    invoke-static {v4}, Lcom/applovin/impl/sdk/utils/r;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v8, Lcom/applovin/impl/sdk/network/a;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v5}, Lcom/applovin/impl/sdk/j;->t()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2, v3}, Lcom/applovin/impl/sdk/utils/m;->a(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    const-string v5, "p"

    invoke-static {v1, v5, v4}, Lcom/applovin/impl/sdk/utils/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_c0

    :cond_bc
    invoke-static {v1, v4}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    :cond_c0
    :goto_c0
    move-object v12, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    :try_start_c5
    iget-object v4, v8, Lcom/applovin/impl/sdk/network/a;->b:Lcom/applovin/impl/sdk/q;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sending "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " request to \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\"..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Lcom/applovin/impl/sdk/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/b;->d()Ljava/util/Map;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/b;->k()I

    move-result v5

    invoke-direct {v8, v12, v10, v4, v5}, Lcom/applovin/impl/sdk/network/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)Ljava/net/HttpURLConnection;

    move-result-object v5
    :try_end_f4
    .catch Ljava/lang/Throwable; {:try_start_c5 .. :try_end_f4} :catch_3fd
    .catchall {:try_start_c5 .. :try_end_f4} :catchall_3f9

    :try_start_f4
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/b;->e()Lorg/json/JSONObject;

    move-result-object v4
    :try_end_f8
    .catch Ljava/lang/Throwable; {:try_start_f4 .. :try_end_f8} :catch_3f1
    .catchall {:try_start_f4 .. :try_end_f8} :catchall_3ee

    if-eqz v4, :cond_16f

    if-eqz v11, :cond_10f

    :try_start_fc
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/b;->e()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v6, v8, Lcom/applovin/impl/sdk/network/a;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v6}, Lcom/applovin/impl/sdk/j;->t()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v2, v3}, Lcom/applovin/impl/sdk/utils/m;->a(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    goto :goto_117

    :cond_10f
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/b;->e()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_117
    iget-object v3, v8, Lcom/applovin/impl/sdk/network/a;->b:Lcom/applovin/impl/sdk/q;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Request to \""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\" is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v7, v4}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Content-Type"

    const-string v4, "application/json; charset=utf-8"

    invoke-virtual {v5, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v5, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v3, "UTF-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v5, v3}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    new-instance v3, Ljava/io/PrintWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    const-string v1, "UTF8"

    invoke-direct {v4, v6, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V
    :try_end_164
    .catch Ljava/lang/Throwable; {:try_start_fc .. :try_end_164} :catch_168
    .catchall {:try_start_fc .. :try_end_164} :catchall_165

    goto :goto_16f

    :catchall_165
    move-exception v0

    goto/16 :goto_3fb

    :catch_168
    move-exception v0

    move-object v7, v0

    move-object v11, v5

    move-object/from16 v24, v10

    goto/16 :goto_3f7

    :cond_16f
    :goto_16f
    :try_start_16f
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6
    :try_end_173
    .catch Ljava/net/MalformedURLException; {:try_start_16f .. :try_end_173} :catch_382
    .catch Ljava/lang/Throwable; {:try_start_16f .. :try_end_173} :catch_378
    .catchall {:try_start_16f .. :try_end_173} :catchall_373

    if-lez v6, :cond_34a

    :try_start_175
    iget-object v1, v8, Lcom/applovin/impl/sdk/network/a;->a:Lcom/applovin/impl/sdk/j;

    sget-object v2, Lcom/applovin/impl/sdk/b/b;->eH:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_183
    .catch Ljava/net/MalformedURLException; {:try_start_175 .. :try_end_183} :catch_343
    .catch Ljava/lang/Throwable; {:try_start_175 .. :try_end_183} :catch_33c
    .catchall {:try_start_175 .. :try_end_183} :catchall_373

    if-eqz v1, :cond_19e

    move-object/from16 v1, p0

    move-object v2, v10

    move-object v3, v12

    move v4, v6

    move-object/from16 v17, v5

    move v15, v6

    move-wide v5, v13

    :try_start_18e
    invoke-direct/range {v1 .. v6}, Lcom/applovin/impl/sdk/network/a;->a(Ljava/lang/String;Ljava/lang/String;IJ)V
    :try_end_191
    .catch Ljava/net/MalformedURLException; {:try_start_18e .. :try_end_191} :catch_198
    .catch Ljava/lang/Throwable; {:try_start_18e .. :try_end_191} :catch_192
    .catchall {:try_start_18e .. :try_end_191} :catchall_363

    goto :goto_1a1

    :catch_192
    move-exception v0

    move-object v7, v0

    move-object/from16 v24, v10

    goto/16 :goto_36a

    :catch_198
    move-exception v0

    move-object v7, v0

    move-object/from16 v24, v10

    goto/16 :goto_371

    :cond_19e
    move-object/from16 v17, v5

    move v15, v6

    :goto_1a1
    :try_start_1a1
    invoke-virtual/range {v17 .. v17}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6
    :try_end_1a5
    .catch Ljava/net/MalformedURLException; {:try_start_1a1 .. :try_end_1a5} :catch_33a
    .catch Ljava/lang/Throwable; {:try_start_1a1 .. :try_end_1a5} :catch_338
    .catchall {:try_start_1a1 .. :try_end_1a5} :catchall_363

    :try_start_1a5
    invoke-direct {v8, v15, v12}, Lcom/applovin/impl/sdk/network/a;->a(ILjava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v4, v1, v13

    iget-object v1, v8, Lcom/applovin/impl/sdk/network/a;->a:Lcom/applovin/impl/sdk/j;

    sget-object v2, Lcom/applovin/impl/sdk/b/b;->eH:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_1bc
    .catch Ljava/net/MalformedURLException; {:try_start_1a5 .. :try_end_1bc} :catch_331
    .catch Ljava/lang/Throwable; {:try_start_1a5 .. :try_end_1bc} :catch_32b
    .catchall {:try_start_1a5 .. :try_end_1bc} :catchall_327

    if-eqz v1, :cond_267

    :try_start_1be
    iget-object v1, v8, Lcom/applovin/impl/sdk/network/a;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {v6, v1}, Lcom/applovin/impl/sdk/utils/h;->a(Ljava/io/InputStream;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/b;->h()Z

    move-result v1
    :try_end_1c8
    .catch Ljava/net/MalformedURLException; {:try_start_1be .. :try_end_1c8} :catch_25f
    .catch Ljava/lang/Throwable; {:try_start_1be .. :try_end_1c8} :catch_257
    .catchall {:try_start_1be .. :try_end_1c8} :catchall_252

    if-eqz v1, :cond_23f

    if-eqz v0, :cond_21c

    if-eqz v2, :cond_201

    :try_start_1ce
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_1d2
    .catch Ljava/net/MalformedURLException; {:try_start_1ce .. :try_end_1d2} :catch_1fd
    .catch Ljava/lang/Throwable; {:try_start_1ce .. :try_end_1d2} :catch_1f9
    .catchall {:try_start_1ce .. :try_end_1d2} :catchall_1f5

    move-object/from16 v16, v6

    int-to-long v6, v1

    :try_start_1d5
    invoke-static {v0, v6, v7}, Lcom/applovin/impl/sdk/network/a$a;->a(Lcom/applovin/impl/sdk/network/a$a;J)V

    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/b;->p()Z

    move-result v1

    if-eqz v1, :cond_203

    new-instance v1, Lcom/applovin/impl/sdk/network/a$b;

    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/b;->a()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    int-to-long v6, v3

    move-object/from16 v18, v1

    move-wide/from16 v20, v6

    move-wide/from16 v22, v4

    invoke-direct/range {v18 .. v23}, Lcom/applovin/impl/sdk/network/a$b;-><init>(Ljava/lang/String;JJ)V

    iput-object v1, v8, Lcom/applovin/impl/sdk/network/a;->c:Lcom/applovin/impl/sdk/network/a$b;

    goto :goto_203

    :catchall_1f5
    move-exception v0

    move-object/from16 v16, v6

    goto :goto_208

    :catch_1f9
    move-exception v0

    move-object/from16 v16, v6

    goto :goto_20d

    :catch_1fd
    move-exception v0

    move-object/from16 v16, v6

    goto :goto_215

    :cond_201
    move-object/from16 v16, v6

    :cond_203
    :goto_203
    invoke-static {v0, v4, v5}, Lcom/applovin/impl/sdk/network/a$a;->b(Lcom/applovin/impl/sdk/network/a$a;J)V
    :try_end_206
    .catch Ljava/net/MalformedURLException; {:try_start_1d5 .. :try_end_206} :catch_214
    .catch Ljava/lang/Throwable; {:try_start_1d5 .. :try_end_206} :catch_20c
    .catchall {:try_start_1d5 .. :try_end_206} :catchall_207

    goto :goto_21e

    :catchall_207
    move-exception v0

    :goto_208
    move-object/from16 v10, v16

    goto/16 :goto_3a7

    :catch_20c
    move-exception v0

    :goto_20d
    move-object v7, v0

    move-object/from16 v24, v10

    move-object/from16 v10, v16

    goto/16 :goto_3ad

    :catch_214
    move-exception v0

    :goto_215
    move-object v7, v0

    move-object/from16 v24, v10

    move-object/from16 v10, v16

    goto/16 :goto_38a

    :cond_21c
    move-object/from16 v16, v6

    :goto_21e
    :try_start_21e
    invoke-virtual/range {v17 .. v17}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/b;->g()Ljava/lang/Object;

    move-result-object v5
    :try_end_226
    .catch Ljava/net/MalformedURLException; {:try_start_21e .. :try_end_226} :catch_23b
    .catch Ljava/lang/Throwable; {:try_start_21e .. :try_end_226} :catch_237
    .catchall {:try_start_21e .. :try_end_226} :catchall_233

    move-object/from16 v1, p0

    move-object v4, v12

    move-object/from16 v7, v16

    move v6, v11

    move-object v11, v7

    move-object/from16 v7, p3

    :try_start_22f
    invoke-direct/range {v1 .. v7}, Lcom/applovin/impl/sdk/network/a;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Object;ZLcom/applovin/impl/sdk/network/a$c;)V

    goto :goto_24f

    :catchall_233
    move-exception v0

    move-object/from16 v11, v16

    goto :goto_254

    :catch_237
    move-exception v0

    move-object/from16 v11, v16

    goto :goto_259

    :catch_23b
    move-exception v0

    move-object/from16 v11, v16

    goto :goto_261

    :cond_23f
    move-object v11, v6

    if-eqz v0, :cond_24c

    invoke-static {v0, v4, v5}, Lcom/applovin/impl/sdk/network/a$a;->b(Lcom/applovin/impl/sdk/network/a$a;J)V

    goto :goto_24c

    :catchall_246
    move-exception v0

    goto :goto_254

    :catch_248
    move-exception v0

    goto :goto_259

    :catch_24a
    move-exception v0

    goto :goto_261

    :cond_24c
    :goto_24c
    invoke-interface {v9, v2, v15}, Lcom/applovin/impl/sdk/network/a$c;->a(Ljava/lang/Object;I)V
    :try_end_24f
    .catch Ljava/net/MalformedURLException; {:try_start_22f .. :try_end_24f} :catch_24a
    .catch Ljava/lang/Throwable; {:try_start_22f .. :try_end_24f} :catch_248
    .catchall {:try_start_22f .. :try_end_24f} :catchall_246

    :goto_24f
    move-object v10, v11

    goto/16 :goto_322

    :catchall_252
    move-exception v0

    move-object v11, v6

    :goto_254
    move-object v10, v11

    goto/16 :goto_3a7

    :catch_257
    move-exception v0

    move-object v11, v6

    :goto_259
    move-object v7, v0

    move-object/from16 v24, v10

    move-object v10, v11

    goto/16 :goto_3ad

    :catch_25f
    move-exception v0

    move-object v11, v6

    :goto_261
    move-object v7, v0

    move-object/from16 v24, v10

    move-object v10, v11

    goto/16 :goto_38a

    :cond_267
    const/16 v1, 0xc8

    if-lt v15, v1, :cond_311

    const/16 v1, 0x190

    if-ge v15, v1, :cond_311

    if-eqz v0, :cond_285

    :try_start_271
    invoke-static {v0, v4, v5}, Lcom/applovin/impl/sdk/network/a$a;->b(Lcom/applovin/impl/sdk/network/a$a;J)V
    :try_end_274
    .catch Ljava/net/MalformedURLException; {:try_start_271 .. :try_end_274} :catch_27e
    .catch Ljava/lang/Throwable; {:try_start_271 .. :try_end_274} :catch_275
    .catchall {:try_start_271 .. :try_end_274} :catchall_327

    goto :goto_285

    :catch_275
    move-exception v0

    move-object v7, v0

    move-object/from16 v24, v10

    move-object/from16 v11, v17

    move-object v10, v6

    goto/16 :goto_404

    :catch_27e
    move-exception v0

    move-object v7, v0

    move-object/from16 v24, v10

    move-object v10, v6

    goto/16 :goto_38a

    :cond_285
    :goto_285
    move-object/from16 v1, p0

    move-object v2, v10

    move-object v3, v12

    move-wide/from16 v22, v4

    move v4, v15

    move-object/from16 v24, v10

    move-object v10, v6

    move-wide v5, v13

    :try_start_290
    invoke-direct/range {v1 .. v6}, Lcom/applovin/impl/sdk/network/a;->a(Ljava/lang/String;Ljava/lang/String;IJ)V

    iget-object v1, v8, Lcom/applovin/impl/sdk/network/a;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {v10, v1}, Lcom/applovin/impl/sdk/utils/h;->a(Ljava/io/InputStream;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_309

    iget-object v2, v8, Lcom/applovin/impl/sdk/network/a;->b:Lcom/applovin/impl/sdk/q;

    invoke-virtual {v2, v7, v1}, Lcom/applovin/impl/sdk/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2aa

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Lcom/applovin/impl/sdk/network/a$a;->a(Lcom/applovin/impl/sdk/network/a$a;J)V

    :cond_2aa
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/b;->p()Z

    move-result v0

    if-eqz v0, :cond_2c4

    new-instance v0, Lcom/applovin/impl/sdk/network/a$b;

    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/b;->a()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    int-to-long v2, v2

    move-object/from16 v18, v0

    move-wide/from16 v20, v2

    invoke-direct/range {v18 .. v23}, Lcom/applovin/impl/sdk/network/a$b;-><init>(Ljava/lang/String;JJ)V

    iput-object v0, v8, Lcom/applovin/impl/sdk/network/a;->c:Lcom/applovin/impl/sdk/network/a$b;

    :cond_2c4
    if-eqz v11, :cond_2d0

    iget-object v0, v8, Lcom/applovin/impl/sdk/network/a;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->t()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/applovin/impl/sdk/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_2d0
    .catch Ljava/net/MalformedURLException; {:try_start_290 .. :try_end_2d0} :catch_325
    .catch Ljava/lang/Throwable; {:try_start_290 .. :try_end_2d0} :catch_3ab
    .catchall {:try_start_290 .. :try_end_2d0} :catchall_3a6

    :cond_2d0
    :try_start_2d0
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/b;->g()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v8, v1, v0}, Lcom/applovin/impl/sdk/network/a;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v9, v0, v15}, Lcom/applovin/impl/sdk/network/a$c;->a(Ljava/lang/Object;I)V
    :try_end_2db
    .catch Ljava/lang/Throwable; {:try_start_2d0 .. :try_end_2db} :catch_2dc
    .catch Ljava/net/MalformedURLException; {:try_start_2d0 .. :try_end_2db} :catch_325
    .catchall {:try_start_2d0 .. :try_end_2db} :catchall_3a6

    goto :goto_322

    :catch_2dc
    move-exception v0

    :try_start_2dd
    iget-object v1, v8, Lcom/applovin/impl/sdk/network/a;->b:Lcom/applovin/impl/sdk/q;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to parse response from \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v7, v2, v0}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, v8, Lcom/applovin/impl/sdk/network/a;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->N()Lcom/applovin/impl/sdk/c/h;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/sdk/c/g;->i:Lcom/applovin/impl/sdk/c/g;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/c/h;->a(Lcom/applovin/impl/sdk/c/g;)J

    const/16 v0, -0x320

    invoke-interface {v9, v0}, Lcom/applovin/impl/sdk/network/a$c;->a(I)V

    goto :goto_322

    :cond_309
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/b;->g()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v9, v0, v15}, Lcom/applovin/impl/sdk/network/a$c;->a(Ljava/lang/Object;I)V

    goto :goto_322

    :cond_311
    move-object/from16 v24, v10

    move-object v10, v6

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    move-object v3, v12

    move v4, v15

    move-wide v5, v13

    invoke-direct/range {v1 .. v7}, Lcom/applovin/impl/sdk/network/a;->a(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/Throwable;)V

    invoke-interface {v9, v15}, Lcom/applovin/impl/sdk/network/a$c;->a(I)V
    :try_end_322
    .catch Ljava/net/MalformedURLException; {:try_start_2dd .. :try_end_322} :catch_325
    .catch Ljava/lang/Throwable; {:try_start_2dd .. :try_end_322} :catch_3ab
    .catchall {:try_start_2dd .. :try_end_322} :catchall_3a6

    :goto_322
    move-object/from16 v18, v10

    goto :goto_35f

    :catch_325
    move-exception v0

    goto :goto_335

    :catchall_327
    move-exception v0

    move-object v10, v6

    goto/16 :goto_3a7

    :catch_32b
    move-exception v0

    move-object/from16 v24, v10

    move-object v10, v6

    goto/16 :goto_3ac

    :catch_331
    move-exception v0

    move-object/from16 v24, v10

    move-object v10, v6

    :goto_335
    move-object v7, v0

    goto/16 :goto_38a

    :catch_338
    move-exception v0

    goto :goto_340

    :catch_33a
    move-exception v0

    goto :goto_347

    :catch_33c
    move-exception v0

    move-object/from16 v17, v5

    move v15, v6

    :goto_340
    move-object/from16 v24, v10

    goto :goto_369

    :catch_343
    move-exception v0

    move-object/from16 v17, v5

    move v15, v6

    :goto_347
    move-object/from16 v24, v10

    goto :goto_370

    :cond_34a
    move-object/from16 v17, v5

    move v15, v6

    move-object/from16 v24, v10

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    move-object v3, v12

    move v4, v15

    move-wide v5, v13

    :try_start_357
    invoke-direct/range {v1 .. v7}, Lcom/applovin/impl/sdk/network/a;->a(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/Throwable;)V

    invoke-interface {v9, v15}, Lcom/applovin/impl/sdk/network/a$c;->a(I)V
    :try_end_35d
    .catch Ljava/net/MalformedURLException; {:try_start_357 .. :try_end_35d} :catch_36f
    .catch Ljava/lang/Throwable; {:try_start_357 .. :try_end_35d} :catch_368
    .catchall {:try_start_357 .. :try_end_35d} :catchall_363

    const/16 v18, 0x0

    :goto_35f
    move-object/from16 v10, v18

    goto/16 :goto_3d6

    :catchall_363
    move-exception v0

    move-object/from16 v5, v17

    goto/16 :goto_3fb

    :catch_368
    move-exception v0

    :goto_369
    move-object v7, v0

    :goto_36a
    move-object/from16 v11, v17

    const/4 v10, 0x0

    goto/16 :goto_404

    :catch_36f
    move-exception v0

    :goto_370
    move-object v7, v0

    :goto_371
    const/4 v10, 0x0

    goto :goto_38a

    :catchall_373
    move-exception v0

    move-object/from16 v17, v5

    goto/16 :goto_3fb

    :catch_378
    move-exception v0

    move-object/from16 v17, v5

    move-object/from16 v24, v10

    move-object v7, v0

    move-object/from16 v11, v17

    goto/16 :goto_3f7

    :catch_382
    move-exception v0

    move-object/from16 v17, v5

    move-object/from16 v24, v10

    move-object v7, v0

    const/4 v10, 0x0

    const/4 v15, 0x0

    :goto_38a
    const/16 v0, -0x385

    :try_start_38c
    invoke-direct {v8, v0, v12}, Lcom/applovin/impl/sdk/network/a;->a(ILjava/lang/String;)V

    iget-object v1, v8, Lcom/applovin/impl/sdk/network/a;->a:Lcom/applovin/impl/sdk/j;

    sget-object v2, Lcom/applovin/impl/sdk/b/b;->eH:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_39d
    .catch Ljava/lang/Throwable; {:try_start_38c .. :try_end_39d} :catch_3e8
    .catchall {:try_start_38c .. :try_end_39d} :catchall_3e3

    if-eqz v1, :cond_3b1

    :try_start_39f
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/b;->h()Z

    move-result v1
    :try_end_3a3
    .catch Ljava/lang/Throwable; {:try_start_39f .. :try_end_3a3} :catch_3ab
    .catchall {:try_start_39f .. :try_end_3a3} :catchall_3a6

    if-nez v1, :cond_3b7

    goto :goto_3b1

    :catchall_3a6
    move-exception v0

    :goto_3a7
    move-object/from16 v5, v17

    goto/16 :goto_428

    :catch_3ab
    move-exception v0

    :goto_3ac
    move-object v7, v0

    :goto_3ad
    move-object/from16 v11, v17

    goto/16 :goto_404

    :cond_3b1
    :goto_3b1
    :try_start_3b1
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/b;->g()Ljava/lang/Object;

    move-result-object v1
    :try_end_3b5
    .catch Ljava/lang/Throwable; {:try_start_3b1 .. :try_end_3b5} :catch_3e8
    .catchall {:try_start_3b1 .. :try_end_3b5} :catchall_3e3

    if-eqz v1, :cond_3c5

    :cond_3b7
    move-object/from16 v1, p0

    move-object/from16 v2, v24

    move-object v3, v12

    move v4, v15

    move-wide v5, v13

    :try_start_3be
    invoke-direct/range {v1 .. v7}, Lcom/applovin/impl/sdk/network/a;->a(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/Throwable;)V

    invoke-interface {v9, v0}, Lcom/applovin/impl/sdk/network/a$c;->a(I)V
    :try_end_3c4
    .catch Ljava/lang/Throwable; {:try_start_3be .. :try_end_3c4} :catch_3ab
    .catchall {:try_start_3be .. :try_end_3c4} :catchall_3a6

    goto :goto_3d6

    :cond_3c5
    move-object/from16 v1, p0

    move-object/from16 v2, v24

    move-object v3, v12

    move v4, v15

    move-wide v5, v13

    :try_start_3cc
    invoke-direct/range {v1 .. v6}, Lcom/applovin/impl/sdk/network/a;->a(Ljava/lang/String;Ljava/lang/String;IJ)V

    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/b;->g()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v9, v1, v0}, Lcom/applovin/impl/sdk/network/a$c;->a(Ljava/lang/Object;I)V
    :try_end_3d6
    .catch Ljava/lang/Throwable; {:try_start_3cc .. :try_end_3d6} :catch_3e8
    .catchall {:try_start_3cc .. :try_end_3d6} :catchall_3e3

    :goto_3d6
    iget-object v0, v8, Lcom/applovin/impl/sdk/network/a;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {v10, v0}, Lcom/applovin/impl/sdk/utils/r;->a(Ljava/io/Closeable;Lcom/applovin/impl/sdk/j;)V

    iget-object v0, v8, Lcom/applovin/impl/sdk/network/a;->a:Lcom/applovin/impl/sdk/j;

    move-object/from16 v1, v17

    invoke-static {v1, v0}, Lcom/applovin/impl/sdk/utils/r;->a(Ljava/net/HttpURLConnection;Lcom/applovin/impl/sdk/j;)V

    goto :goto_425

    :catchall_3e3
    move-exception v0

    move-object/from16 v1, v17

    move-object v5, v1

    goto :goto_428

    :catch_3e8
    move-exception v0

    move-object/from16 v1, v17

    move-object v7, v0

    move-object v11, v1

    goto :goto_404

    :catchall_3ee
    move-exception v0

    move-object v1, v5

    goto :goto_3fb

    :catch_3f1
    move-exception v0

    move-object v1, v5

    move-object/from16 v24, v10

    move-object v7, v0

    move-object v11, v1

    :goto_3f7
    const/4 v10, 0x0

    goto :goto_403

    :catchall_3f9
    move-exception v0

    const/4 v5, 0x0

    :goto_3fb
    const/4 v10, 0x0

    goto :goto_428

    :catch_3fd
    move-exception v0

    move-object/from16 v24, v10

    move-object v7, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_403
    const/4 v15, 0x0

    :goto_404
    if-nez v15, :cond_40b

    :try_start_406
    invoke-direct {v8, v7}, Lcom/applovin/impl/sdk/network/a;->a(Ljava/lang/Throwable;)I

    move-result v0

    move v15, v0

    :cond_40b
    invoke-direct {v8, v15, v12}, Lcom/applovin/impl/sdk/network/a;->a(ILjava/lang/String;)V

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    move-object v3, v12

    move v4, v15

    move-wide v5, v13

    invoke-direct/range {v1 .. v7}, Lcom/applovin/impl/sdk/network/a;->a(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/Throwable;)V

    invoke-interface {v9, v15}, Lcom/applovin/impl/sdk/network/a$c;->a(I)V
    :try_end_41b
    .catchall {:try_start_406 .. :try_end_41b} :catchall_426

    iget-object v0, v8, Lcom/applovin/impl/sdk/network/a;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {v10, v0}, Lcom/applovin/impl/sdk/utils/r;->a(Ljava/io/Closeable;Lcom/applovin/impl/sdk/j;)V

    iget-object v0, v8, Lcom/applovin/impl/sdk/network/a;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {v11, v0}, Lcom/applovin/impl/sdk/utils/r;->a(Ljava/net/HttpURLConnection;Lcom/applovin/impl/sdk/j;)V

    :goto_425
    return-void

    :catchall_426
    move-exception v0

    move-object v5, v11

    :goto_428
    iget-object v1, v8, Lcom/applovin/impl/sdk/network/a;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {v10, v1}, Lcom/applovin/impl/sdk/utils/r;->a(Ljava/io/Closeable;Lcom/applovin/impl/sdk/j;)V

    iget-object v1, v8, Lcom/applovin/impl/sdk/network/a;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {v5, v1}, Lcom/applovin/impl/sdk/utils/r;->a(Ljava/net/HttpURLConnection;Lcom/applovin/impl/sdk/j;)V

    throw v0

    :cond_433
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No callback specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_43b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No method specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_443
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No endpoint specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_44b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No request specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
