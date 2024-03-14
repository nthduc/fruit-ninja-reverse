.class public Lcom/chartboost/sdk/impl/g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final a:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field final b:Ljava/lang/String;

.field final c:Lcom/chartboost/sdk/impl/h;

.field final d:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field final synthetic e:Lcom/chartboost/sdk/impl/g;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/g;ILjava/lang/String;Lcom/chartboost/sdk/impl/h;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/impl/g$b;->e:Lcom/chartboost/sdk/impl/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lcom/chartboost/sdk/impl/g$b;->a:I

    .line 3
    iput-object p3, p0, Lcom/chartboost/sdk/impl/g$b;->b:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcom/chartboost/sdk/impl/g$b;->c:Lcom/chartboost/sdk/impl/h;

    .line 5
    iput-object p5, p0, Lcom/chartboost/sdk/impl/g$b;->d:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/g$b;->e:Lcom/chartboost/sdk/impl/g;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_52

    .line 2
    :try_start_3
    iget v1, p0, Lcom/chartboost/sdk/impl/g$b;->a:I

    if-eqz v1, :cond_48

    packed-switch v1, :pswitch_data_5c

    goto :goto_4d

    .line 33
    :pswitch_b
    iget-object v1, p0, Lcom/chartboost/sdk/impl/g$b;->e:Lcom/chartboost/sdk/impl/g;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/g$b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/g;->c(Ljava/lang/String;)V

    goto :goto_4d

    .line 34
    :pswitch_13
    iget-object v1, p0, Lcom/chartboost/sdk/impl/g$b;->e:Lcom/chartboost/sdk/impl/g;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/g$b;->c:Lcom/chartboost/sdk/impl/h;

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/g;->b(Lcom/chartboost/sdk/impl/h;)V

    goto :goto_4d

    .line 35
    :pswitch_1b
    iget-object v1, p0, Lcom/chartboost/sdk/impl/g$b;->e:Lcom/chartboost/sdk/impl/g;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/g$b;->c:Lcom/chartboost/sdk/impl/h;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/g$b;->d:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {v1, v2, v3}, Lcom/chartboost/sdk/impl/g;->a(Lcom/chartboost/sdk/impl/h;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_4d

    .line 36
    :pswitch_25
    iget-object v1, p0, Lcom/chartboost/sdk/impl/g$b;->e:Lcom/chartboost/sdk/impl/g;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/g$b;->c:Lcom/chartboost/sdk/impl/h;

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/g;->a(Lcom/chartboost/sdk/impl/h;)V

    goto :goto_4d

    .line 37
    :pswitch_2d
    iget-object v1, p0, Lcom/chartboost/sdk/impl/g$b;->e:Lcom/chartboost/sdk/impl/g;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/g$b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/g;->e(Ljava/lang/String;)V

    goto :goto_4d

    .line 38
    :pswitch_35
    iget-object v1, p0, Lcom/chartboost/sdk/impl/g$b;->e:Lcom/chartboost/sdk/impl/g;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/g$b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/g;->b(Ljava/lang/String;)V

    goto :goto_4d

    .line 39
    :pswitch_3d
    iget-object v1, p0, Lcom/chartboost/sdk/impl/g$b;->e:Lcom/chartboost/sdk/impl/g;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/chartboost/sdk/impl/g;->A:Ljava/util/concurrent/ScheduledFuture;

    .line 40
    iget-object v1, p0, Lcom/chartboost/sdk/impl/g$b;->e:Lcom/chartboost/sdk/impl/g;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/g;->f()V

    goto :goto_4d

    .line 41
    :cond_48
    iget-object v1, p0, Lcom/chartboost/sdk/impl/g$b;->e:Lcom/chartboost/sdk/impl/g;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/g;->e()V

    .line 73
    :goto_4d
    monitor-exit v0

    goto :goto_5a

    :catchall_4f
    move-exception v1

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_3 .. :try_end_51} :catchall_4f

    :try_start_51
    throw v1
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_52} :catch_52

    :catch_52
    move-exception v0

    .line 75
    const-class v1, Lcom/chartboost/sdk/impl/g$b;

    const-string v2, "run"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_5a
    return-void

    nop

    :pswitch_data_5c
    .packed-switch 0x2
        :pswitch_3d
        :pswitch_35
        :pswitch_2d
        :pswitch_25
        :pswitch_1b
        :pswitch_13
        :pswitch_b
    .end packed-switch
.end method
