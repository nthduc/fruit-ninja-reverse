.class public Lcom/chartboost/sdk/impl/p0;
.super Lcom/chartboost/sdk/Networking/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/p0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chartboost/sdk/Networking/c<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field private final j:Ljava/lang/String;

.field public k:Lorg/json/JSONObject;

.field public final l:Lcom/chartboost/sdk/impl/p0$a;

.field public m:Z

.field protected final n:Lcom/chartboost/sdk/Model/g;

.field private final o:Lcom/chartboost/sdk/Tracking/a;

.field protected final p:Lcom/chartboost/sdk/impl/u0;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/Model/g;Lcom/chartboost/sdk/Tracking/a;ILcom/chartboost/sdk/impl/p0$a;Lcom/chartboost/sdk/impl/u0;)V
    .registers 10

    .line 1
    invoke-static {p1, p2}, Lcom/chartboost/sdk/Networking/NetworkHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "POST"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p5, v1}, Lcom/chartboost/sdk/Networking/c;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/io/File;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/chartboost/sdk/impl/p0;->m:Z

    .line 17
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/chartboost/sdk/impl/p0;->k:Lorg/json/JSONObject;

    .line 18
    iput-object p2, p0, Lcom/chartboost/sdk/impl/p0;->j:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcom/chartboost/sdk/impl/p0;->n:Lcom/chartboost/sdk/Model/g;

    .line 20
    iput-object p4, p0, Lcom/chartboost/sdk/impl/p0;->o:Lcom/chartboost/sdk/Tracking/a;

    .line 21
    iput-object p6, p0, Lcom/chartboost/sdk/impl/p0;->l:Lcom/chartboost/sdk/impl/p0$a;

    .line 22
    iput-object p7, p0, Lcom/chartboost/sdk/impl/p0;->p:Lcom/chartboost/sdk/impl/u0;

    return-void
.end method

