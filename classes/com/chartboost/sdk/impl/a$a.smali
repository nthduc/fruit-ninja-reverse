.class public Lcom/chartboost/sdk/impl/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field private final d:Lcom/chartboost/sdk/Events/ChartboostError;

.field final synthetic e:Lcom/chartboost/sdk/impl/a;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/a;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;Lcom/chartboost/sdk/Events/ChartboostError;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/impl/a$a;->e:Lcom/chartboost/sdk/impl/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lcom/chartboost/sdk/impl/a$a;->a:I

    .line 3
    iput-object p3, p0, Lcom/chartboost/sdk/impl/a$a;->b:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcom/chartboost/sdk/impl/a$a;->c:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 5
    iput-object p5, p0, Lcom/chartboost/sdk/impl/a$a;->d:Lcom/chartboost/sdk/Events/ChartboostError;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget v0, p0, Lcom/chartboost/sdk/impl/a$a;->a:I

    packed-switch v0, :pswitch_data_50

    goto :goto_4f

    .line 27
    :pswitch_6
    iget-object v0, p0, Lcom/chartboost/sdk/impl/a$a;->e:Lcom/chartboost/sdk/impl/a;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/a$a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/a$a;->d:Lcom/chartboost/sdk/Events/ChartboostError;

    check-cast v2, Lcom/chartboost/sdk/Events/ChartboostShowError;

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/a;->a(Ljava/lang/String;Lcom/chartboost/sdk/Events/ChartboostShowError;)V

    goto :goto_4f

    .line 28
    :pswitch_12
    iget-object v0, p0, Lcom/chartboost/sdk/impl/a$a;->e:Lcom/chartboost/sdk/impl/a;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/a$a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/a$a;->d:Lcom/chartboost/sdk/Events/ChartboostError;

    check-cast v2, Lcom/chartboost/sdk/Events/ChartboostCacheError;

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/a;->a(Ljava/lang/String;Lcom/chartboost/sdk/Events/ChartboostCacheError;)V

    goto :goto_4f

    .line 29
    :pswitch_1e
    iget-object v0, p0, Lcom/chartboost/sdk/impl/a$a;->e:Lcom/chartboost/sdk/impl/a;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/a$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/a;->e(Ljava/lang/String;)V

    goto :goto_4f

    .line 30
    :pswitch_26
    iget-object v0, p0, Lcom/chartboost/sdk/impl/a$a;->e:Lcom/chartboost/sdk/impl/a;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/a$a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/a$a;->c:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/a;->a(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_4f

    .line 31
    :pswitch_30
    iget-object v0, p0, Lcom/chartboost/sdk/impl/a$a;->e:Lcom/chartboost/sdk/impl/a;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/a$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/a;->d(Ljava/lang/String;)V

    goto :goto_4f

    .line 32
    :pswitch_38
    iget-object v0, p0, Lcom/chartboost/sdk/impl/a$a;->e:Lcom/chartboost/sdk/impl/a;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/a$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/a;->c(Ljava/lang/String;)V

    goto :goto_4f

    .line 33
    :pswitch_40
    iget-object v0, p0, Lcom/chartboost/sdk/impl/a$a;->e:Lcom/chartboost/sdk/impl/a;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/a$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/a;->b(Ljava/lang/String;)V

    goto :goto_4f

    .line 34
    :pswitch_48
    iget-object v0, p0, Lcom/chartboost/sdk/impl/a$a;->e:Lcom/chartboost/sdk/impl/a;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/a$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/a;->a(Ljava/lang/String;)V

    :goto_4f
    return-void

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_48
        :pswitch_40
        :pswitch_38
        :pswitch_30
        :pswitch_26
        :pswitch_1e
        :pswitch_12
        :pswitch_6
    .end packed-switch
.end method
