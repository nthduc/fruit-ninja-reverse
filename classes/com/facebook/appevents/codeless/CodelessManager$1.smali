.class final Lcom/facebook/appevents/codeless/CodelessManager$1;
.super Ljava/lang/Object;
.source "CodelessManager.java"

# interfaces
.implements Lcom/facebook/appevents/codeless/ViewIndexingTrigger$OnShakeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/codeless/CodelessManager;->onActivityResumed(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$appSettings:Lcom/facebook/internal/FetchedAppSettings;


# direct methods
.method constructor <init>(Lcom/facebook/internal/FetchedAppSettings;Ljava/lang/String;)V
    .registers 3

    .line 80
    iput-object p1, p0, Lcom/facebook/appevents/codeless/CodelessManager$1;->val$appSettings:Lcom/facebook/internal/FetchedAppSettings;

    iput-object p2, p0, Lcom/facebook/appevents/codeless/CodelessManager$1;->val$appId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShake()V
    .registers 5

    .line 83
    iget-object v0, p0, Lcom/facebook/appevents/codeless/CodelessManager$1;->val$appSettings:Lcom/facebook/internal/FetchedAppSettings;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    .line 84
    invoke-virtual {v0}, Lcom/facebook/internal/FetchedAppSettings;->getCodelessEventsEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 86
    :goto_f
    invoke-static {}, Lcom/facebook/FacebookSdk;->getCodelessSetupEnabled()Z

    move-result v3

    if-nez v3, :cond_16

    const/4 v1, 0x0

    :cond_16
    if-eqz v0, :cond_1f

    if-eqz v1, :cond_1f

    .line 89
    iget-object v0, p0, Lcom/facebook/appevents/codeless/CodelessManager$1;->val$appId:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/appevents/codeless/CodelessManager;->access$000(Ljava/lang/String;)V

    :cond_1f
    return-void
.end method
