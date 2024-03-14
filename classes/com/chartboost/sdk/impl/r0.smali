.class public Lcom/chartboost/sdk/impl/r0;
.super Lcom/chartboost/sdk/impl/p0;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/chartboost/sdk/Model/e;Lcom/chartboost/sdk/Networking/a;Lcom/chartboost/sdk/impl/u0;)V
    .registers 12

    .line 1
    iget-object v1, p1, Lcom/chartboost/sdk/Model/e;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/chartboost/sdk/Model/e;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/chartboost/sdk/Model/e;->c:Lcom/chartboost/sdk/Model/g;

    iget-object v4, p1, Lcom/chartboost/sdk/Model/e;->d:Lcom/chartboost/sdk/Tracking/a;

    iget v5, p1, Lcom/chartboost/sdk/Model/e;->e:I

    iget-object v6, p1, Lcom/chartboost/sdk/Model/e;->f:Lcom/chartboost/sdk/impl/p0$a;

    move-object v0, p0

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/chartboost/sdk/impl/p0;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/Model/g;Lcom/chartboost/sdk/Tracking/a;ILcom/chartboost/sdk/impl/p0$a;Lcom/chartboost/sdk/impl/u0;)V

    .line 4
    new-instance v0, Lcom/chartboost/sdk/Model/f;

    iget-object p1, p1, Lcom/chartboost/sdk/Model/e;->c:Lcom/chartboost/sdk/Model/g;

    invoke-direct {v0, p1, p2, p3}, Lcom/chartboost/sdk/Model/f;-><init>(Lcom/chartboost/sdk/Model/g;Lcom/chartboost/sdk/Networking/a;Lcom/chartboost/sdk/impl/u0;)V

    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/f;->a()Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/chartboost/sdk/impl/p0;->k:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/Networking/f;)Lcom/chartboost/sdk/Networking/e;
    .registers 4
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

    .line 1
    iget-object v0, p1, Lcom/chartboost/sdk/Networking/f;->b:[B

    if-nez v0, :cond_12

    .line 2
    new-instance p1, Lcom/chartboost/sdk/Model/CBError;

    sget-object v0, Lcom/chartboost/sdk/Model/CBError$b;->c:Lcom/chartboost/sdk/Model/CBError$b;

    const-string v1, "Response is not a valid json object"

    invoke-direct {p1, v0, v1}, Lcom/chartboost/sdk/Model/CBError;-><init>(Lcom/chartboost/sdk/Model/CBError$b;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/chartboost/sdk/Networking/e;->a(Lcom/chartboost/sdk/Model/CBError;)Lcom/chartboost/sdk/Networking/e;

    move-result-object p1

    return-object p1

    .line 6
    :cond_12
    :try_start_12
    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/String;

    iget-object p1, p1, Lcom/chartboost/sdk/Networking/f;->b:[B

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-static {v0}, Lcom/chartboost/sdk/Networking/e;->a(Ljava/lang/Object;)Lcom/chartboost/sdk/Networking/e;

    move-result-object p1
    :try_end_22
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_22} :catch_23

    return-object p1

    .line 9
    :catch_23
    new-instance p1, Lcom/chartboost/sdk/Model/CBError;

    sget-object v0, Lcom/chartboost/sdk/Model/CBError$b;->g:Lcom/chartboost/sdk/Model/CBError$b;

    const-string v1, "No Bid"

    invoke-direct {p1, v0, v1}, Lcom/chartboost/sdk/Model/CBError;-><init>(Lcom/chartboost/sdk/Model/CBError$b;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/chartboost/sdk/Networking/e;->a(Lcom/chartboost/sdk/Model/CBError;)Lcom/chartboost/sdk/Networking/e;

    move-result-object p1

    return-object p1
.end method

.method public c()V
    .registers 1

    return-void
.end method
