.class Lcom/chartboost/sdk/impl/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/chartboost/sdk/impl/h;",
        ">;"
    }
.end annotation


# instance fields
.field final a:I

.field final b:Ljava/lang/String;

.field c:I

.field d:Lcom/chartboost/sdk/Model/a;

.field e:Ljava/lang/Integer;

.field f:Z

.field g:I

.field h:Ljava/lang/Long;

.field i:Ljava/lang/Long;

.field j:Ljava/lang/Long;

.field k:Ljava/lang/Integer;

.field l:Ljava/lang/Integer;

.field m:Ljava/lang/Integer;

.field n:Ljava/lang/Integer;

.field o:Ljava/lang/Integer;

.field p:Ljava/lang/Integer;

.field q:Ljava/lang/Integer;

.field r:Ljava/lang/Integer;


# direct methods
.method constructor <init>(ILjava/lang/String;I)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/chartboost/sdk/impl/h;->a:I

    .line 3
    iput-object p2, p0, Lcom/chartboost/sdk/impl/h;->b:Ljava/lang/String;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/chartboost/sdk/impl/h;->f:Z

    .line 5
    iput p3, p0, Lcom/chartboost/sdk/impl/h;->c:I

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/chartboost/sdk/impl/h;->d:Lcom/chartboost/sdk/Model/a;

    .line 7
    iput-object p1, p0, Lcom/chartboost/sdk/impl/h;->e:Ljava/lang/Integer;

    const/4 p2, 0x3

    .line 8
    iput p2, p0, Lcom/chartboost/sdk/impl/h;->g:I

    .line 10
    iput-object p1, p0, Lcom/chartboost/sdk/impl/h;->h:Ljava/lang/Long;

    .line 11
    iput-object p1, p0, Lcom/chartboost/sdk/impl/h;->i:Ljava/lang/Long;

    .line 14
    iput-object p1, p0, Lcom/chartboost/sdk/impl/h;->k:Ljava/lang/Integer;

    .line 15
    iput-object p1, p0, Lcom/chartboost/sdk/impl/h;->l:Ljava/lang/Integer;

    .line 16
    iput-object p1, p0, Lcom/chartboost/sdk/impl/h;->m:Ljava/lang/Integer;

    .line 17
    iput-object p1, p0, Lcom/chartboost/sdk/impl/h;->n:Ljava/lang/Integer;

    .line 18
    iput-object p1, p0, Lcom/chartboost/sdk/impl/h;->o:Ljava/lang/Integer;

    .line 19
    iput-object p1, p0, Lcom/chartboost/sdk/impl/h;->p:Ljava/lang/Integer;

    .line 20
    iput-object p1, p0, Lcom/chartboost/sdk/impl/h;->q:Ljava/lang/Integer;

    .line 21
    iput-object p1, p0, Lcom/chartboost/sdk/impl/h;->r:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/impl/h;)I
    .registers 3

    .line 1
    iget v0, p0, Lcom/chartboost/sdk/impl/h;->a:I

    iget p1, p1, Lcom/chartboost/sdk/impl/h;->a:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 1
    check-cast p1, Lcom/chartboost/sdk/impl/h;

    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/h;->a(Lcom/chartboost/sdk/impl/h;)I

    move-result p1

    return p1
.end method
