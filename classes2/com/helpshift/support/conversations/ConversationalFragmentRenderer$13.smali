.class Lcom/helpshift/support/conversations/ConversationalFragmentRenderer$13;
.super Ljava/lang/Object;
.source "ConversationalFragmentRenderer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/support/conversations/ConversationalFragmentRenderer;->setPickerOptionsInputSkipListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/support/conversations/ConversationalFragmentRenderer;


# direct methods
.method constructor <init>(Lcom/helpshift/support/conversations/ConversationalFragmentRenderer;)V
    .registers 2

    .line 885
    iput-object p1, p0, Lcom/helpshift/support/conversations/ConversationalFragmentRenderer$13;->this$0:Lcom/helpshift/support/conversations/ConversationalFragmentRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 888
    iget-object p1, p0, Lcom/helpshift/support/conversations/ConversationalFragmentRenderer$13;->this$0:Lcom/helpshift/support/conversations/ConversationalFragmentRenderer;

    iget-object p1, p1, Lcom/helpshift/support/conversations/ConversationalFragmentRenderer;->conversationalFragmentRouter:Lcom/helpshift/support/conversations/ConversationalFragmentRouter;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/helpshift/support/conversations/ConversationalFragmentRouter;->handleOptionSelectedForPicker(Lcom/helpshift/conversation/viewmodel/OptionUIModel;Z)V

    return-void
.end method
