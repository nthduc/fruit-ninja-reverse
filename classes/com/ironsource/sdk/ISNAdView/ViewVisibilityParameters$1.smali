.class Lcom/ironsource/sdk/ISNAdView/ViewVisibilityParameters$1;
.super Ljava/util/HashMap;
.source "ViewVisibilityParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/ISNAdView/ViewVisibilityParameters;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/ISNAdView/ViewVisibilityParameters;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/ISNAdView/ViewVisibilityParameters;)V
    .registers 6

    .line 19
    iput-object p1, p0, Lcom/ironsource/sdk/ISNAdView/ViewVisibilityParameters$1;->this$0:Lcom/ironsource/sdk/ISNAdView/ViewVisibilityParameters;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 20
    iget-object p1, p0, Lcom/ironsource/sdk/ISNAdView/ViewVisibilityParameters$1;->this$0:Lcom/ironsource/sdk/ISNAdView/ViewVisibilityParameters;

    # getter for: Lcom/ironsource/sdk/ISNAdView/ViewVisibilityParameters;->mVisibility:I
    invoke-static {p1}, Lcom/ironsource/sdk/ISNAdView/ViewVisibilityParameters;->access$000(Lcom/ironsource/sdk/ISNAdView/ViewVisibilityParameters;)I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    if-nez p1, :cond_15

    const/4 p1, 0x1

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    :goto_16
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v3, "isVisible"

    invoke-virtual {p0, v3, p1}, Lcom/ironsource/sdk/ISNAdView/ViewVisibilityParameters$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object p1, p0, Lcom/ironsource/sdk/ISNAdView/ViewVisibilityParameters$1;->this$0:Lcom/ironsource/sdk/ISNAdView/ViewVisibilityParameters;

    # getter for: Lcom/ironsource/sdk/ISNAdView/ViewVisibilityParameters;->mWindowVisibility:I
    invoke-static {p1}, Lcom/ironsource/sdk/ISNAdView/ViewVisibilityParameters;->access$100(Lcom/ironsource/sdk/ISNAdView/ViewVisibilityParameters;)I

    move-result p1

    if-nez p1, :cond_28

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    :goto_29
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "isWindowVisible"

    invoke-virtual {p0, v0, p1}, Lcom/ironsource/sdk/ISNAdView/ViewVisibilityParameters$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "isShown"

    .line 22
    invoke-virtual {p0, p1, v2}, Lcom/ironsource/sdk/ISNAdView/ViewVisibilityParameters$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "isViewVisible"

    .line 23
    invoke-virtual {p0, p1, v2}, Lcom/ironsource/sdk/ISNAdView/ViewVisibilityParameters$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
