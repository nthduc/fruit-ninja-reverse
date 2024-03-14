.class Lcom/facebook/internal/PlatformServiceClient$1;
.super Landroid/os/Handler;
.source "PlatformServiceClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/PlatformServiceClient;-><init>(Landroid/content/Context;IIILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/internal/PlatformServiceClient;


# direct methods
.method constructor <init>(Lcom/facebook/internal/PlatformServiceClient;)V
    .registers 2

    .line 60
    iput-object p1, p0, Lcom/facebook/internal/PlatformServiceClient$1;->this$0:Lcom/facebook/internal/PlatformServiceClient;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 63
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/facebook/internal/PlatformServiceClient$1;->this$0:Lcom/facebook/internal/PlatformServiceClient;

    invoke-virtual {v0, p1}, Lcom/facebook/internal/PlatformServiceClient;->handleMessage(Landroid/os/Message;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception p1

    .line 64
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
