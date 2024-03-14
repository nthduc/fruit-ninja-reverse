.class Lcom/facebook/appevents/codeless/ViewIndexer$2;
.super Ljava/lang/Object;
.source "ViewIndexer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/codeless/ViewIndexer;->schedule()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/appevents/codeless/ViewIndexer;

.field final synthetic val$indexingTask:Ljava/util/TimerTask;


# direct methods
.method constructor <init>(Lcom/facebook/appevents/codeless/ViewIndexer;Ljava/util/TimerTask;)V
    .registers 3

    .line 140
    iput-object p1, p0, Lcom/facebook/appevents/codeless/ViewIndexer$2;->this$0:Lcom/facebook/appevents/codeless/ViewIndexer;

    iput-object p2, p0, Lcom/facebook/appevents/codeless/ViewIndexer$2;->val$indexingTask:Ljava/util/TimerTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 144
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/facebook/appevents/codeless/ViewIndexer$2;->this$0:Lcom/facebook/appevents/codeless/ViewIndexer;

    invoke-static {v0}, Lcom/facebook/appevents/codeless/ViewIndexer;->access$400(Lcom/facebook/appevents/codeless/ViewIndexer;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 145
    iget-object v0, p0, Lcom/facebook/appevents/codeless/ViewIndexer$2;->this$0:Lcom/facebook/appevents/codeless/ViewIndexer;

    invoke-static {v0}, Lcom/facebook/appevents/codeless/ViewIndexer;->access$400(Lcom/facebook/appevents/codeless/ViewIndexer;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 147
    :cond_18
    iget-object v0, p0, Lcom/facebook/appevents/codeless/ViewIndexer$2;->this$0:Lcom/facebook/appevents/codeless/ViewIndexer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/appevents/codeless/ViewIndexer;->access$502(Lcom/facebook/appevents/codeless/ViewIndexer;Ljava/lang/String;)Ljava/lang/String;

    .line 148
    iget-object v0, p0, Lcom/facebook/appevents/codeless/ViewIndexer$2;->this$0:Lcom/facebook/appevents/codeless/ViewIndexer;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    invoke-static {v0, v1}, Lcom/facebook/appevents/codeless/ViewIndexer;->access$402(Lcom/facebook/appevents/codeless/ViewIndexer;Ljava/util/Timer;)Ljava/util/Timer;

    .line 149
    iget-object v0, p0, Lcom/facebook/appevents/codeless/ViewIndexer$2;->this$0:Lcom/facebook/appevents/codeless/ViewIndexer;

    invoke-static {v0}, Lcom/facebook/appevents/codeless/ViewIndexer;->access$400(Lcom/facebook/appevents/codeless/ViewIndexer;)Ljava/util/Timer;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/appevents/codeless/ViewIndexer$2;->val$indexingTask:Ljava/util/TimerTask;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_37} :catch_3a
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_37} :catch_38

    goto :goto_44

    :catch_38
    move-exception v0

    goto :goto_45

    :catch_3a
    move-exception v0

    .line 152
    :try_start_3b
    invoke-static {}, Lcom/facebook/appevents/codeless/ViewIndexer;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error scheduling indexing job"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_44} :catch_38

    :goto_44
    return-void

    .line 154
    :goto_45
    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
