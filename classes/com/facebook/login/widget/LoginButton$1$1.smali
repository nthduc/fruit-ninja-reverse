.class Lcom/facebook/login/widget/LoginButton$1$1;
.super Ljava/lang/Object;
.source "LoginButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/login/widget/LoginButton$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/login/widget/LoginButton$1;

.field final synthetic val$settings:Lcom/facebook/internal/FetchedAppSettings;


# direct methods
.method constructor <init>(Lcom/facebook/login/widget/LoginButton$1;Lcom/facebook/internal/FetchedAppSettings;)V
    .registers 3

    .line 548
    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton$1$1;->this$1:Lcom/facebook/login/widget/LoginButton$1;

    iput-object p2, p0, Lcom/facebook/login/widget/LoginButton$1$1;->val$settings:Lcom/facebook/internal/FetchedAppSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 551
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton$1$1;->this$1:Lcom/facebook/login/widget/LoginButton$1;

    iget-object v0, v0, Lcom/facebook/login/widget/LoginButton$1;->this$0:Lcom/facebook/login/widget/LoginButton;

    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton$1$1;->val$settings:Lcom/facebook/internal/FetchedAppSettings;

    # invokes: Lcom/facebook/login/widget/LoginButton;->showToolTipPerSettings(Lcom/facebook/internal/FetchedAppSettings;)V
    invoke-static {v0, v1}, Lcom/facebook/login/widget/LoginButton;->access$000(Lcom/facebook/login/widget/LoginButton;Lcom/facebook/internal/FetchedAppSettings;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_10} :catch_11

    return-void

    :catch_11
    move-exception v0

    .line 552
    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method