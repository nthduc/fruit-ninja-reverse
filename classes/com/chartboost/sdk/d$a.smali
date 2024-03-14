.class public Lcom/chartboost/sdk/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field b:Landroid/app/Activity;

.field public c:Lcom/chartboost/sdk/Model/c;

.field final synthetic d:Lcom/chartboost/sdk/d;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/d;I)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/d$a;->d:Lcom/chartboost/sdk/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/chartboost/sdk/d$a;->b:Landroid/app/Activity;

    .line 4
    iput-object p1, p0, Lcom/chartboost/sdk/d$a;->c:Lcom/chartboost/sdk/Model/c;

    .line 7
    iput p2, p0, Lcom/chartboost/sdk/d$a;->a:I

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    :try_start_0
    iget v0, p0, Lcom/chartboost/sdk/d$a;->a:I

    packed-switch v0, :pswitch_data_78

    :pswitch_5
    goto/16 :goto_76

    .line 31
    :pswitch_7
    iget-object v0, p0, Lcom/chartboost/sdk/d$a;->d:Lcom/chartboost/sdk/d;

    iget-object v0, v0, Lcom/chartboost/sdk/d;->d:Lcom/chartboost/sdk/e;

    iget-object v1, p0, Lcom/chartboost/sdk/d$a;->c:Lcom/chartboost/sdk/Model/c;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/e;->d(Lcom/chartboost/sdk/Model/c;)V

    goto :goto_76

    .line 32
    :pswitch_11
    iget-object v0, p0, Lcom/chartboost/sdk/d$a;->d:Lcom/chartboost/sdk/d;

    iget-object v0, v0, Lcom/chartboost/sdk/d;->d:Lcom/chartboost/sdk/e;

    iget-object v1, p0, Lcom/chartboost/sdk/d$a;->c:Lcom/chartboost/sdk/Model/c;

    iget-object v2, p0, Lcom/chartboost/sdk/d$a;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/e;->a(Lcom/chartboost/sdk/Model/c;Landroid/app/Activity;)V

    goto :goto_76

    .line 33
    :pswitch_1d
    iget-object v0, p0, Lcom/chartboost/sdk/d$a;->c:Lcom/chartboost/sdk/Model/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/c;->j()V

    goto :goto_76

    .line 34
    :pswitch_23
    iget-object v0, p0, Lcom/chartboost/sdk/d$a;->d:Lcom/chartboost/sdk/d;

    invoke-virtual {v0}, Lcom/chartboost/sdk/d;->c()Lcom/chartboost/sdk/e;

    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/chartboost/sdk/d$a;->c:Lcom/chartboost/sdk/Model/c;

    iget v1, v1, Lcom/chartboost/sdk/Model/c;->b:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_76

    if-eqz v0, :cond_76

    .line 36
    iget-object v1, p0, Lcom/chartboost/sdk/d$a;->c:Lcom/chartboost/sdk/Model/c;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/e;->a(Lcom/chartboost/sdk/Model/c;)V

    goto :goto_76

    .line 37
    :pswitch_38
    iget-object v0, p0, Lcom/chartboost/sdk/d$a;->c:Lcom/chartboost/sdk/Model/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/c;->t()Z

    move-result v0

    if-eqz v0, :cond_76

    .line 38
    iget-object v0, p0, Lcom/chartboost/sdk/d$a;->c:Lcom/chartboost/sdk/Model/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/c;->g()Lcom/chartboost/sdk/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->m()V

    goto :goto_76

    .line 39
    :pswitch_4a
    iget-object v0, p0, Lcom/chartboost/sdk/d$a;->d:Lcom/chartboost/sdk/d;

    iget-object v1, p0, Lcom/chartboost/sdk/d$a;->c:Lcom/chartboost/sdk/Model/c;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/d;->c(Lcom/chartboost/sdk/Model/c;)V

    goto :goto_76

    .line 40
    :pswitch_52
    iget-object v0, p0, Lcom/chartboost/sdk/d$a;->d:Lcom/chartboost/sdk/d;

    invoke-virtual {v0}, Lcom/chartboost/sdk/d;->b()Z
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_57} :catch_58

    goto :goto_76

    :catch_58
    move-exception v0

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "run ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/chartboost/sdk/d$a;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/chartboost/sdk/d$a;

    invoke-static {v2, v1, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_76
    :goto_76
    return-void

    nop

    :pswitch_data_78
    .packed-switch 0x7
        :pswitch_52
        :pswitch_5
        :pswitch_4a
        :pswitch_38
        :pswitch_23
        :pswitch_1d
        :pswitch_11
        :pswitch_7
    .end packed-switch
.end method
