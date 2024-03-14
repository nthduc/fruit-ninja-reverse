.class Lcom/facebook/ads/AudienceNetworkActivity$1;
.super Ljava/lang/Object;
.source "AudienceNetworkActivity.java"

# interfaces
.implements Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/AudienceNetworkActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/ads/AudienceNetworkActivity;


# direct methods
.method constructor <init>(Lcom/facebook/ads/AudienceNetworkActivity;)V
    .registers 2

    .line 30
    iput-object p1, p0, Lcom/facebook/ads/AudienceNetworkActivity$1;->this$0:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finish(I)V
    .registers 2

    .line 63
    iget-object p1, p0, Lcom/facebook/ads/AudienceNetworkActivity$1;->this$0:Lcom/facebook/ads/AudienceNetworkActivity;

    # invokes: Landroid/app/Activity;->finish()V
    invoke-static {p1}, Lcom/facebook/ads/AudienceNetworkActivity;->access$601(Lcom/facebook/ads/AudienceNetworkActivity;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .line 88
    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity$1;->this$0:Lcom/facebook/ads/AudienceNetworkActivity;

    # invokes: Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V
    invoke-static {v0, p1, p2, p3}, Lcom/facebook/ads/AudienceNetworkActivity;->access$1101(Lcom/facebook/ads/AudienceNetworkActivity;IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity$1;->this$0:Lcom/facebook/ads/AudienceNetworkActivity;

    # invokes: Landroid/app/Activity;->onBackPressed()V
    invoke-static {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->access$801(Lcom/facebook/ads/AudienceNetworkActivity;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 78
    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity$1;->this$0:Lcom/facebook/ads/AudienceNetworkActivity;

    # invokes: Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V
    invoke-static {v0, p1}, Lcom/facebook/ads/AudienceNetworkActivity;->access$901(Lcom/facebook/ads/AudienceNetworkActivity;Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 33
    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity$1;->this$0:Lcom/facebook/ads/AudienceNetworkActivity;

    # invokes: Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V
    invoke-static {v0, p1}, Lcom/facebook/ads/AudienceNetworkActivity;->access$001(Lcom/facebook/ads/AudienceNetworkActivity;Landroid/os/Bundle;)V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity$1;->this$0:Lcom/facebook/ads/AudienceNetworkActivity;

    # invokes: Landroid/app/Activity;->onDestroy()V
    invoke-static {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->access$701(Lcom/facebook/ads/AudienceNetworkActivity;)V

    return-void
.end method

.method public onPause()V
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity$1;->this$0:Lcom/facebook/ads/AudienceNetworkActivity;

    # invokes: Landroid/app/Activity;->onPause()V
    invoke-static {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->access$201(Lcom/facebook/ads/AudienceNetworkActivity;)V

    return-void
.end method

.method public onResume()V
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity$1;->this$0:Lcom/facebook/ads/AudienceNetworkActivity;

    # invokes: Landroid/app/Activity;->onResume()V
    invoke-static {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->access$301(Lcom/facebook/ads/AudienceNetworkActivity;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3

    .line 58
    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity$1;->this$0:Lcom/facebook/ads/AudienceNetworkActivity;

    # invokes: Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V
    invoke-static {v0, p1}, Lcom/facebook/ads/AudienceNetworkActivity;->access$501(Lcom/facebook/ads/AudienceNetworkActivity;Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity$1;->this$0:Lcom/facebook/ads/AudienceNetworkActivity;

    # invokes: Landroid/app/Activity;->onStart()V
    invoke-static {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->access$101(Lcom/facebook/ads/AudienceNetworkActivity;)V

    return-void
.end method

.method public onStop()V
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity$1;->this$0:Lcom/facebook/ads/AudienceNetworkActivity;

    # invokes: Landroid/app/Activity;->onStop()V
    invoke-static {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->access$401(Lcom/facebook/ads/AudienceNetworkActivity;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 83
    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity$1;->this$0:Lcom/facebook/ads/AudienceNetworkActivity;

    # invokes: Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z
    invoke-static {v0, p1}, Lcom/facebook/ads/AudienceNetworkActivity;->access$1001(Lcom/facebook/ads/AudienceNetworkActivity;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
