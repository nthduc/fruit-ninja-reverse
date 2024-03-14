.class public Lcom/chartboost/sdk/impl/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/chartboost/sdk/impl/j;

.field public final b:Z

.field private final c:I

.field private final d:I


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/j;ZII)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/chartboost/sdk/impl/k;->a:Lcom/chartboost/sdk/impl/j;

    .line 3
    iput-boolean p2, p0, Lcom/chartboost/sdk/impl/k;->b:Z

    .line 4
    iput p3, p0, Lcom/chartboost/sdk/impl/k;->c:I

    .line 5
    iput p4, p0, Lcom/chartboost/sdk/impl/k;->d:I

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/k;->a:Lcom/chartboost/sdk/impl/j;

    iget-boolean v1, p0, Lcom/chartboost/sdk/impl/k;->b:Z

    iget v2, p0, Lcom/chartboost/sdk/impl/k;->c:I

    iget v3, p0, Lcom/chartboost/sdk/impl/k;->d:I

    invoke-interface {v0, v1, v2, v3}, Lcom/chartboost/sdk/impl/j;->a(ZII)V

    return-void
.end method
