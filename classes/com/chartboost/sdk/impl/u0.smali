.class public Lcom/chartboost/sdk/impl/u0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/chartboost/sdk/impl/z0;

.field private b:Lcom/chartboost/sdk/impl/w0;

.field private c:Lcom/chartboost/sdk/impl/a1;

.field private d:Lcom/chartboost/sdk/impl/x0;

.field private e:Lcom/chartboost/sdk/impl/y0;

.field private f:Lcom/chartboost/sdk/impl/b1;

.field private g:Lcom/chartboost/sdk/Model/h$b;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/z0;Lcom/chartboost/sdk/impl/w0;Lcom/chartboost/sdk/impl/a1;Lcom/chartboost/sdk/impl/x0;Lcom/chartboost/sdk/impl/y0;Lcom/chartboost/sdk/impl/b1;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/chartboost/sdk/impl/u0;->a:Lcom/chartboost/sdk/impl/z0;

    .line 3
    iput-object p2, p0, Lcom/chartboost/sdk/impl/u0;->b:Lcom/chartboost/sdk/impl/w0;

    .line 4
    iput-object p3, p0, Lcom/chartboost/sdk/impl/u0;->c:Lcom/chartboost/sdk/impl/a1;

    .line 5
    iput-object p4, p0, Lcom/chartboost/sdk/impl/u0;->d:Lcom/chartboost/sdk/impl/x0;

    .line 6
    iput-object p5, p0, Lcom/chartboost/sdk/impl/u0;->e:Lcom/chartboost/sdk/impl/y0;

    .line 7
    iput-object p6, p0, Lcom/chartboost/sdk/impl/u0;->f:Lcom/chartboost/sdk/impl/b1;

    .line 8
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/u0;->e()V

    return-void
.end method

.method private e()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u0;->f:Lcom/chartboost/sdk/impl/b1;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/b1;->a()V

    :cond_7
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 6
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u0;->f:Lcom/chartboost/sdk/impl/b1;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/b1;->b()I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;)Lcom/chartboost/sdk/Privacy/model/DataUseConsent;
    .registers 3

    .line 4
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u0;->b:Lcom/chartboost/sdk/impl/w0;

    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/impl/w0;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Privacy/model/DataUseConsent;

    move-result-object p1

    return-object p1

    :cond_9
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Lcom/chartboost/sdk/Model/h$b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/impl/u0;->g:Lcom/chartboost/sdk/Model/h$b;

    return-void
.end method

.method public a(Lcom/chartboost/sdk/Privacy/model/DataUseConsent;)V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u0;->a:Lcom/chartboost/sdk/impl/z0;

    if-eqz v0, :cond_7

    .line 3
    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/impl/z0;->a(Lcom/chartboost/sdk/Privacy/model/DataUseConsent;)V

    :cond_7
    return-void
.end method

.method public b()I
    .registers 2

    .line 3
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u0;->f:Lcom/chartboost/sdk/impl/b1;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/b1;->c()I

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;)Lcom/chartboost/sdk/Privacy/model/DataUseConsent;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u0;->c:Lcom/chartboost/sdk/impl/a1;

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/impl/a1;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Privacy/model/DataUseConsent;

    move-result-object p1

    return-object p1

    :cond_9
    const/4 p1, 0x0

    return-object p1
.end method

.method public c()Lorg/json/JSONObject;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/u0;->d()Ljava/util/List;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/chartboost/sdk/impl/u0;->d:Lcom/chartboost/sdk/impl/x0;

    if-eqz v1, :cond_f

    if-eqz v0, :cond_f

    .line 3
    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/x0;->a(Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public d()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/chartboost/sdk/Privacy/model/DataUseConsent;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u0;->e:Lcom/chartboost/sdk/impl/y0;

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/chartboost/sdk/impl/u0;->g:Lcom/chartboost/sdk/Model/h$b;

    if-eqz v1, :cond_d

    .line 2
    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/y0;->a(Lcom/chartboost/sdk/Model/h$b;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method
