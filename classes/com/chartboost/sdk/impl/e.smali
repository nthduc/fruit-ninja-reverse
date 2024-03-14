.class public Lcom/chartboost/sdk/impl/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .registers 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/chartboost/sdk/impl/e;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/chartboost/sdk/impl/e;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/chartboost/sdk/impl/e;->c:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/chartboost/sdk/impl/e;->d:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/chartboost/sdk/impl/e;->e:Ljava/lang/String;

    .line 7
    iput-boolean p6, p0, Lcom/chartboost/sdk/impl/e;->f:Z

    .line 8
    iput-boolean p7, p0, Lcom/chartboost/sdk/impl/e;->g:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e;->d:Ljava/lang/String;

    return-object v0
.end method

.method public f()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/e;->g:Z

    return v0
.end method

.method public g()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/e;->f:Z

    return v0
.end method
