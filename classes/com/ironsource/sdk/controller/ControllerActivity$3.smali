.class Lcom/ironsource/sdk/controller/ControllerActivity$3;
.super Ljava/lang/Object;
.source "ControllerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/ControllerActivity;->keepScreenOn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/controller/ControllerActivity;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/ControllerActivity;)V
    .registers 2

    .line 337
    iput-object p1, p0, Lcom/ironsource/sdk/controller/ControllerActivity$3;->this$0:Lcom/ironsource/sdk/controller/ControllerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 340
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity$3;->this$0:Lcom/ironsource/sdk/controller/ControllerActivity;

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/ControllerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method
