.class Lcom/facebook/appevents/codeless/CodelessMatcher$1;
.super Ljava/lang/Object;
.source "CodelessMatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/codeless/CodelessMatcher;->startTracking()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/appevents/codeless/CodelessMatcher;


# direct methods
.method constructor <init>(Lcom/facebook/appevents/codeless/CodelessMatcher;)V
    .registers 2

    .line 173
    iput-object p1, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$1;->this$0:Lcom/facebook/appevents/codeless/CodelessMatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 176
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$1;->this$0:Lcom/facebook/appevents/codeless/CodelessMatcher;

    invoke-static {v0}, Lcom/facebook/appevents/codeless/CodelessMatcher;->access$000(Lcom/facebook/appevents/codeless/CodelessMatcher;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception v0

    .line 177
    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
