.class Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$7;
.super Ljava/lang/Object;
.source "GooglePlayPurchasing.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->Purchase(Lcom/unity/purchasing/common/ProductDefinition;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;

.field final synthetic val$purchaseIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;Landroid/content/Intent;)V
    .registers 3

    .line 1107
    iput-object p1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$7;->this$0:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;

    iput-object p2, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$7;->val$purchaseIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1110
    iget-object v0, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$7;->val$purchaseIntent:Landroid/content/Intent;

    const-string v1, "vr"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1111
    iget-object v0, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$7;->this$0:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;

    # getter for: Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->access$600(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/vr/ndk/base/DaydreamApi;->create(Landroid/content/Context;)Lcom/google/vr/ndk/base/DaydreamApi;

    move-result-object v0

    .line 1112
    iget-object v1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$7;->val$purchaseIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/google/vr/ndk/base/DaydreamApi;->launchInVr(Landroid/content/Intent;)V

    .line 1113
    invoke-virtual {v0}, Lcom/google/vr/ndk/base/DaydreamApi;->close()V

    return-void
.end method
