.class Lcom/vungle/warren/VungleBanner$2;
.super Ljava/lang/Object;
.source "VungleBanner.java"

# interfaces
.implements Lcom/vungle/warren/LoadAdCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/VungleBanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/VungleBanner;


# direct methods
.method constructor <init>(Lcom/vungle/warren/VungleBanner;)V
    .registers 2

    .line 236
    iput-object p1, p0, Lcom/vungle/warren/VungleBanner$2;->this$0:Lcom/vungle/warren/VungleBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdLoad(Ljava/lang/String;)V
    .registers 5

    .line 239
    # getter for: Lcom/vungle/warren/VungleBanner;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/vungle/warren/VungleBanner;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad Loaded : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v0, p0, Lcom/vungle/warren/VungleBanner$2;->this$0:Lcom/vungle/warren/VungleBanner;

    # getter for: Lcom/vungle/warren/VungleBanner;->renderWhenAvailable:Z
    invoke-static {v0}, Lcom/vungle/warren/VungleBanner;->access$100(Lcom/vungle/warren/VungleBanner;)Z

    move-result v0

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/vungle/warren/VungleBanner$2;->this$0:Lcom/vungle/warren/VungleBanner;

    # invokes: Lcom/vungle/warren/VungleBanner;->canRender()Z
    invoke-static {v0}, Lcom/vungle/warren/VungleBanner;->access$200(Lcom/vungle/warren/VungleBanner;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 241
    iget-object v0, p0, Lcom/vungle/warren/VungleBanner$2;->this$0:Lcom/vungle/warren/VungleBanner;

    const/4 v1, 0x0

    # setter for: Lcom/vungle/warren/VungleBanner;->renderWhenAvailable:Z
    invoke-static {v0, v1}, Lcom/vungle/warren/VungleBanner;->access$102(Lcom/vungle/warren/VungleBanner;Z)Z

    .line 242
    iget-object v0, p0, Lcom/vungle/warren/VungleBanner$2;->this$0:Lcom/vungle/warren/VungleBanner;

    # invokes: Lcom/vungle/warren/VungleBanner;->finishAdInternal(Z)V
    invoke-static {v0, v1}, Lcom/vungle/warren/VungleBanner;->access$300(Lcom/vungle/warren/VungleBanner;Z)V

    .line 243
    new-instance v0, Lcom/vungle/warren/AdConfig;

    invoke-direct {v0}, Lcom/vungle/warren/AdConfig;-><init>()V

    .line 244
    iget-object v1, p0, Lcom/vungle/warren/VungleBanner$2;->this$0:Lcom/vungle/warren/VungleBanner;

    # getter for: Lcom/vungle/warren/VungleBanner;->adSize:Lcom/vungle/warren/AdConfig$AdSize;
    invoke-static {v1}, Lcom/vungle/warren/VungleBanner;->access$400(Lcom/vungle/warren/VungleBanner;)Lcom/vungle/warren/AdConfig$AdSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/warren/AdConfig;->setAdSize(Lcom/vungle/warren/AdConfig$AdSize;)V

    .line 245
    iget-object v1, p0, Lcom/vungle/warren/VungleBanner$2;->this$0:Lcom/vungle/warren/VungleBanner;

    # getter for: Lcom/vungle/warren/VungleBanner;->playAdCallback:Lcom/vungle/warren/PlayAdCallback;
    invoke-static {v1}, Lcom/vungle/warren/VungleBanner;->access$500(Lcom/vungle/warren/VungleBanner;)Lcom/vungle/warren/PlayAdCallback;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/vungle/warren/Vungle;->getNativeAdInternal(Ljava/lang/String;Lcom/vungle/warren/AdConfig;Lcom/vungle/warren/PlayAdCallback;)Lcom/vungle/warren/ui/view/VungleNativeView;

    move-result-object p1

    if-eqz p1, :cond_58

    .line 247
    iget-object v0, p0, Lcom/vungle/warren/VungleBanner$2;->this$0:Lcom/vungle/warren/VungleBanner;

    # setter for: Lcom/vungle/warren/VungleBanner;->bannerAd:Lcom/vungle/warren/ui/view/VungleNativeView;
    invoke-static {v0, p1}, Lcom/vungle/warren/VungleBanner;->access$602(Lcom/vungle/warren/VungleBanner;Lcom/vungle/warren/ui/view/VungleNativeView;)Lcom/vungle/warren/ui/view/VungleNativeView;

    .line 248
    iget-object p1, p0, Lcom/vungle/warren/VungleBanner$2;->this$0:Lcom/vungle/warren/VungleBanner;

    invoke-virtual {p1}, Lcom/vungle/warren/VungleBanner;->renderAd()V

    goto :goto_68

    .line 250
    :cond_58
    iget-object p1, p0, Lcom/vungle/warren/VungleBanner$2;->this$0:Lcom/vungle/warren/VungleBanner;

    # getter for: Lcom/vungle/warren/VungleBanner;->placementId:Ljava/lang/String;
    invoke-static {p1}, Lcom/vungle/warren/VungleBanner;->access$700(Lcom/vungle/warren/VungleBanner;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/vungle/warren/error/VungleException;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lcom/vungle/warren/VungleBanner$2;->onError(Ljava/lang/String;Lcom/vungle/warren/error/VungleException;)V

    :cond_68
    :goto_68
    return-void
.end method

.method public onError(Ljava/lang/String;Lcom/vungle/warren/error/VungleException;)V
    .registers 6

    .line 257
    # getter for: Lcom/vungle/warren/VungleBanner;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/vungle/warren/VungleBanner;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad Load Error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Message : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/vungle/warren/error/VungleException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object p1, p0, Lcom/vungle/warren/VungleBanner$2;->this$0:Lcom/vungle/warren/VungleBanner;

    invoke-virtual {p1}, Lcom/vungle/warren/VungleBanner;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3d

    iget-object p1, p0, Lcom/vungle/warren/VungleBanner$2;->this$0:Lcom/vungle/warren/VungleBanner;

    # invokes: Lcom/vungle/warren/VungleBanner;->canRender()Z
    invoke-static {p1}, Lcom/vungle/warren/VungleBanner;->access$200(Lcom/vungle/warren/VungleBanner;)Z

    move-result p1

    if-eqz p1, :cond_3d

    .line 259
    iget-object p1, p0, Lcom/vungle/warren/VungleBanner$2;->this$0:Lcom/vungle/warren/VungleBanner;

    # getter for: Lcom/vungle/warren/VungleBanner;->refreshHandler:Lcom/vungle/warren/utility/RefreshHandler;
    invoke-static {p1}, Lcom/vungle/warren/VungleBanner;->access$800(Lcom/vungle/warren/VungleBanner;)Lcom/vungle/warren/utility/RefreshHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/warren/utility/RefreshHandler;->start()V

    :cond_3d
    return-void
.end method
