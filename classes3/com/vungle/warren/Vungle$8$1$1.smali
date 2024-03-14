.class Lcom/vungle/warren/Vungle$8$1$1;
.super Ljava/lang/Object;
.source "Vungle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/Vungle$8$1;->onResponse(Lcom/vungle/warren/network/Call;Lcom/vungle/warren/network/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vungle/warren/Vungle$8$1;

.field final synthetic val$response:Lcom/vungle/warren/network/Response;


# direct methods
.method constructor <init>(Lcom/vungle/warren/Vungle$8$1;Lcom/vungle/warren/network/Response;)V
    .registers 3

    .line 851
    iput-object p1, p0, Lcom/vungle/warren/Vungle$8$1$1;->this$1:Lcom/vungle/warren/Vungle$8$1;

    iput-object p2, p0, Lcom/vungle/warren/Vungle$8$1$1;->val$response:Lcom/vungle/warren/network/Response;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 855
    iget-object v0, p0, Lcom/vungle/warren/Vungle$8$1$1;->val$response:Lcom/vungle/warren/network/Response;

    invoke-virtual {v0}, Lcom/vungle/warren/network/Response;->isSuccessful()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_58

    .line 856
    iget-object v0, p0, Lcom/vungle/warren/Vungle$8$1$1;->val$response:Lcom/vungle/warren/network/Response;

    invoke-virtual {v0}, Lcom/vungle/warren/network/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    if-eqz v0, :cond_58

    const-string v2, "ad"

    .line 857
    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 859
    :try_start_1b
    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 860
    new-instance v2, Lcom/vungle/warren/model/Advertisement;

    invoke-direct {v2, v0}, Lcom/vungle/warren/model/Advertisement;-><init>(Lcom/google/gson/JsonObject;)V
    :try_end_24
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b .. :try_end_24} :catch_4f
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_24} :catch_44

    .line 863
    :try_start_24
    iget-object v0, p0, Lcom/vungle/warren/Vungle$8$1$1;->this$1:Lcom/vungle/warren/Vungle$8$1;

    iget-object v0, v0, Lcom/vungle/warren/Vungle$8$1;->this$0:Lcom/vungle/warren/Vungle$8;

    iget-object v0, v0, Lcom/vungle/warren/Vungle$8;->val$settings:Lcom/vungle/warren/AdConfig;

    invoke-virtual {v2, v0}, Lcom/vungle/warren/model/Advertisement;->configure(Lcom/vungle/warren/AdConfig;)V

    .line 868
    iget-object v0, p0, Lcom/vungle/warren/Vungle$8$1$1;->this$1:Lcom/vungle/warren/Vungle$8$1;

    iget-object v0, v0, Lcom/vungle/warren/Vungle$8$1;->this$0:Lcom/vungle/warren/Vungle$8;

    iget-object v0, v0, Lcom/vungle/warren/Vungle$8;->val$repository:Lcom/vungle/warren/persistence/Repository;

    iget-object v1, p0, Lcom/vungle/warren/Vungle$8$1$1;->this$1:Lcom/vungle/warren/Vungle$8$1;

    iget-object v1, v1, Lcom/vungle/warren/Vungle$8$1;->this$0:Lcom/vungle/warren/Vungle$8;

    iget-object v1, v1, Lcom/vungle/warren/Vungle$8;->val$id:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/vungle/warren/persistence/Repository;->saveAndApplyState(Lcom/vungle/warren/model/Advertisement;Ljava/lang/String;I)V
    :try_end_3d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_24 .. :try_end_3d} :catch_42
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_3d} :catch_3f

    move-object v1, v2

    goto :goto_58

    :catch_3f
    move-exception v0

    move-object v1, v2

    goto :goto_45

    :catch_42
    move-object v1, v2

    goto :goto_4f

    :catch_44
    move-exception v0

    .line 872
    :goto_45
    # getter for: Lcom/vungle/warren/Vungle;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/vungle/warren/Vungle;->access$1400()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Error using will_play_ad!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_58

    .line 870
    :catch_4f
    :goto_4f
    # getter for: Lcom/vungle/warren/Vungle;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/vungle/warren/Vungle;->access$1400()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Will Play Ad did not respond with a replacement. Move on."

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    :cond_58
    :goto_58
    iget-object v0, p0, Lcom/vungle/warren/Vungle$8$1$1;->this$1:Lcom/vungle/warren/Vungle$8$1;

    iget-boolean v0, v0, Lcom/vungle/warren/Vungle$8$1;->val$finalStreamingOnly:Z

    if-eqz v0, :cond_8a

    if-nez v1, :cond_76

    .line 879
    iget-object v0, p0, Lcom/vungle/warren/Vungle$8$1$1;->this$1:Lcom/vungle/warren/Vungle$8$1;

    iget-object v0, v0, Lcom/vungle/warren/Vungle$8$1;->this$0:Lcom/vungle/warren/Vungle$8;

    iget-object v0, v0, Lcom/vungle/warren/Vungle$8;->val$listener:Lcom/vungle/warren/PlayAdCallback;

    iget-object v1, p0, Lcom/vungle/warren/Vungle$8$1$1;->this$1:Lcom/vungle/warren/Vungle$8$1;

    iget-object v1, v1, Lcom/vungle/warren/Vungle$8$1;->this$0:Lcom/vungle/warren/Vungle$8;

    iget-object v1, v1, Lcom/vungle/warren/Vungle$8;->val$id:Ljava/lang/String;

    new-instance v2, Lcom/vungle/warren/error/VungleException;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-interface {v0, v1, v2}, Lcom/vungle/warren/PlayAdCallback;->onError(Ljava/lang/String;Lcom/vungle/warren/error/VungleException;)V

    goto :goto_a1

    .line 881
    :cond_76
    iget-object v0, p0, Lcom/vungle/warren/Vungle$8$1$1;->this$1:Lcom/vungle/warren/Vungle$8$1;

    iget-object v0, v0, Lcom/vungle/warren/Vungle$8$1;->this$0:Lcom/vungle/warren/Vungle$8;

    iget-object v0, v0, Lcom/vungle/warren/Vungle$8;->val$id:Ljava/lang/String;

    iget-object v2, p0, Lcom/vungle/warren/Vungle$8$1$1;->this$1:Lcom/vungle/warren/Vungle$8$1;

    iget-object v2, v2, Lcom/vungle/warren/Vungle$8$1;->this$0:Lcom/vungle/warren/Vungle$8;

    iget-object v2, v2, Lcom/vungle/warren/Vungle$8;->val$listener:Lcom/vungle/warren/PlayAdCallback;

    iget-object v3, p0, Lcom/vungle/warren/Vungle$8$1$1;->this$1:Lcom/vungle/warren/Vungle$8$1;

    iget-object v3, v3, Lcom/vungle/warren/Vungle$8$1;->val$placement:Lcom/vungle/warren/model/Placement;

    # invokes: Lcom/vungle/warren/Vungle;->renderAd(Ljava/lang/String;Lcom/vungle/warren/PlayAdCallback;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/model/Advertisement;)V
    invoke-static {v0, v2, v3, v1}, Lcom/vungle/warren/Vungle;->access$1600(Ljava/lang/String;Lcom/vungle/warren/PlayAdCallback;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/model/Advertisement;)V

    goto :goto_a1

    .line 884
    :cond_8a
    iget-object v0, p0, Lcom/vungle/warren/Vungle$8$1$1;->this$1:Lcom/vungle/warren/Vungle$8$1;

    iget-object v0, v0, Lcom/vungle/warren/Vungle$8$1;->this$0:Lcom/vungle/warren/Vungle$8;

    iget-object v0, v0, Lcom/vungle/warren/Vungle$8;->val$id:Ljava/lang/String;

    iget-object v1, p0, Lcom/vungle/warren/Vungle$8$1$1;->this$1:Lcom/vungle/warren/Vungle$8$1;

    iget-object v1, v1, Lcom/vungle/warren/Vungle$8$1;->this$0:Lcom/vungle/warren/Vungle$8;

    iget-object v1, v1, Lcom/vungle/warren/Vungle$8;->val$listener:Lcom/vungle/warren/PlayAdCallback;

    iget-object v2, p0, Lcom/vungle/warren/Vungle$8$1$1;->this$1:Lcom/vungle/warren/Vungle$8$1;

    iget-object v2, v2, Lcom/vungle/warren/Vungle$8$1;->val$placement:Lcom/vungle/warren/model/Placement;

    iget-object v3, p0, Lcom/vungle/warren/Vungle$8$1$1;->this$1:Lcom/vungle/warren/Vungle$8$1;

    iget-object v3, v3, Lcom/vungle/warren/Vungle$8$1;->val$finalAdvertisement:Lcom/vungle/warren/model/Advertisement;

    # invokes: Lcom/vungle/warren/Vungle;->renderAd(Ljava/lang/String;Lcom/vungle/warren/PlayAdCallback;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/model/Advertisement;)V
    invoke-static {v0, v1, v2, v3}, Lcom/vungle/warren/Vungle;->access$1600(Ljava/lang/String;Lcom/vungle/warren/PlayAdCallback;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/model/Advertisement;)V

    :goto_a1
    return-void
.end method