.method private a(Lcom/chartboost/sdk/Networking/f;Lcom/chartboost/sdk/Model/CBError;)V
    .registers 13

    const/4 v0, 0x5

    .line 3
    new-array v0, v0, [Lcom/chartboost/sdk/Libraries/e$a;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/p0;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "endpoint"

    invoke-static {v2, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "None"

    if-nez p1, :cond_16

    move-object p1, v1

    goto :goto_1c

    :cond_16
    iget p1, p1, Lcom/chartboost/sdk/Networking/f;->a:I

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_1c
    const-string v3, "statuscode"

    invoke-static {v3, p1}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v0, v3

    const/4 p1, 0x2

    if-nez p2, :cond_2a

    move-object v3, v1

    goto :goto_32

    .line 5
    :cond_2a
    invoke-virtual {p2}, Lcom/chartboost/sdk/Model/CBError;->a()Lcom/chartboost/sdk/Model/CBError$b;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_32
    const-string v4, "error"

    invoke-static {v4, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v3

    aput-object v3, v0, p1

    const/4 p1, 0x3

    if-nez p2, :cond_3e

    goto :goto_42

    .line 6
    :cond_3e
    invoke-virtual {p2}, Lcom/chartboost/sdk/Model/CBError;->b()Ljava/lang/String;

    move-result-object v1

    :goto_42
    const-string v3, "errorDescription"

    invoke-static {v3, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    aput-object v1, v0, p1

    .line 7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "retryCount"

    invoke-static {v1, p1}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object p1

    const/4 v1, 0x4

    aput-object p1, v0, v1

    .line 8
    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/e;->a([Lcom/chartboost/sdk/Libraries/e$a;)Lorg/json/JSONObject;

    move-result-object v9

    .line 15
    iget-object v2, p0, Lcom/chartboost/sdk/impl/p0;->o:Lcom/chartboost/sdk/Tracking/a;

    if-nez p2, :cond_62

    const-string p1, "success"

    goto :goto_64

    :cond_62
    const-string p1, "failure"

    :goto_64
    move-object v5, p1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v3, "request_manager"

    const-string v4, "request"

    invoke-virtual/range {v2 .. v9}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/chartboost/sdk/Networking/d;
    .registers 8

    .line 16
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/p0;->c()V

    .line 18
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p0;->k:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 20
    sget-object v1, Lcom/chartboost/sdk/j;->j:Ljava/lang/String;

    .line 21
    sget-object v2, Lcom/chartboost/sdk/j;->k:Ljava/lang/String;

    .line 22
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/chartboost/sdk/Networking/c;->a:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 23
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/p0;->e()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const/4 v5, 0x2

    aput-object v2, v4, v5

    const/4 v2, 0x3

    aput-object v0, v4, v2

    const-string v2, "%s %s\n%s\n%s"

    .line 24
    invoke-static {v3, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 26
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/chartboost/sdk/Libraries/c;->b([B)[B

    move-result-object v2

    invoke-static {v2}, Lcom/chartboost/sdk/Libraries/c;->a([B)Ljava/lang/String;

    move-result-object v2

    .line 28
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "application/json"

    const-string v5, "Accept"

    .line 29
    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->f()Ljava/lang/String;

    move-result-object v5

    const-string v6, "X-Chartboost-Client"

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "X-Chartboost-API"

    const-string v6, "8.1.0"

    .line 31
    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "X-Chartboost-App"

    .line 32
    invoke-interface {v3, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "X-Chartboost-Signature"

    .line 33
    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    new-instance v1, Lcom/chartboost/sdk/Networking/d;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {v1, v3, v0, v4}, Lcom/chartboost/sdk/Networking/d;-><init>(Ljava/util/Map;[BLjava/lang/String;)V

    return-object v1
.end method

.method public a(Lcom/chartboost/sdk/Networking/f;)Lcom/chartboost/sdk/Networking/e;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chartboost/sdk/Networking/f;",
            ")",
            "Lcom/chartboost/sdk/Networking/e<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    const-string v0, "CBRequest"

    .line 42
    :try_start_2
    iget-object v1, p1, Lcom/chartboost/sdk/Networking/f;->b:[B

    if-nez v1, :cond_14

    .line 43
    new-instance p1, Lcom/chartboost/sdk/Model/CBError;

    sget-object v0, Lcom/chartboost/sdk/Model/CBError$b;->c:Lcom/chartboost/sdk/Model/CBError$b;

    const-string v1, "Response is not a valid json object"

    invoke-direct {p1, v0, v1}, Lcom/chartboost/sdk/Model/CBError;-><init>(Lcom/chartboost/sdk/Model/CBError$b;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/chartboost/sdk/Networking/e;->a(Lcom/chartboost/sdk/Model/CBError;)Lcom/chartboost/sdk/Networking/e;

    move-result-object p1

    return-object p1

    .line 46
    :cond_14
    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    iget-object v3, p1, Lcom/chartboost/sdk/Networking/f;->b:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/p0;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " succeeded. Response code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/chartboost/sdk/Networking/f;->a:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", body: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x4

    .line 49
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 50
    invoke-static {v0, p1}, Lcom/chartboost/sdk/Libraries/CBLogging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-boolean p1, p0, Lcom/chartboost/sdk/impl/p0;->m:Z

    if-eqz p1, :cond_98

    const-string p1, "status"

    .line 54
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/16 v2, 0x194

    if-ne p1, v2, :cond_6b

    .line 56
    new-instance p1, Lcom/chartboost/sdk/Model/CBError;

    sget-object v0, Lcom/chartboost/sdk/Model/CBError$b;->g:Lcom/chartboost/sdk/Model/CBError$b;

    const-string v1, "404 error from server"

    invoke-direct {p1, v0, v1}, Lcom/chartboost/sdk/Model/CBError;-><init>(Lcom/chartboost/sdk/Model/CBError$b;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/chartboost/sdk/Networking/e;->a(Lcom/chartboost/sdk/Model/CBError;)Lcom/chartboost/sdk/Networking/e;

    move-result-object p1

    return-object p1

    :cond_6b
    const/16 v2, 0xc8

    if-lt p1, v2, :cond_73

    const/16 v2, 0x12b

    if-le p1, v2, :cond_98

    .line 60
    :cond_73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request failed due to status code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " in message"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 61
    invoke-static {v0, p1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance v0, Lcom/chartboost/sdk/Model/CBError;

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$b;->d:Lcom/chartboost/sdk/Model/CBError$b;

    invoke-direct {v0, v1, p1}, Lcom/chartboost/sdk/Model/CBError;-><init>(Lcom/chartboost/sdk/Model/CBError$b;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/chartboost/sdk/Networking/e;->a(Lcom/chartboost/sdk/Model/CBError;)Lcom/chartboost/sdk/Networking/e;

    move-result-object p1

    return-object p1

    .line 66
    :cond_98
    invoke-static {v1}, Lcom/chartboost/sdk/Networking/e;->a(Ljava/lang/Object;)Lcom/chartboost/sdk/Networking/e;

    move-result-object p1
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9c} :catch_9d

    return-object p1

    :catch_9d
    move-exception p1

    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "parseServerResponse"

    invoke-static {v0, v1, p1}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 69
    new-instance v0, Lcom/chartboost/sdk/Model/CBError;

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$b;->a:Lcom/chartboost/sdk/Model/CBError$b;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/chartboost/sdk/Model/CBError;-><init>(Lcom/chartboost/sdk/Model/CBError$b;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/chartboost/sdk/Networking/e;->a(Lcom/chartboost/sdk/Model/CBError;)Lcom/chartboost/sdk/Networking/e;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/chartboost/sdk/Model/CBError;Lcom/chartboost/sdk/Networking/f;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 78
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request failure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/chartboost/sdk/Networking/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/CBError;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CBRequest"

    invoke-static {v1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p0;->l:Lcom/chartboost/sdk/impl/p0$a;

    if-eqz v0, :cond_2e

    .line 81
    invoke-interface {v0, p0, p1}, Lcom/chartboost/sdk/impl/p0$a;->a(Lcom/chartboost/sdk/impl/p0;Lcom/chartboost/sdk/Model/CBError;)V

    .line 84
    :cond_2e
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p0;->o:Lcom/chartboost/sdk/Tracking/a;

    if-eqz v0, :cond_35

    .line 85
    invoke-direct {p0, p2, p1}, Lcom/chartboost/sdk/impl/p0;->a(Lcom/chartboost/sdk/Networking/f;Lcom/chartboost/sdk/Model/CBError;)V

    :cond_35
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/chartboost/sdk/Networking/f;)V
    .registers 3

    .line 1
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/chartboost/sdk/impl/p0;->a(Lorg/json/JSONObject;Lcom/chartboost/sdk/Networking/f;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p0;->k:Lorg/json/JSONObject;

    invoke-static {v0, p1, p2}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;Lcom/chartboost/sdk/Networking/f;)V
    .registers 5

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request success: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/chartboost/sdk/Networking/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lcom/chartboost/sdk/Networking/f;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CBRequest"

    invoke-static {v1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p0;->l:Lcom/chartboost/sdk/impl/p0$a;

    if-eqz v0, :cond_2b

    if-eqz p1, :cond_2b

    .line 73
    invoke-interface {v0, p0, p1}, Lcom/chartboost/sdk/impl/p0$a;->a(Lcom/chartboost/sdk/impl/p0;Lorg/json/JSONObject;)V

    .line 76
    :cond_2b
    iget-object p1, p0, Lcom/chartboost/sdk/impl/p0;->o:Lcom/chartboost/sdk/Tracking/a;

    if-eqz p1, :cond_33

    const/4 p1, 0x0

    .line 77
    invoke-direct {p0, p2, p1}, Lcom/chartboost/sdk/impl/p0;->a(Lcom/chartboost/sdk/Networking/f;Lcom/chartboost/sdk/Model/CBError;)V

    :cond_33
    return-void
.end method

.method public c()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p0;->n:Lcom/chartboost/sdk/Model/g;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/g;->s:Ljava/lang/String;

    const-string v1, "app"

    invoke-virtual {p0, v1, v0}, Lcom/chartboost/sdk/impl/p0;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p0;->n:Lcom/chartboost/sdk/Model/g;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/g;->f:Ljava/lang/String;

    const-string v1, "model"

    invoke-virtual {p0, v1, v0}, Lcom/chartboost/sdk/impl/p0;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p0;->n:Lcom/chartboost/sdk/Model/g;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/g;->t:Ljava/lang/String;

    const-string v1, "device_type"

    invoke-virtual {p0, v1, v0}, Lcom/chartboost/sdk/impl/p0;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p0;->n:Lcom/chartboost/sdk/Model/g;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/g;->u:Ljava/lang/String;

    const-string v1, "actual_device_type"

    invoke-virtual {p0, v1, v0}, Lcom/chartboost/sdk/impl/p0;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p0;->n:Lcom/chartboost/sdk/Model/g;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/g;->g:Ljava/lang/String;

    const-string v1, "os"

    invoke-virtual {p0, v1, v0}, Lcom/chartboost/sdk/impl/p0;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p0;->n:Lcom/chartboost/sdk/Model/g;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/g;->h:Ljava/lang/String;

    const-string v1, "country"

    invoke-virtual {p0, v1, v0}, Lcom/chartboost/sdk/impl/p0;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p0;->n:Lcom/chartboost/sdk/Model/g;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/g;->i:Ljava/lang/String;

    const-string v1, "language"

    invoke-virtual {p0, v1, v0}, Lcom/chartboost/sdk/impl/p0;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p0;->n:Lcom/chartboost/sdk/Model/g;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/g;->l:Ljava/lang/String;

    const-string v1, "sdk"

    invoke-virtual {p0, v1, v0}, Lcom/chartboost/sdk/impl/p0;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    sget-object v0, Lcom/chartboost/sdk/j;->r:Ljava/lang/String;

    const-string v1, "user_agent"

    invoke-virtual {p0, v1, v0}, Lcom/chartboost/sdk/impl/p0;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/p0;->n:Lcom/chartboost/sdk/Model/g;

    iget-object v1, v1, Lcom/chartboost/sdk/Model/g;->e:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/i;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "timestamp"

    .line 12
    invoke-virtual {p0, v1, v0}, Lcom/chartboost/sdk/impl/p0;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p0;->n:Lcom/chartboost/sdk/Model/g;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/g;->d:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    const-string v2, "cbPrefSessionCount"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "session"

    invoke-virtual {p0, v2, v0}, Lcom/chartboost/sdk/impl/p0;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 15
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p0;->n:Lcom/chartboost/sdk/Model/g;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/g;->b:Lcom/chartboost/sdk/Networking/h;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Networking/h;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "reachability"

    invoke-virtual {p0, v2, v0}, Lcom/chartboost/sdk/impl/p0;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p0;->n:Lcom/chartboost/sdk/Model/g;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/g;->r:Ljava/lang/Float;

    const-string v2, "scale"

    invoke-virtual {p0, v2, v0}, Lcom/chartboost/sdk/impl/p0;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 17
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->e()I

    move-result v0

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/CBUtility;->b(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "is_portrait"

    invoke-virtual {p0, v2, v0}, Lcom/chartboost/sdk/impl/p0;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 18
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p0;->n:Lcom/chartboost/sdk/Model/g;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/g;->j:Ljava/lang/String;

    const-string v2, "bundle"

    invoke-virtual {p0, v2, v0}, Lcom/chartboost/sdk/impl/p0;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 19
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p0;->n:Lcom/chartboost/sdk/Model/g;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/g;->k:Ljava/lang/String;

    const-string v2, "bundle_id"

    invoke-virtual {p0, v2, v0}, Lcom/chartboost/sdk/impl/p0;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p0;->n:Lcom/chartboost/sdk/Model/g;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/g;->v:Lorg/json/JSONObject;

    const-string v2, "carrier"

    invoke-virtual {p0, v2, v0}, Lcom/chartboost/sdk/impl/p0;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    sget-object v0, Lcom/chartboost/sdk/j;->b:Ljava/lang/String;

    const-string v2, "custom_id"

    invoke-virtual {p0, v2, v0}, Lcom/chartboost/sdk/impl/p0;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 23
    sget-object v0, Lcom/chartboost/sdk/j;->i:Lcom/chartboost/sdk/Networking/requests/models/MediationModel;

    if-eqz v0, :cond_ea

    .line 24
    invoke-virtual {v0}, Lcom/chartboost/sdk/Networking/requests/models/MediationModel;->getMediation()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mediation"

    invoke-virtual {p0, v2, v0}, Lcom/chartboost/sdk/impl/p0;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    sget-object v0, Lcom/chartboost/sdk/j;->i:Lcom/chartboost/sdk/Networking/requests/models/MediationModel;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Networking/requests/models/MediationModel;->getMediationVersion()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mediation_version"

    invoke-virtual {p0, v2, v0}, Lcom/chartboost/sdk/impl/p0;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 26
    sget-object v0, Lcom/chartboost/sdk/j;->i:Lcom/chartboost/sdk/Networking/requests/models/MediationModel;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Networking/requests/models/MediationModel;->getAdapterVersion()Ljava/lang/String;

    move-result-object v0

    const-string v2, "adapter_version"

    invoke-virtual {p0, v2, v0}, Lcom/chartboost/sdk/impl/p0;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 29
    :cond_ea
    sget-object v0, Lcom/chartboost/sdk/j;->e:Lcom/chartboost/sdk/Chartboost$CBFramework;

    if-eqz v0, :cond_fc

    .line 30
    sget-object v0, Lcom/chartboost/sdk/j;->g:Ljava/lang/String;

    const-string v2, "framework_version"

    invoke-virtual {p0, v2, v0}, Lcom/chartboost/sdk/impl/p0;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    sget-object v0, Lcom/chartboost/sdk/j;->c:Ljava/lang/String;

    const-string v2, "wrapper_version"

    invoke-virtual {p0, v2, v0}, Lcom/chartboost/sdk/impl/p0;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 33
    :cond_fc
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p0;->n:Lcom/chartboost/sdk/Model/g;

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/g;->x:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "rooted_device"

    invoke-virtual {p0, v2, v0}, Lcom/chartboost/sdk/impl/p0;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 34
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p0;->n:Lcom/chartboost/sdk/Model/g;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/g;->y:Ljava/lang/String;

    const-string v2, "timezone"

    invoke-virtual {p0, v2, v0}, Lcom/chartboost/sdk/impl/p0;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p0;->n:Lcom/chartboost/sdk/Model/g;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/g;->z:Ljava/lang/Integer;

    const-string v2, "mobile_network"

    invoke-virtual {p0, v2, v0}, Lcom/chartboost/sdk/impl/p0;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 36
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p0;->n:Lcom/chartboost/sdk/Model/g;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/g;->o:Ljava/lang/Integer;

    const-string v2, "dw"

    invoke-virtual {p0, v2, v0}, Lcom/chartboost/sdk/impl/p0;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p0;->n:Lcom/chartboost/sdk/Model/g;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/g;->p:Ljava/lang/Integer;

    const-string v2, "dh"

    invoke-virtual {p0, v2, v0}, Lcom/chartboost/sdk/impl/p0;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p0;->n:Lcom/chartboost/sdk/Model/g;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/g;->q:Ljava/lang/String;

    const-string v2, "dpi"

    invoke-virtual {p0, v2, v0}, Lcom/chartboost/sdk/impl/p0;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p0;->n:Lcom/chartboost/sdk/Model/g;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/g;->m:Ljava/lang/Integer;

    const-string v2, "w"

    invoke-virtual {p0, v2, v0}, Lcom/chartboost/sdk/impl/p0;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 40
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p0;->n:Lcom/chartboost/sdk/Model/g;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/g;->n:Ljava/lang/Integer;

    const-string v2, "h"

    invoke-virtual {p0, v2, v0}, Lcom/chartboost/sdk/impl/p0;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "commit_hash"

    const-string v2, "6fc21cc6f0ae7b9742b4577672d558b51a909e27"

    .line 41
    invoke-virtual {p0, v0, v2}, Lcom/chartboost/sdk/impl/p0;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p0;->n:Lcom/chartboost/sdk/Model/g;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/g;->a:Lcom/chartboost/sdk/Libraries/d;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/d;->a()Lcom/chartboost/sdk/Libraries/d$a;

    move-result-object v0

    .line 44
    iget-object v2, v0, Lcom/chartboost/sdk/Libraries/d$a;->b:Ljava/lang/String;

    const-string v3, "identity"

    invoke-virtual {p0, v3, v2}, Lcom/chartboost/sdk/impl/p0;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    iget v0, v0, Lcom/chartboost/sdk/Libraries/d$a;->a:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_170

    const/4 v2, 0x1

    if-ne v0, v2, :cond_167

    const/4 v1, 0x1

    .line 47
    :cond_167
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "limit_ad_tracking"

    invoke-virtual {p0, v1, v0}, Lcom/chartboost/sdk/impl/p0;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
    :cond_170
    sget-object v0, Lcom/chartboost/sdk/impl/t0;->a:Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "pidatauseconsent"

    invoke-virtual {p0, v1, v0}, Lcom/chartboost/sdk/impl/p0;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 52
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p0;->n:Lcom/chartboost/sdk/Model/g;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/g;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/h;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/h;->a:Ljava/lang/String;

    .line 53
    invoke-static {}, Lcom/chartboost/sdk/impl/x;->c()Lcom/chartboost/sdk/impl/x;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/x;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19a

    const-string v1, "config_variant"

    .line 54
    invoke-virtual {p0, v1, v0}, Lcom/chartboost/sdk/impl/p0;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    :cond_19a
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p0;->p:Lcom/chartboost/sdk/impl/u0;

    if-eqz v0, :cond_1a7

    .line 58
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/u0;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "privacy"

    invoke-virtual {p0, v1, v0}, Lcom/chartboost/sdk/impl/p0;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1a7
    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p0;->j:Ljava/lang/String;

    const-string v1, "/"

    if-nez v0, :cond_7

    goto :goto_22

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/chartboost/sdk/impl/p0;->j:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    const-string v1, ""

    :cond_16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/p0;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_22
    return-object v1
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/p0;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
