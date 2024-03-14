.class Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl$10;
.super Ljava/lang/Object;
.source "SmartIntentRendererImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl;


# direct methods
.method constructor <init>(Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl;)V
    .registers 2

    .line 294
    iput-object p1, p0, Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl$10;->this$0:Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 297
    iget-object p1, p0, Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl$10;->this$0:Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl;

    # getter for: Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;
    invoke-static {p1}, Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl;->access$700(Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object v0, p0, Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl$10;->this$0:Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl;

    # getter for: Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl;->slideFromLeftAnimControl:Landroid/view/animation/LayoutAnimationController;
    invoke-static {v0}, Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl;->access$600(Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl;)Landroid/view/animation/LayoutAnimationController;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 298
    iget-object p1, p0, Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl$10;->this$0:Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl;

    # getter for: Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl;->router:Lcom/helpshift/support/conversations/smartintent/SmartIntentRouter;
    invoke-static {p1}, Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl;->access$000(Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl;)Lcom/helpshift/support/conversations/smartintent/SmartIntentRouter;

    move-result-object p1

    invoke-interface {p1}, Lcom/helpshift/support/conversations/smartintent/SmartIntentRouter;->onSmartIntentBackButtonPressed()V

    return-void
.end method
