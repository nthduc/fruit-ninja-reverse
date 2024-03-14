.class public Lcom/chartboost/sdk/impl/c1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/chartboost/sdk/impl/c1;->a:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/chartboost/sdk/impl/c1;->b:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/chartboost/sdk/impl/c1;->c:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/chartboost/sdk/impl/c1;->d:Ljava/lang/String;

    .line 7
    iput p6, p0, Lcom/chartboost/sdk/impl/c1;->e:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/c1;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/c1;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/c1;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/c1;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/chartboost/sdk/impl/c1;->e:I

    return v0
.end method
