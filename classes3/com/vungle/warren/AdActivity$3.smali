.class Lcom/vungle/warren/AdActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "AdActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/AdActivity;->connectBroadcastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/AdActivity;


# direct methods
.method constructor <init>(Lcom/vungle/warren/AdActivity;)V
    .registers 2

    .line 180
    iput-object p1, p0, Lcom/vungle/warren/AdActivity$3;->this$0:Lcom/vungle/warren/AdActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    const-string p1, "command"

    .line 183
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 184
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x70511dc1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_20

    const v1, -0x1cc869ef

    if-eq v0, v1, :cond_16

    goto :goto_2a

    :cond_16
    const-string v0, "closeFlex"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x0

    goto :goto_2b

    :cond_20
    const-string v0, "stopAll"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x1

    goto :goto_2b

    :cond_2a
    :goto_2a
    const/4 v0, -0x1

    :goto_2b
    if-eqz v0, :cond_4c

    if-ne v0, v2, :cond_35

    .line 193
    iget-object p1, p0, Lcom/vungle/warren/AdActivity$3;->this$0:Lcom/vungle/warren/AdActivity;

    invoke-virtual {p1}, Lcom/vungle/warren/AdActivity;->finish()V

    goto :goto_63

    .line 197
    :cond_35
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No such command "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4c
    const-string p1, "placement"

    .line 186
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 187
    iget-object p2, p0, Lcom/vungle/warren/AdActivity$3;->this$0:Lcom/vungle/warren/AdActivity;

    # getter for: Lcom/vungle/warren/AdActivity;->presenter:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;
    invoke-static {p2}, Lcom/vungle/warren/AdActivity;->access$000(Lcom/vungle/warren/AdActivity;)Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;

    move-result-object p2

    if-eqz p2, :cond_63

    .line 188
    iget-object p2, p0, Lcom/vungle/warren/AdActivity$3;->this$0:Lcom/vungle/warren/AdActivity;

    # getter for: Lcom/vungle/warren/AdActivity;->presenter:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;
    invoke-static {p2}, Lcom/vungle/warren/AdActivity;->access$000(Lcom/vungle/warren/AdActivity;)Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;->handleExit(Ljava/lang/String;)Z

    :cond_63
    :goto_63
    return-void
.end method
