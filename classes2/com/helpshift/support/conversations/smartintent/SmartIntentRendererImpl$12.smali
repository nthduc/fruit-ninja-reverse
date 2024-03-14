.class Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl$12;
.super Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;
.source "SmartIntentRendererImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl;->getBottomSheetBehaviorCallback()Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;
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

    .line 597
    iput-object p1, p0, Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl$12;->this$0:Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl;

    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSlide(Landroid/view/View;F)V
    .registers 3
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 605
    iget-object p1, p0, Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl$12;->this$0:Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl;

    # invokes: Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl;->handleBottomSheetSlideChange(F)V
    invoke-static {p1, p2}, Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl;->access$1000(Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl;F)V

    return-void
.end method

.method public onStateChanged(Landroid/view/View;I)V
    .registers 3
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 600
    iget-object p1, p0, Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl$12;->this$0:Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl;

    # invokes: Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl;->handleBottomSheetStateChange(I)V
    invoke-static {p1, p2}, Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl;->access$900(Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl;I)V

    return-void
.end method
