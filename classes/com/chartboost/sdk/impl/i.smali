.class public Lcom/chartboost/sdk/impl/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/impl/p0$a;


# instance fields
.field private final a:Lcom/chartboost/sdk/impl/g;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/g;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/chartboost/sdk/impl/i;->a:Lcom/chartboost/sdk/impl/g;

    .line 3
    iput-object p2, p0, Lcom/chartboost/sdk/impl/i;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/impl/p0;Lcom/chartboost/sdk/Model/CBError;)V
    .registers 4

    .line 7
    iget-object p1, p0, Lcom/chartboost/sdk/impl/i;->a:Lcom/chartboost/sdk/impl/g;

    iget-object p2, p1, Lcom/chartboost/sdk/impl/g;->p:Lcom/chartboost/sdk/impl/a;

    iget-boolean p2, p2, Lcom/chartboost/sdk/impl/a;->h:Z

    if-eqz p2, :cond_15

    .line 8
    monitor-enter p1

    .line 9
    :try_start_9
    iget-object p2, p0, Lcom/chartboost/sdk/impl/i;->a:Lcom/chartboost/sdk/impl/g;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/i;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/chartboost/sdk/impl/g;->b(Ljava/lang/String;)V

    .line 10
    monitor-exit p1

    goto :goto_15

    :catchall_12
    move-exception p2

    monitor-exit p1
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_12

    throw p2

    :cond_15
    :goto_15
    return-void
.end method

.method public a(Lcom/chartboost/sdk/impl/p0;Lorg/json/JSONObject;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/chartboost/sdk/impl/i;->a:Lcom/chartboost/sdk/impl/g;

    iget-object p1, p1, Lcom/chartboost/sdk/impl/g;->p:Lcom/chartboost/sdk/impl/a;

    iget-boolean p1, p1, Lcom/chartboost/sdk/impl/a;->h:Z

    if-nez p1, :cond_c

    sget-boolean p1, Lcom/chartboost/sdk/j;->o:Z

    if-eqz p1, :cond_20

    .line 2
    :cond_c
    iget-object p1, p0, Lcom/chartboost/sdk/impl/i;->a:Lcom/chartboost/sdk/impl/g;

    monitor-enter p1

    .line 3
    :try_start_f
    iget-object p2, p0, Lcom/chartboost/sdk/impl/i;->a:Lcom/chartboost/sdk/impl/g;

    iget-object p2, p2, Lcom/chartboost/sdk/impl/g;->p:Lcom/chartboost/sdk/impl/a;

    iget p2, p2, Lcom/chartboost/sdk/impl/a;->a:I

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1f

    .line 4
    iget-object p2, p0, Lcom/chartboost/sdk/impl/i;->a:Lcom/chartboost/sdk/impl/g;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/i;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/chartboost/sdk/impl/g;->b(Ljava/lang/String;)V

    .line 6
    :cond_1f
    monitor-exit p1

    :cond_20
    return-void

    :catchall_21
    move-exception p2

    monitor-exit p1
    :try_end_23
    .catchall {:try_start_f .. :try_end_23} :catchall_21

    throw p2
.end method
