.class Lcom/facebook/AccessTokenTracker$CurrentAccessTokenBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AccessTokenTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/AccessTokenTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CurrentAccessTokenBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/AccessTokenTracker;


# direct methods
.method private constructor <init>(Lcom/facebook/AccessTokenTracker;)V
    .registers 2

    .line 93
    iput-object p1, p0, Lcom/facebook/AccessTokenTracker$CurrentAccessTokenBroadcastReceiver;->this$0:Lcom/facebook/AccessTokenTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/AccessTokenTracker;Lcom/facebook/AccessTokenTracker$1;)V
    .registers 3

    .line 93
    invoke-direct {p0, p1}, Lcom/facebook/AccessTokenTracker$CurrentAccessTokenBroadcastReceiver;-><init>(Lcom/facebook/AccessTokenTracker;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 96
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 97
    # getter for: Lcom/facebook/AccessTokenTracker;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/facebook/AccessTokenTracker;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AccessTokenChanged"

    invoke-static {p1, v0}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "com.facebook.sdk.EXTRA_OLD_ACCESS_TOKEN"

    .line 100
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/facebook/AccessToken;

    const-string v0, "com.facebook.sdk.EXTRA_NEW_ACCESS_TOKEN"

    .line 102
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/facebook/AccessToken;

    .line 104
    iget-object v0, p0, Lcom/facebook/AccessTokenTracker$CurrentAccessTokenBroadcastReceiver;->this$0:Lcom/facebook/AccessTokenTracker;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/AccessTokenTracker;->onCurrentAccessTokenChanged(Lcom/facebook/AccessToken;Lcom/facebook/AccessToken;)V

    :cond_2a
    return-void
.end method
