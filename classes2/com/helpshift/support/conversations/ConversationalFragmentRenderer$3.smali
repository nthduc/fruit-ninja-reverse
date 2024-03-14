.class Lcom/helpshift/support/conversations/ConversationalFragmentRenderer$3;
.super Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;
.source "ConversationalFragmentRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/support/conversations/ConversationalFragmentRenderer;->initBottomSheetCallback()V
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

    .line 489
    iput-object p1, p0, Lcom/helpshift/support/conversations/ConversationalFragmentRenderer$3;->this$0:Lcom/helpshift/support/conversations/ConversationalFragmentRenderer;

    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSlide(Landroid/view/View;F)V
    .registers 7
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    float-to-double p1, p2

    const/4 v0, 0x2

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    cmpl-double v3, p1, v1

    if-lez v3, :cond_18

    .line 505
    iget-object p1, p0, Lcom/helpshift/support/conversations/ConversationalFragmentRenderer$3;->this$0:Lcom/helpshift/support/conversations/ConversationalFragmentRenderer;

    iget-object p1, p1, Lcom/helpshift/support/conversations/ConversationalFragmentRenderer;->bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getState()I

    move-result p1

    if-ne p1, v0, :cond_18

    .line 506
    iget-object p1, p0, Lcom/helpshift/support/conversations/ConversationalFragmentRenderer$3;->this$0:Lcom/helpshift/support/conversations/ConversationalFragmentRenderer;

    # invokes: Lcom/helpshift/support/conversations/ConversationalFragmentRenderer;->onOptionPickerExpanded()V
    invoke-static {p1}, Lcom/helpshift/support/conversations/ConversationalFragmentRenderer;->access$100(Lcom/helpshift/support/conversations/ConversationalFragmentRenderer;)V

    goto :goto_27

    .line 508
    :cond_18
    iget-object p1, p0, Lcom/helpshift/support/conversations/ConversationalFragmentRenderer$3;->this$0:Lcom/helpshift/support/conversations/ConversationalFragmentRenderer;

    iget-object p1, p1, Lcom/helpshift/support/conversations/ConversationalFragmentRenderer;->bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getState()I

    move-result p1

    if-ne p1, v0, :cond_27

    .line 509
    iget-object p1, p0, Lcom/helpshift/support/conversations/ConversationalFragmentRenderer$3;->this$0:Lcom/helpshift/support/conversations/ConversationalFragmentRenderer;

    # invokes: Lcom/helpshift/support/conversations/ConversationalFragmentRenderer;->onOptionPickerCollapsed()V
    invoke-static {p1}, Lcom/helpshift/support/conversations/ConversationalFragmentRenderer;->access$000(Lcom/helpshift/support/conversations/ConversationalFragmentRenderer;)V

    :cond_27
    :goto_27
    return-void
.end method

.method public onStateChanged(Landroid/view/View;I)V
    .registers 3
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x4

    if-ne p1, p2, :cond_9

    .line 493
    iget-object p1, p0, Lcom/helpshift/support/conversations/ConversationalFragmentRenderer$3;->this$0:Lcom/helpshift/support/conversations/ConversationalFragmentRenderer;

    # invokes: Lcom/helpshift/support/conversations/ConversationalFragmentRenderer;->onOptionPickerCollapsed()V
    invoke-static {p1}, Lcom/helpshift/support/conversations/ConversationalFragmentRenderer;->access$000(Lcom/helpshift/support/conversations/ConversationalFragmentRenderer;)V

    goto :goto_11

    :cond_9
    const/4 p1, 0x3

    if-ne p1, p2, :cond_11

    .line 496
    iget-object p1, p0, Lcom/helpshift/support/conversations/ConversationalFragmentRenderer$3;->this$0:Lcom/helpshift/support/conversations/ConversationalFragmentRenderer;

    # invokes: Lcom/helpshift/support/conversations/ConversationalFragmentRenderer;->onOptionPickerExpanded()V
    invoke-static {p1}, Lcom/helpshift/support/conversations/ConversationalFragmentRenderer;->access$100(Lcom/helpshift/support/conversations/ConversationalFragmentRenderer;)V

    :cond_11
    :goto_11
    return-void
.end method
